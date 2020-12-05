#!/usr/bin/tclsh

#
# Decodes PPS4 trace
#


set f [open trace.txt]
set txt [read $f]
close $f


foreach line [split $txt "\n"] {
    if { [regexp -- {A:([0-9A-F]+) B:([0-9A-F]+) C:([0-9A-F]+)} $line all pa pb pc] } {
	set a [expr 0x$pa]
	set b [expr 0x$pb]
	set c [expr 0x$pc]

	#puts "$a $b $c"

	set addr [expr ($b >> 4)]
	set data [expr ($a & 0xF) | (($a & 0x700) >> 3) | (($b & 0x80)>>0)]
	set clka [expr (($b & 0x8) >> 3)]
	set clkb [expr (($a & 0x80) >> 7)]
	set wol  [expr (($a & 0x8000) >> 15)]
	
	set addr  [expr $addr ^ 0xfff]
	set data  [expr $data ^ 0xff]
	set clka  [expr $clka ^ 0x1]
	set wol   [expr $wol  ^ 0x1]
	#set clkb [expr $clkb ^ 0x1]
	
	set x [format "%03X %02X %d %d %d" $addr $data $clka $clkb $wol]
	puts $x
    }
    
}
