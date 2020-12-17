#!/usr/bin/tclsh

#
# Decodes PPS4 trace
#
#
# Output is a decoded bus trace file
# a ROM address list file with data
# a RAM address list file with data


set infile [lindex $argv 0]
set romlistfile "$infile.romlist"
set ramlistfile "$infile.ramlist"
set decodefile  "$infile.decoded"

puts "Input file:     $infile"
puts "ROM List file:  $romlistfile"
puts "RAM List file:  $ramlistfile"
puts "Decoded output: $decodefile"

set clocks_in_trace 0

set f [open $infile]
set txt [read $f]
close $f


set romf [open $romlistfile w]
set ramf [open $ramlistfile w]
set decf [open $decodefile w]

set lastclkb -1
set phase_count 0
set rom_addr 000
set ram_addr 000
set ram_value ""
set rom_value ""

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
	    puts $decf ""
	    set phase_count 0
	    incr clocks_in_trace 1
	} else {
	    incr phase_count 1
	}
	
	# ROM address and data detection	
	if { ($clka == 1) && ($clkb == 0) && ($phase_count == 1) } {
	    # ROM value
	    set rom_value $data
	    puts $romf "[format "%03X %02X" $rom_addr $data]"
	} else {
	    set rom_value ""
	}

	if { ($clka == 0) && ($clkb == 0) && ($phase_count == 1) } {
	    # ROM value
	    set rom_addr $addr
	}

	# RAM address and data detection	
	if { ($clka == 0) && ($clkb == 0) && ($phase_count == 2) } {
	    # RAM value
	    set ram_value $data
	    puts $ramf "[format "%03X %02X" $ram_addr $data]"
	} else {
	    set ram_value ""
	}

	if { ($clka == 1) && ($clkb == 0) && ($phase_count == 1) } {
	    # RAM value address
	    set ram_addr $addr
	}

	# Format the ROM and RAM data
	if { [string length $rom_value] > 0 } {
	    set rom_value_str [format "%02X" $rom_value]
	} else {
	    set rom_value_str ""
	}

	if { [string length $ram_value] > 0 } {
	    set ram_value_str [format "%02X" $ram_value]
	} else {
	    set ram_value_str ""
	}
	
	set x [format "A:%03X D:%02X CLKA:%d CLKB:%d WOL:%d DO:%01\X  - %d %s%s" $addr $data $clka $clkb $wol $do $phase_count $rom_value_str $ram_value_str]
	
	puts $decf $x
	set lastclkb $clkb
    }
}


close $romf
close $ramf
close $decf

puts "B Clocks in trace: $clocks_in_trace"
