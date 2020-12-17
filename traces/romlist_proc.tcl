#!/usr/bin/tclsh

# Read all the romlist files and build a binary .rom file
# Highlight any inconsistent ROM addresses where data
# is inconsistent.

# Read the rom file in. It is a file with a hex byte on each line

puts "reading romdata.txt"

set f [open "romdata.txt"]
set romfiletxt [read $f]
close $f

set romdata [split $romfiletxt "\n"]

if { [llength $argv] > 0 } {
    set flist [lindex $argv 0]
    set opfn $flist.romdata
} else {
    set flist [glob *.romlist]
    set opfn allfiles.romdata
}

foreach fn $flist {
    puts "Processing $fn"
    
    set f [open $fn]
    set ftxt [read $f]
    close $f
    
    foreach line [split $ftxt "\n"] {
	if { [regexp -- {([0-9A-Fa-f]+) ([0-9A-Fa-f]+)} $line all addr data] } {
	    #puts "$line -> $addr $data"
	    set addrindex [expr 0x$addr]
	    set byte [lindex $romdata $addrindex]
	    if { $byte == "__" } {
		set romdata [lreplace $romdata $addrindex $addrindex $data]	
	    } else {
		if { $data != $byte } {
		    puts "Mismatch in $fn at $addr:$data not $byte"
		}
	    }
	}
    }
}

# Write new rom data file out
set f [open $opfn w]

foreach line $romdata {
puts $f $line
}

close $f
