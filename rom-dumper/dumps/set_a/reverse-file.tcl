#!/usr/bin/tclsh
#
# Reverses a binary file.
#

set fn [lindex $argv 0]

set if [open $fn]
set of [open $fn.rev w]
fconfigure $if -translation binary
fconfigure $of -translation binary

set bdata [read $if]
set rdata [string reverse $bdata]
puts -nonewline $of $rdata

close $if
close $of
