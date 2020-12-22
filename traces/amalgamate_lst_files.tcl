#!/usr/bin/tclsh
#
# read all .lst assembly files and build a map of all values that are found
# at all addresses. Bank switching is in operation somewhere,
# I'm just not sure where.
#


proc initialise_global_map {} {
    if { [info exists ::GMAP]} {
	unset ::GMAP
    }
}

proc add_grom_byte {addr b} {

    if { [info exists ::GROM($addr)] } {
	if { [lsearch -exact $::GROM($addr) $b] == -1 } {
	    lappend ::GROM($addr) $b
	}
    } else {
	set ::GROM($addr) $b
    }
}

proc process_file {fn} {
    puts "Processing $fn"
    
    set f [open $fn]
    set ftxt [read $f]
    close $f

    foreach line [split $ftxt "\n"] {
	# Extract only the address and data bytes
	if { [regexp -- {([0-9a-fA-F]+)[ ]+0x([0-9a-fA-F]+)} $line all addr byte1] } {
	    puts "$addr"
	    set daddr [expr 0x$addr]
	    set dbyte1 [expr 0x$byte1]

	    add_grom_byte $daddr $dbyte1
	    continue
	}

	if { [regexp -- {([0-9a-fA-F]+)[ ]+0x([0-9a-fA-F]+)[ ]+0x([0-9a-fA-F]+)} $line all addr byte1 byte2] } {
	    puts "$addr"
	    set daddr [expr 0x$addr]
	    set dbyte1 [expr 0x$byte1]
	    set dbyte2 [expr 0x$byte2]

	    add_grom_byte $daddr $dbyte1
	    add_grom_byte $daddr $dbyte2
	    continue
	}
    }
}



initialise_global_map

set f [glob *.lst]

foreach fn $f {
    process_file $fn
}


# Build output file
set anames [lsort -dictionary [array names ::GROM]]

set f [open amalgamated.rom w]

foreach name $anames {
    puts -nonewline $f [format "%03X " $name]
    foreach b $::GROM($name) {
	puts -nonewline $f [format " %02X" $b]
    }
    puts $f ""
    
}
close $f
