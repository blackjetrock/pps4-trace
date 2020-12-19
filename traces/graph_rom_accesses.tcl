#!/usr/bin/wish
#
# graphs every touched ROm address


set w ""

set ::C $w.frame.c

set ::OX 50
set ::OY 50
set ::SC  10
set ::MOD 64
set ::MAX_ADDR 4096

frame $w.frame -borderwidth .5c
pack $w.frame -side top -expand yes -fill both

scrollbar $w.frame.hscroll -orient horiz -command "$::C xview"
scrollbar $w.frame.vscroll -command "$::C yview"

canvas $::C -relief sunken -borderwidth 2 -scrollregion {0 0 5000 5000}\
    -xscrollcommand "$w.frame.hscroll set" \
    -yscrollcommand "$w.frame.vscroll set"
#.c create image 10 10 -anchor nw -image $img -tags img

#.c scale img 0 0 10 10
pack $w.frame.hscroll -side bottom -fill x
pack $w.frame.vscroll -side right -fill y
pack $::C -expand yes -fill both
set s 5

proc draw_grid {} {
    # Outline
    set x  [expr $::OX+(0 % $::MOD)*$::SC]
    set y  [expr $::OY+(0 / $::MOD)*$::SC]
    set x1 [expr $::OX+(0xFFF % $::MOD)*$::SC]
    set y1 [expr $::OY+(0xFFF / $::MOD)*$::SC]


    $::C create rect $x $y $x1 $y1

    # Draw grid for reference
    for {set xx 0} {$xx <= [expr $::SC*$::MOD+$::OX]} {incr xx [expr $::SC*8]} {
	set x  [expr $::OX+($xx   % $::MOD)*$::SC]
	set y  [expr $::OY+(0     / $::MOD)*$::SC]
	set x1 [expr $::OX+($xx   % $::MOD)*$::SC]
	set y1 [expr $::OY+(0xFFF / $::MOD)*$::SC]
	
	$::C create line $xx $y $xx $y1
	update
    }
}

proc plot_addr {addr} {
    set x [expr $::OX+($addr % $::MOD)*$::SC]
    set y [expr $::OY+($addr / $::MOD)*$::SC]
    set x1 [expr $x+$::SC-1]
    set y1 [expr $y+$::SC-1]
    
    $::C create rect $x $y $x1 $y1 -fill $::COL
    update
}

if { [string compare [lindex $argv 0] bustrace]==0 } {
    set graph_bus_trace 1
} else {
    set graph_bus_trace 0
}

if { [string compare [lindex $argv 0] romdata]==0 } {
    set graph_romdata 1
} else {
    set graph_romdata 0
}

if { [string compare [lindex $argv 0] lst]==0 } {
    set graph_lst 1
} else {
    set graph_lst 0
}


if { $graph_lst } {
    set ::COL black
    set num_addresses 0
    
    draw_grid

    set f [open [lindex $argv 1]]
    set txt [read $f]
    close $f

    set addr 0
    
    foreach line [split $txt "\n"] {
	if { [regexp -- {([0-9a-fA-F]+)[ ]+0x[0-9a-fA-F]+  } $line all addr] } {
	    puts "$addr (1)"
	    plot_addr 0x$addr
	    incr num_addresses 1
	}

	if { [regexp -- {([0-9a-fA-F]+)[ ]+0x[0-9a-fA-F]+[ ]+0x[0-9a-fA-F]+} $line all addr] } {
	    puts "$addr (2)"
	    plot_addr [expr 0x$addr+1]
	    plot_addr 0x$addr
	    incr num_addresses 2
	}
    }
    set rom_size [expr 2**12]
    set percent [expr int(1.0* $num_addresses / $rom_size * 100.0)]
    puts "$num_addresses addresses captured."
    puts "ROM size is $rom_size, so $percent% captured"

}

