#!/usr/bin/tclsh
#
# Extract data from PPS4/2 ROM dumper tool USB trace data
#
#
################################################################################

set ::INVERT_BYTES 1

################################################################################
# Turn the data part of a txt file line to a binary line ready to write
# to the output file

proc line_to_bin {line} {
    if { [regexp -- {[0-9A-F][0-9A-F][0-9A-F][0-9A-F]: ([0-9A-F ]+)   .{32}([0-9A-F]{2})} $line all data_only last_byte] } {
	puts "$data_only $last_byte"
	return "$data_only $last_byte"
    }
}


################################################################################

set ::FILENAME [lindex $argv 0]

puts "Filename:$::FILENAME"


# Read the file in

set f [open $::FILENAME]
set txt [read $f]
close $f

# Extract the data

# Find the first line that has data in it

set found_start 0

# Open output file
set f [open $::FILENAME\.bin w]
fconfigure $f -translation binary
set lineno 0

# Write a .romdata file, so the disassembler can be used
# this is an ASCII hex file with one hex byte per line
set rdf [open $::FILENAME\.romdata w]

set bytes_written 0

foreach line [split $txt "\n"] {
    incr lineno 1
    
    if { [string first "FF 00 FF 00 FF 00 FF 00 FF 00 FF 00" $line] == -1 } {
	set found_start 1
    } else {
	set found_start 0
    }

    if { $found_start } {
	set binline [line_to_bin $line]

	# Only take every other byte
	set dataline ""
	
	foreach {a b} $binline {

	    if {$::INVERT_BYTES } {
		puts -nonewline "0x$b"
		# we have to unmangle the dumped bytes due to a code bug in the rom dumper
		# Shift everything up one bit and put bit 7 in as bit 0
		set t [expr 0x$b & 0x80]
		puts -nonewline "=>(t)0x$t"
		set t [expr $t >> 7]
		puts -nonewline "=>(t)0x$t"
		set b [expr 0x$b & 0x7f]
		puts -nonewline "=>0x$b"
		set b [expr $b << 1]
		puts -nonewline "=>0x$b"
		set b [expr $b | $t]
		puts -nonewline "=>0x$b"
		set b [format "%02X" [expr $b ^ 0xFF]]
		puts "=>0x$b"
	    }

	    # write to romdata file
	    puts $rdf [format "%02X" 0x$b]
	    
	    set dataline "$dataline $b"
	    incr bytes_written 1
	}

	puts -nonewline $f [binary format H* [string map {" " ""} $dataline]]

	# If we have written 1024 bytes then stop
	if { $bytes_written >= 1024 } {
	    break;
	}
	
    }
}

close $f
close $rdf





