#!/usr/bin/tclsh

set ::ROMDATA "romdata.txt"

#Create a blank romdata.txt file if one dosn't exist
if { [file exists $::ROMDATA] } {
    puts "File exists"
    exit
}

set f [open $::ROMDATA w]

for {set i 0} {$i<[expr 2**13 ]} {incr i 1} {
    puts $f "__"
}

close $f



