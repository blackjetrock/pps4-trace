#!/usr/bin/wish
#
# Simulator for Rockwell 920 series calculators.
# Mainly a PPS-4 simulator to help decode ROMs
#


# Open the ROM file and read the contents
#
# We can open an annotated listing file, that gives us
# assembly and comments


################################################################################
#
# Model of PPS-4

proc reset_pps {} {
    set ::PPS_P  0
    set ::PPS_X  0
    set ::PPS_B  0
    set ::PPS_A  0
    set ::PPS_SA 0
    set ::PPS_SB 0
    set ::PPS_C_FF 0
    set ::PPS_F1 0
    set ::PPS_F2 0
    set ::sag_zero 0
    
    # Clear RAM
    for {set i 0} {$i <= 0xFFF} {incr i 1} {
	set ::RAM($i) 0xA
    }
}

proc pps_status {} {

    puts [format "P:%03X A:%01X X:%01X B:%03X SA:%03X SB:%03X CFF:%d F1:%d F2:%d" $::PPS_P $::PPS_A $::PPS_X $::PPS_B $::PPS_SA $::PPS_SB $::PPS_C_FF $::PPS_F1 $::PPS_F2]
}

################################################################################
# ::ROM holds the ROM (we may have to do some bank switching
# ROM data came from bus traces so bank switching done for us by the hardware
# but it does mean the ROM files may not be correct.
#
################################################################################

proc p_eq_sa_sa_swap_sb {} {

    set ::PPS_P $::PPS_SA
    set temp $::PPS_SB
    set ::PPS_SB $::PPS_SA
    set ::PPS_SA $temp
}

proc sb_eq_sa_sa_eq_p {} {
    set ::PPS_SB $::PPS_SA
    set ::PPS_SA $::PPS_P
}

proc set_bm {bm} {
    set ::PPS_B [expr ($::PPS_B & 0xF0F) | (($bm & 0xF) << 4)]
}

proc get_bl {} {

    return [expr ($::PPS_B & 0xF) >> 0]
}

# reads from RAM. takes previous SAG instruction into account

proc read_ram {addr} {
    if { $::sag_zero } {
	set ::sag_zero 0
	return $::RAM( ($addr & 0xF))
    } else {
	return $::RAM($addr)
    }
}

proc write_ram {addr data} {
    if { $::sag_zero } {
	set ::sag_zero 0
	set $::RAM( ($addr & 0xF)) $data
    } else {
	
	set $::RAM($addr) $data
    }
    
}

################################################################################

# Clear the ROM first, so we can fetch any ROM word

for {set i 0} {$i <= 0xFFF} {incr i 1} {
    set ::ROM($i) 0xAAA
}

set rom_file [lindex $argv 0]

set f [open $rom_file]
set rom_file_txt [read $f]
close $f

# Process the code to get ROM data into the ROM array

foreach line [split $rom_file_txt "\n"] {
    if { [regexp -- {([0-9a-fA-F]+)[ ]+(0x[0-9a-fA-F]+)} $line all addr opcode] } {
	#puts "$line"
	#puts "$addr $opcode"
	
	# decimal addresses and data internally so we can manipulate them
	set dec_addr   [expr 0x$addr]
	set dec_opcode [expr $opcode]

        # Store source for later debugging
	set ::LINEOF($dec_addr) $line
	set ::ROM($dec_addr) $dec_opcode
    }

    if { [regexp -- {([0-9a-fA-F]+)[ ]+(0x[0-9a-fA-F]+)[ ]+(0x[0-9a-fA-F]+)} $line all addr opcode arg1] } {
	puts $line
	# decimal addresses and data internally so we can manipulate them
	set dec_addr   [expr 0x$addr]
	set dec_addr1  [expr 0x$addr+1]
	
	set dec_opcode [expr $opcode]
	set dec_arg1   [expr $arg1]

        # Store source for later debugging
	set ::LINEOF($dec_addr) $line
	puts $dec_addr
	set ::ROM($dec_addr)  $dec_opcode
	set ::ROM($dec_addr1) $dec_arg1
    }
    
}

################################################################################
#
# ROM loaded, start the code running
set ::DONE 0

# Reset the PPS
reset_pps

# Execute instructions

