#!/usr/bin/tclsh

#
# Decodes PPS4 trace
#

set infile [lindex $argv 0]
set romlistfile "$infile.romlist"
set decodefile  "$infile.decoded"

puts "Input file:    $infile"
puts "ROM List file: $romlistfile"
puts "Decoded output:$decodefile"


set f [open $infile]
set txt [read $f]
close $f

set romf [open $romlistfile w]
set decf [open $decodefile w]

set lastclkb -1
set phase_count 0
set rom_addr 000

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
	
	set addr  [expr $addr ^ 0xfff]
	set data  [expr $data ^ 0xff]
	#set clka  [expr $clka ^ 0x1]
	set wol   [expr $wol  ^ 0x1]
	#set clkb [expr $clkb ^ 0x1]
	
	if { $lastclkb != $clkb } {
	    puts $decf ""
	    set phase_count 0
	} else {
	    incr phase_count 1
	}
	
	
	if { ($clka == 1) && ($clkb == 0) && ($phase_count == 1) } {
	    # ROM value
	    set rom_value $data
	} else {
	    set rom_value ""
	}

	if { ($clka == 0) && ($clkb == 0) && ($phase_count == 1) } {
	    # ROM value
	    set rom_addr $addr
	}
	
	if { [string length $rom_value] > 0 } {
	    
	    puts $romf "[format "%03X %02X" $rom_addr $data]"
	    
	    set x [format "%03X %02X %d %d %d   - %d %02X" $addr $data $clka $clkb $wol $phase_count $rom_value]
	} else {
	    set x [format "%03X %02X %d %d %d   - %d" $addr $data $clka $clkb $wol $phase_count]
	}
	
	
	puts $decf $x
	set lastclkb $clkb
    }
}


close $romf
close $decf