if { $graph_romdata } {

    draw_grid

    set f [open [lindex $argv 1]]
    set txt [read $f]
    close $f

    set addr 0
    
    foreach line [split $txt "\n"] {
	if { [string length $line] < 2 } {
	    continue
	}
	
	if { $line != "__" } {
	    plot_addr $addr
	}
	
	incr addr 1
    }

    puts [format "%04X addresses" $addr]
}


if { $graph_bus_trace } {
    
    set infile [lindex $argv 1]
    set romlistfile "$infile.romlist"
    set decodefile  "$infile.decoded"

    puts "Input file:     $infile"
    puts "ROM List file:  $romlistfile"
    puts "Decoded output: $decodefile"

    if { [info exists ::ROM] } {
	unset ::ROM
    }
    
    
    set clocks_in_trace 0

    set f [open $infile]
    set txt [read $f]
    close $f

    set lastclkb -1
    set phase_count 0
    set rom_addr 000

    draw_grid
    

    #
    # This displays a bus trace file, pulling ROM addresses out and plotting them
    #
    foreach line [split $txt "\n"] {
	if { [regexp -- {A:([0-9A-F]+) B:([0-9A-F]+) C:([0-9A-F]+)} $line all pa pb pc] } {
	    set a [expr 0x$pa]
	    set b [expr 0x$pb]
	    set c [expr 0x$pc]

	    #puts "$a $b $c"

	    set addr [expr ($b >> 4)]
	    set data [expr ($a & 0xF) | (($a & 0x700) >> 4) | (($b & 0x02)<<6)]
	    set clka [expr (($b & 0x8) >> 3)]
	    set clkb [expr (($a & 0x80) >> 7)]
	    set wol  [expr (($a & 0x8000) >> 15)]
	    set do   [expr ($b & 0x01) | (($c & 0xE000) >> 12)]
	    
	    set addr  [expr $addr ^ 0xfff]
	    set data  [expr $data ^ 0xff]
	    #set clka  [expr $clka ^ 0x1]
	    set wol   [expr $wol  ^ 0x1]
	    #set clkb [expr $clkb ^ 0x1]
	    
	    if { $lastclkb != $clkb } {
		set phase_count 0
		incr clocks_in_trace 1
	    } else {
		incr phase_count 1
	    }
	    
	    
	    if { ($clka == 1) && ($clkb == 0) && ($phase_count == 1) } {
		# ROM value
		set rom_value $data

		set ::COL black

		if { [info exists ::BADROM($addr)] } {
		    set ::COl red
		} else {
		    
		    if { [info exists ::ROM($addr)] } {
			
			if { $::ROM($addr) == $data } {
			    set ::COL black
			} else {
			    puts "Bad addr = $addr"
			    set ::BADROM($addr) 1
			    set ::COL red
			}
		    } else {
			set ::COL black
		    }
		}
		set ::ROM($addr) $data
	    } else {
		set rom_value ""
	    }

	    if { ($clka == 0) && ($clkb == 0) && ($phase_count == 1) } {
		# ROM value
		set rom_addr $addr
	    }


	    
	    if { [string length $rom_value] > 0 } {
		#puts $romf "[format "%03X %02X" $rom_addr $data]"
		plot_addr $addr
		
		set x [format "A:%03X D:%02X CLKA:%d CLKB:%d WOL:%d DO:%01\X  - %d %02X" $addr $data $clka $clkb $wol $do $phase_count $rom_value]
	    } else {
		set x [format "A:%03X D:%02X CLKA:%d CLKB:%d WOL:%d DO:%01X  - %d" $addr $data $clka $clkb $wol $do $phase_count]
	    }
	    
	    
	    #puts $decf $x
	    set lastclkb $clkb
	}
    }

    puts "B Clocks in trace: $clocks_in_trace"
}



if { !$graph_lst && !$graph_bus_trace && !$graph_romdata } {
    puts " Arguments: <bustrace> or <romdata>"
    puts "followed by filename"
}
