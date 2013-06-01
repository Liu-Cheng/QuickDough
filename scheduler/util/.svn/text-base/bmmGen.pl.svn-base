#!/usr/bin/perl -w
######################################################################## 
# Multiple RAM and ROM initialization
#
# Description
# 1. Generate BMM File according to xdl file
# 2. Initialize the BRAM using data2mem command 
# 
# Acknowledgement
# Stephen Douglas Craven from Configurable Computing Lab of Virginia Tech
# developed a script for his openfire project in Jan 17th 2006, and Cheng Liu
# extended it for his own CGRA based high level synthesis project in 2012.
#
# History
# 1/17/2006 -- Added support for variable MB names
# 6/27/2012 -- Added support for multiple independent RAM/ROM blocks
#
########################################################################

#
# Globals
#
use vars qw/ %opt /;

#
# Command line options processing
#
sub init(){
    use Getopt::Std;
    my $opt_string = 'o:n:t:b:x:r:c:h';
    getopts( "$opt_string", \%opt ) or usage();
    usage() if ($opt{h});
}

#
# Message about this program and how to use it
#
sub usage()
{
    print STDERR << "EOF";

This program creates a BMM file from an NCD which can be used to 
write initial BRAM contents to a bitstream directly.

NOTE: XDL and DATA2MEM must be installed and in the user's path.

usage: $0 [-h] [-n NCD_FILE -o BMM_FILE] [-r ROM_FILE -b BITSTREAM]

 -h		      : this (help) message
 -n NCD file	      : NCD_FILE containing placed BRAMs (default = top.ncd)
 -o BMM file	      : BMM_FILE to create (default = top.bmm)
 -t top module        : name of the top-level module (default = top)
 -b bitstream         : bitstream to update with BRAM contents (default = top.bit)
 -x XDL file          : use specified XDL file (w/o flag, generates own from NCD_FILE)
 -r row number        : row numer of the cgra (default row=4)
 -c column number     : column number of the cgra (default column=4)

example: $0 -n top.ncd -o top.bmm -b top.bit
example: $0 -o top.bmm -t top

EOF
exit;
}

init();

# Fill in Default Values
if($opt{t}) {
	$top_level_name = $opt{t};
} else {
	$top_level_name = "top";
}

if($opt{n}) {
	$ncd_file = $opt{n};
} else {
	$ncd_file = "top.ncd";
}

if($opt{o}) {
	$output_bmm = $opt{o};
} else {
	$output_bmm = "top.bmm";
}

if($opt{b}) {
	$bitstream = $opt{b};
} else {
	$bitstream = "top.bit";
}

if($opt{r}) {
	$row_num=$opt{r};
} else {
	$row_num=4;
}

if($opt{c}) {
	$col_num=$opt{c};
} else {
	$col_num=4;
}

# An XDL file is a textual representation of an NCD file
# An NCD file, after PAR< contains the physical locations of all components
# We need to know where PAR placed the OpenFire BRAMs, so we create and parse an XDL file
$xdl_file = $ncd_file;
$xdl_file =~ s/ncd/xdl/;

if($opt{x}){ # If an XDL file is specified, check if its there
	if(-r $opt{x}) {
		$xdl_file = $opt{x};
	} 
	else {
		print "ERROR! Specifiec XDL File $opt{x} cannot be read! Exiting \n";
		exit(0);
	}
} 
elsif (-r $xdl_file) { # if no XDL file given, search for default one
} 
else {	# can't find an XDL file, so create one
	system("xdl -ncd2xdl $ncd_file $xdl_file");
}

# DATA2MEM needs a BMM File to describe the memory layout and BRAM physical locations
# We will make a BMM file using information from the XDL file
open(inst_bmm_file, ">"."inst_"."$output_bmm");
open(data2_bmm_file, ">"."data2_"."$output_bmm");
open(data1_bmm_file, ">"."data1_"."$output_bmm");
open(data0_bmm_file, ">"."data0_"."$output_bmm");

