#!/usr/bin/tclsh
#

set fn [lindex $argv 0]
set f [open $fn]
set txt [read $f]
close $f


set f [open $fn.romdata w]



foreach line [split $txt "\n"] {
    foreach byte [split $line " "] {
        if { [string length $byte] != 0 } {
	    if { $byte == "__" } {
		set byte 00
	    }
            puts $f [format "%02X" [expr 0x$byte]]
        }
    }
}




close $f