set lb_just_executed 0
set skip_next_rom_word 0

while { !$::DONE } {
    if { $skip_next_rom_word } {
	incr ::PPS_P 1
	set skip_next_rom_word 0
	puts "(Skipped next ROM word)"
	puts $::PPS_P
	continue
    }
    
    # get opcode to execute
    set opcode $::ROM($::PPS_P)

    set arg1   $::ROM([expr $::PPS_P+1])
    
    set hex_opcode [format "%02X" $opcode]

    #    puts "$opcode $arg1"
    puts [format "Getting line for %03x"  $::PPS_P]
    puts $::LINEOF($::PPS_P)

    # Each instruction has to indicate how much to increment P after its done
    set inc 1

    switch $hex_opcode {
	0B  {
	    #puts -nonewline $opf "$addrstr   $op       "
	    #puts $opf "ad"
	    set ::PPS_A [expr $::PPS_A + [read_ram $::PPS_B]
	    
	    if { $::PPS_A > 15 } {
		set ::PPS_A [expr $::PPS_A % 16]
		set ::PPS_C_FF 1
	    } else {
		set ::PPS_C_FF 0
	    }
	    
	    set lb_just_executed 0
	}
	
	0A {
	    #puts -nonewline $opf "$addrstr   $op       "
	    #puts $opf "adc"
	    set ::PPS_A [expr $::PPS_A + [read_ram $::PPS_B]+$::PPS_C_FF]
	    if { $::PPS_A > 15 } {
		set ::PPS_A [expr $::PPS_A % 16]
		set ::PPS_C_FF 1
	    } else {
		set ::PPS_C_FF 0
	    }
	    set lb_just_executed 0
	}
	
	09 {
	    puts -nonewline "$addrstr   $op       "
	    puts $opf "adsk"
	    set lb_just_executed 0
	}
	
	08  {
	    puts -nonewline $opf "$addrstr   $op       "
	    puts $opf "adcsk"
	    set lb_just_executed 0
	}
	
	60 -
	61 -
	62 -
	63 -
	64 -
	66 -
	67 -
	68 -
	69 -
	6A -
	6B -
	6C -
	6D -
	6E {
	    #puts -nonewline $opf "$addrstr   $op       "
	    #print_mask_arg_inv adi $op 0F
	    set ::PPS_A [expr $::PPS_A + (($opcode & 0xf) ^ 0xf)]
	    if { $::PPS_A > 15 } {
		set ::PPS_A [expr $::PPS_A % 16]
		set skip_next_rom_word 1\
	    } else {
	    }
	    
	    
	    set lb_just_executed 0
	}
	
	65 {
	    #puts -nonewline $opf "$addrstr   $op       "
	    #puts $opf "dc"
	    set ::PPS_A [expr ($::PPS_A + 0xA) % 16]
	    set lb_just_executed 0
	}

	0D  {
	    #puts -nonewline $opf "$addrstr   $op       "
	    #puts $opf "and"
	    set ::PPS_A [expr $::PPS_A & [read_ram $::PPS_B]]
	    set lb_just_executed 0
	}
	
	0F  {
	    #puts -nonewline $opf "$addrstr   $op       "
	    #puts $opf "or"
	    set ::PPS_A [expr $::PPS_A | [read_ram $::PPS_B]]
	    set lb_just_executed 0
	}
	
	0C  {
	    #puts -nonewline $opf "$addrstr   $op       "
	    #puts $opf "eor"
	    set ::PPS_A [expr $::PPS_A ^ [read_ram $::PPS_B]]
	    set lb_just_executed 0
	}
	
	0E  {
	    #puts -nonewline $opf "$addrstr   $op       "
	    #puts $opf "comp"
	    set ::PPS_A [expr $::PPS_A ^ 0xf]
	    set lb_just_executed 0
	}
	
	20  {
	    puts -nonewline $opf "$addrstr   $op       "
	    puts $opf "sc"
	    set ::PPS_C_FF 1
	    set lb_just_executed 0
	}
	
	24  {
	    #puts -nonewline $opf "$addrstr   $op       "
	    #puts $opf "rc"
	    set ::PPS_C_FF 0
	    set lb_just_executed 0
	}
	
	22  {
	    #puts -nonewline $opf "$addrstr   $op       "
	    #puts $opf "sf1"
	    set ::PPS_F1 1
	    set lb_just_executed 0
	}
	
	26  {
	    #puts -nonewline $opf "$addrstr   $op       "
	    #puts $opf "rf1"
	    set ::PPS_F1 0
	    set lb_just_executed 0
	}
	
	21 {
	    #puts -nonewline $opf "$addrstr   $op       "
	    #puts $opf "sf2"
	    set ::PPS_F2 1
	    set lb_just_executed 0
	}
	
	25  {
	    #puts -nonewline $opf "$addrstr     $op       "
	    #puts $opf "rf2"
	    set ::PPS_F2 0
	    set lb_just_executed 0
	}
	
	30 -
	31 -
	32 -
	33 -
	34 -
	35 -
	36 -
	37 {
	    #puts -nonewline $opf "$addrstr   $op       "
	    #print_mask_arg_inv ld $op 07
	    set ::PPS_A [expr [read_ram $::PPS_B]]
	    set ::PPS_B [expr $::PPS_B ^ ((($opcode & 0x7)^0x7) << 4)]
	    set lb_just_executed 0
	}
	
	38 -
	39 -
	3A -
	3B -
	3C -
	3D -
	3E -
	3F {
	    #puts -nonewline $opf "$addrstr   $op       "
	    #print_mask_arg_inv ex $op 07
	    set temp $::PPS_A
	    set ::PPS_A [read_ram $::PPS_B]
	    write_ram $::PPS_B $temp
	    puts [format "(RAM Exchange Addr:%03X)" $::PPS_B]
	    set ::PPS_B [expr $::PPS_B ^ ((($opcode & 0x7)^0x7) << 4)]

	    set lb_just_executed 0
	}

	28 -
	29 -
	2A -
	2B -
	2C -
	2D -
	2E -
	2F {
	    set temp $::PPS_A
	    set ::PPS_A [read_ram $::PPS_B]
	    write_ram $::PPS_B $temp
	    puts [format "(RAM Exchange Addr:%03X)" $::PPS_B]
	    set ::PPS_B [expr $::PPS_B ^ ((($opcode & 0x7)^0x7) << 4)]

	    set bl [expr $::PPS_B & 0xF]
	    set bl [expr ($bl - 1) & 0xF]
	    set ::PPS_B [expr ($::PPS_B & 0xFF0) | $bl]

	    if { $bl == 0xF } {
		set skip_next_rom_word 1
	    }
	    
	    #puts -nonewline $opf "$addrstr   $op       "
	    #print_mask_arg_inv exd $op 07
	    set lb_just_executed 0
	}
	
	70 -
	71 -
	72 -
	73 -
	74 -
	75 -
	76 -
	77 -
	78 -
	79 -
	7A -
	7B -
	7C -
	7D -
	7E -
	7F {
	    set ::PPS_A [expr (($opcode & 0xF) ^ 0xF)]
	    set inc 1
	    set lb_just_executed 0
	}
	
	12 {
	    #puts -nonewline $opf "$addrstr   $op       "
	    #puts $opf "lax"
	    set ::PPS_X $::PPS_A
	    set lb_just_executed 0
	}
	
	1B {
	    #puts -nonewline $opf "$addrstr   $op       "
	    #puts $opf "lxa"
	    set ::PPS_X $::PPS_A
	    set lb_just_executed 0
	}
	
	11 {
	    #puts -nonewline $opf "$addrstr   $op       "
	    #puts $opf "labl"
	    set ::PPS_A [get_bl]
	    set lb_just_executed 0
	}
	
	10 {
	    #puts -nonewline $opf "$addrstr   $op       "
	    #puts $opf "lbmx"
	    set_bm $::PPS_X
	    set lb_just_executed 0
	}
	
	04 {
	    puts -nonewline $opf "$addrstr   $op       "
	    puts $opf "lbua"
	    set lb_just_executed 0
	}
	
	19 {
	    #puts -nonewline $opf "$addrstr   $op       "
	    #puts $opf "xabl"

	    set temp $::PPS_A
	    set ::PPS_A [expr ($::PPS_B & 0xF)]
	    set ::PPS_B [expr ($::PPS_B & 0xFF0) | $temp]
	    set lb_just_executed 0
	}
	
	18 {
	    puts -nonewline $opf "$addrstr   $op       "
	    puts $opf "xbmx"
	    set lb_just_executed 0
	}
	
	1A {
	    #puts -nonewline $opf "$addrstr   $op       "
	    #puts $opf "xax"
	    set temp $::PPS_A
	    set ::PPS_A $::PPS_X
	    set ::PPS_X $temp
	    set lb_just_executed 0
	}
	
	06 {
	    puts -nonewline $opf "$addrstr   $op       "
	    puts $opf "xs"
	    set lb_just_executed 0
	}
	
	6F {
	    puts -nonewline $opf "$addrstr   $op       "
	    puts $opf "cys"
	    set lb_just_executed 0
	}
	
	C0 -
	C1 -
	C3 -
	C4 -
	C5 -
	C6 -
	C7 -
	C8 -
	C9 -
	CA -
	CB -
	CC -
	CD -
	CE -
	CF {
	    #puts -nonewline $opf "$addrstr   $op       "
	    #print_mask_arg_inv lb $op 0F
	    if { $lb_just_executed } {
	    } else {
		set ::PPS_SB $::PPS_SA
		set ::PPS_SA $::PPS_P
		set ::PPS_P [expr 0x0C0 | ($opcode & 0xF)]

		puts [format "(Access location:%03X data:%02X)" $::PPS_P $::ROM($::PPS_P)]
		set ::PPS_B [expr ($::ROM($::PPS_P) ^ 0xff)]

		p_eq_sa_sa_swap_sb
		set lb_just_executed 1
	    }
	}
	
	00 {
	    puts -nonewline $opf "$addrstr   $op $arg1  "
	    puts $opf "lbl $arg1  "
	    incr pc 1
	    set lb_just_executed 0
	}
	
	17 {
	    puts -nonewline $opf "$addrstr   $op       "
	    puts $opf "incb"
	    set lb_just_executed 0
	}
	
	1F {
	    puts -nonewline $opf "$addrstr   $op       "
	    puts $opf "decb"
	    set lb_just_executed 0
	}
	
	80 -
	81 -
	82 -
	83 -
	84 -
	85 -
	86 -
	87 -
	88 -
	89 -
	8A -
	8B -
	8C -
	8D -
	8E -
	8F -
	90 -
	91 -
	92 -
	93 -
	94 -
	95 -
	96 -
	97 -
	98 -
	99 -
	9A -
	9B -
	9C -
	9D -
	9E -
	9F -
	A0 -
	A1 -
	A2 -
	A3 -
	A4 -
	A5 -
	A6 -
	A7 -
	A8 -
	A9 -
	AA -
	AB -
	AC -
	AD -
	AE -
	AF -
	B0 -
	B1 -
	B2 -
	B3 -
	B4 -
	B5 -
	B6 -
	B7 -
	B8 -
	B9 -
	BA -
	BB -
	BC -
	BD -
	BE -
	BF {
	    set ::PPS_P [expr ($::PPS_P & 0xfc0) | ($opcode & 0x3f)]
	    set inc 0
	    set lb_just_executed 0
	}
	
	D0 -
	D1 -
	D2 -
	D3 -
	D4 -
	D5 -
	D6 -
	D7 -
	D8 -
	D9 -
	DA -
	DB -
	DC -
	DD -
	DE -
	DF -
	E0 -
	E1 -
	E2 -
	E3 -
	E4 -
	E5 -
	E6 -
	E7 -
	E8 -
	E9 -
	EA -
	EB -
	EC -
	ED -
	EE -
	EF -
	F0 -
	F1 -
	F2 -
	F3 -
	F4 -
	F5 -
	F6 -
	F7 -
	F8 -
	F9 -
	FA -
	FB -
	FC -
	FD -
	FE -
	FF {
	    set ::PPS_SB $::PPS_SA
	    set ::PPS_SA [expr $::PPS_P + 1]
	    set ::PPS_P [expr 0x0C0 | ($opcode & 0x3F)]
	    set ::PPS_P [expr 0x100 | $::ROM($::PPS_P)]
	    
	    #puts -nonewline $opf "$addrstr   $op       "
	    #print_mask_arg_noinv tm $op 3F
	    set lb_just_executed 0
	    set inc 0
	}
	
	50 -
	51 -
	52 -
	53 -
	54 -
	55 -
	56 -
	57 -
	58 -
	59 -
	5A -
	5B -
	5C -
	5D -
	5E -
	5F {
	    #puts -nonewline $opf "$addrstr   $op $arg1  "
	    #print_transfer_long tl $op $arg1
	    #incr pc 1
	    puts "TL"
	    set ::PPS_P [expr (($opcode & 0xF)<<8) | $arg1]
	    set lb_just_executed 0
	    set inc 0

	    set lb_just_executed 0
	}
	
	01 -
	02 -
	03 {
	    #puts -nonewline $opf "$addrstr   $op $arg1  "
	    #print_transfer_long tml $op $arg1
	    #incr pc 1
	    sb_eq_sa_sa_eq_p
	    set ::PPS_P [expr (($opcode & 0xF)<<8) | $arg1]
	    set lb_just_executed 0
	    set inc 0
	}
	
	15  {
	    puts -nonewline $opf "$addrstr   $op       "
	    puts $opf "skc"
	    set lb_just_executed 0
	}
	
	1E {
	    
	    #puts -nonewline $opf "$addrstr   $op       "
	    #puts $opf "skz"
	    if { $::PPS_A == 0 } {
		set skip_next_rom_word 1
	    }
	    
	    set lb_just_executed 0
	}
	
	40 -
	41 -
	42 -
	43 -
	44 -
	45 -
	46 -
	47 -
	48 -
	49 -
	4A -
	4B -
	4C -
	4D -
	4E -
	4F {
	    puts -nonewline $opf "$addrstr   $op       "
	    puts $opf "skbi [expr $op & 0f]"
	    set lb_just_executed 0
	}
	
	
	16 {
	    puts -nonewline $opf "$addrstr   $op       "
	    puts $opf "skf1"
	    set lb_just_executed 0
	}
	
	14  {
	    puts -nonewline $opf "$addrstr   $op       "
	    puts $opf "skf2"
	    set lb_just_executed 0
	}
	
	05 {
	    #puts -nonewline $opf "$addrstr   $op       "
	    #puts $opf "rtn"
	    puts "**RETURN"
	    p_eq_sa_sa_swap_sb  
	    set lb_just_executed 0
	    set inc 0
	}
	
	07 {
	    puts -nonewline $opf "$addrstr   $op       "
	    puts $opf "rtnsk"
	    set lb_just_executed 0
	}
	
	1C {
	    # IOL has a whoile lot of stuff to simulate
	    # For now just list
	    set iol_device [expr ($arg1 & 0xF0)>>4]
	    set iol_cmd    [expr ($arg1 & 0x0F)>>0]
	    
	    puts "IOL: Device:$iol_device Cmd:$iol_cmd"
	    
	    set inc 2
	    
	    #puts -nonewline $opf "$addrstr   $op $arg1  "
	    #puts $opf "iol $arg1  "

	    set lb_just_executed 0
	}
	
	27 {
	    puts -nonewline $opf "$addrstr   $op       "
	    puts $opf "dia"
	    set lb_just_executed 0
	}
	
	23 {
	    puts -nonewline $opf "$addrstr   $op       "
	    puts $opf "dib"
	    set lb_just_executed 0
	}
	
	1D {
	    puts -nonewline $opf "$addrstr   $op       "
	    puts $opf "doa"
	    set lb_just_executed 0
	}
	
	13 {
	    #puts -nonewline $opf "$addrstr   $op       "
	    #puts $opf "sag"
	    
	    set lb_just_executed 0
	}

	default {
	    puts "Unknown opcode $op"
	    set lb_just_executed 0
	}
	
    }

    # Display status
    pps_status
    puts ""

    set next 0

    while {!$next } {
	set in [gets stdin]
	
	
	switch $in {
	    "" {
		set next 1
	    }

	    "a" {
		for {set x 0} {$x <= 0xfff} {incr x 1} {
		    puts -nonewline [format "%01X" $::RAM($x)]
		    
		    if { ($x % 256) == 0 } {
			puts ""
		    }
		}
		puts ""
		
	    }
	}
    }
    
    # Increment P
    incr ::PPS_P $inc
}