# Create BMM File for data memory. Note that each BRAM is 2048 Bytes
$slb=0;  
$mlb=$row_num*$col_num*2*1024-1;
printf data2_bmm_file ("ADDRESS_SPACE PE"."_data_mem2 RAMB16 [0x0000%X:0x0000%X]\n", $slb, $mlb);
printf data1_bmm_file ("ADDRESS_SPACE PE"."_data_mem1 RAMB16 [0x0000%X:0x0000%X]\n", $slb, $mlb);
printf data0_bmm_file ("ADDRESS_SPACE PE"."_data_mem0 RAMB16 [0x0000%X:0x0000%X]\n", $slb, $mlb);

# Create BMM file for inst memory. Note that each BRAM is 9*1024Bytes
$slb=0;  
$mlb=$row_num*$col_num*9*1024-1;
printf inst_bmm_file ("ADDRESS_SPACE PE"."_inst_mem RAMB36 [0x0000%X:0x000%X]\n", $slb, $mlb);
my $i=0;

# Loop for each PE
for($rcount = 0; $rcount < $row_num; $rcount++){
	for($ccount = 0; $ccount < $col_num; $ccount++){

                # Loop over each BRAM discovered above, even though we can find only one line.
                # We need the name of the BRAM and its location
                my $mem_name;
                my $loc_name;

                #=======================================================
                #                    Data Memory
                #=======================================================
                # Get BRAM locations of data mem2 
		$target_name = "PE".$rcount.$ccount.'/'."data_mem".'/'."mem2";
		$data_mem = `grep '^inst' $xdl_file | grep $target_name`;
		foreach $_ (split(/\n/, $data_mem)){
			if(/inst \"PE([^"]+)\".*RAMB18_([\w\d]+)/) {
				$mem_name = $1;
                $loc_name = $2;
		        }
		}
		print  data2_bmm_file "    BUS_BLOCK\n";
		print  data2_bmm_file "    $top_level_name"."\/PE"."$mem_name [15:0] PLACED = $loc_name;\n";
		print  data2_bmm_file "    END_BUS_BLOCK;\n";
                print  data2_bmm_file "\n";

                # Get BRAM locations of data mem1
		$target_name = "PE".$rcount.$ccount.'/'."data_mem".'/'."mem1";
		$data_mem = `grep '^inst' $xdl_file | grep $target_name`;
		foreach $_ (split(/\n/, $data_mem)){
			if(/inst \"PE([^"]+)\".*RAMB18_([\w\d]+)/) {
				$mem_name = $1;
			        $loc_name = $2;
		        }
		}
                # Create BMM File, and note that each BRAM is 2048 Bytes.
		print  data1_bmm_file "    BUS_BLOCK\n";
		print  data1_bmm_file "    $top_level_name"."\/PE"."$mem_name [15:0] PLACED = $loc_name;\n";
		print  data1_bmm_file "    END_BUS_BLOCK;\n";
                print  data1_bmm_file "\n";

                # Get BRAM locations of data mem0
		$target_name = "PE".$rcount.$ccount.'/'."data_mem".'/'."mem0";
		$data_mem = `grep '^inst' $xdl_file | grep $target_name`;
		foreach $_ (split(/\n/, $data_mem)){
			if(/inst \"PE([^"]+)\".*RAMB18_([\w\d]+)/) {
				$mem_name = $1;
			        $loc_name = $2;
		        }
		}
                # Create BMM File, and note that each BRAM is 2048 Bytes
		print  data0_bmm_file "    BUS_BLOCK\n";
		print  data0_bmm_file "    $top_level_name"."\/PE"."$mem_name [15:0] PLACED = $loc_name;\n";
		print  data0_bmm_file "    END_BUS_BLOCK;\n";
                print  data0_bmm_file "\n";


               #========================================================
               #                 Instruction memory
               #========================================================
               # ramloop[1], and then ramloop[0], Note that instruction rom is 1k*72bit=1k*9Byte
	       $target_name = "PE".$rcount.$ccount.'/'."inst_mem".'/'."rom1024";
	       $target_lines = `grep '^inst' $xdl_file | grep $target_name`; #make sure inst is the beginning of a line
               
               my $i=0;
	       print  inst_bmm_file "    BUS_BLOCK\n";
	       foreach $_ (split(/\n/, $target_lines)){
		       if(/inst \"PE([^"]+)\".*RAMB36_([\w\d]+)/) {
			       $mem_name = $1;
		               $loc_name = $2;
	               }
                       if($i==0){
			       print  inst_bmm_file "    $top_level_name"."\/PE"."$mem_name [71:36] PLACED = $loc_name;\n";
                       }
                       else{
			       print  inst_bmm_file "    $top_level_name"."\/PE"."$mem_name [35:0] PLACED = $loc_name;\n";
                       }
                       $i=$i+1;
	       }
	       print  inst_bmm_file "    END_BUS_BLOCK;\n";
	       print  inst_bmm_file "\n";
	}
}
print  data2_bmm_file "END_ADDRESS_SPACE;\n";
print  data1_bmm_file "END_ADDRESS_SPACE;\n";
print  data0_bmm_file "END_ADDRESS_SPACE;\n";
print  inst_bmm_file "END_ADDRESS_SPACE;\n";

close(data2_bmm_file);
close(data1_bmm_file);
close(data0_bmm_file);
close(inst_bmm_file);

# Test BMM File for Correctness
$fName="data2_".$output_bmm;
$error2 = `data2mem -bm $fName`;
$fName="data1_".$output_bmm;
$error1 = `data2mem -bm $fName`;
$fName="data0_".$output_bmm;
$error0 = `data2mem -bm $fName`;
$fName="inst_".$output_bmm;
$error = `data2mem -bm $fName`;
if($error2)  {
	print "$error2";
	print "Error in data mem2 BMM File!  Sorry!\n";
}
if($error1)  {
	print "$error1";
	print "Error in data mem1 BMM File!  Sorry!\n";
}
if($error0)  {
	print "$error0";
	print "Error in data mem0 BMM File!  Sorry!\n";
}
if($error)  {
	print "$error";
	print "Error in inst mem BMM File!  Sorry!\n";
}

# Update bitstream
# Updata instruction memory
`data2mem -bm inst_torus16.bmm -bd inst.mem -bt $bitstream -o b inter0.bit`;

# Update data memory0
`data2mem -bm data0_torus16.bmm -bd data.mem -bt inter0.bit -o b inter1.bit`;

# Update data memory1
`data2mem -bm data1_torus16.bmm -bd data.mem -bt inter1.bit -o b inter2.bit`;

# Update data memory2
`data2mem -bm data2_torus16.bmm -bd data.mem -bt inter2.bit -o b newtop.bit`;

# Delete intermediate bit
`rm inter0.bit`;
`rm inter1.bit`;
`rm inter2.bit`;

# Dump new data
#`data2mem -bm inst_torus16.bmm  -bt newtop.bit -d > new_inst_dump.txt`;
#`data2mem -bm data0_torus16.bmm -bt newtop.bit -d > new_data0_dump.txt`;
#`data2mem -bm data1_torus16.bmm -bt newtop.bit -d > new_data1_dump.txt`;
#`data2mem -bm data2_torus16.bmm -bt newtop.bit -d > new_data2_dump.txt`;

# Dump original data
#`data2mem -bm inst_torus16.bmm  -bt top.bit -d > old_inst_dump.txt`;
#`data2mem -bm data0_torus16.bmm -bt top.bit -d > old_data0_dump.txt`;
#`data2mem -bm data1_torus16.bmm -bt top.bit -d > old_data1_dump.txt`;
#`data2mem -bm data2_torus16.bmm -bt top.bit -d > old_data2_dump.txt`;

# Check the initialization data
#`diff new_inst_dump.txt old_inst_dump.txt > inst_diff.txt`;
#`diff new_data0_dump.txt old_data0_dump.txt > data0_diff.txt`;
#`diff new_data1_dump.txt old_data1_dump.txt > data1_diff.txt`;
#`diff new_data2_dump.txt old_data2_dump.txt > data2_diff.txt`;

