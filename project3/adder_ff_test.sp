** Generated for: hspiceD
** Generated on: Dec  7 16:09:17 2024
** Design library name: project3
** Design cell name: adder_dff_test
** Design view name: schematic


.TEMP 25.0
.OPTION


** Library name: project3
** Cell name: 2input_NAND
** View name: schematic
.subckt project3_2input_NAND_schematic a b out vdd vss
xmdut1 out b vdd vdd pch_svt_mac l=16e-9 nfin=4 w=154e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut0 out a vdd vdd pch_svt_mac l=16e-9 nfin=4 w=154e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut3 net1 b vss vss nch_svt_mac l=16e-9 nfin=8 w=346e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut2 out a net1 vss nch_svt_mac l=16e-9 nfin=8 w=346e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
.ends project3_2input_NAND_schematic
** End of subcircuit definition.

** Library name: project3
** Cell name: adder_NAND
** View name: schematic
.subckt adder_NAND a b cin cout s vdd vss
xi8 net5 net1 cout vdd vss project3_2input_NAND_schematic
xi7 net7 net6 s vdd vss project3_2input_NAND_schematic
xi6 net5 cin net6 vdd vss project3_2input_NAND_schematic
xi5 net4 net5 net7 vdd vss project3_2input_NAND_schematic
xi4 net4 cin net5 vdd vss project3_2input_NAND_schematic
xi3 net2 net3 net4 vdd vss project3_2input_NAND_schematic
xi2 net1 b net3 vdd vss project3_2input_NAND_schematic
xi1 a net1 net2 vdd vss project3_2input_NAND_schematic
xi0 a b net1 vdd vss project3_2input_NAND_schematic
.ends adder_NAND
** End of subcircuit definition.

** Library name: project3
** Cell name: DFF_4NAND
** View name: schematic
.subckt DFF_4NAND clock d q qbar vdd vss
xi3 net2 qbar q vdd vss project3_2input_NAND_schematic
xi2 net3 q qbar vdd vss project3_2input_NAND_schematic
xi1 clock net1 net3 vdd vss project3_2input_NAND_schematic
xi0 d clock net2 vdd vss project3_2input_NAND_schematic
xmdut0 net1 d vss vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut1 net1 d vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
.ends DFF_4NAND
** End of subcircuit definition.

** Library name: project3
** Cell name: adder_dff_test
** View name: schematic
xi0 net1 net2 vss cout s vdd vss adder_NAND
xi2 clock db net2 qbbar vdd vss DFF_4NAND
xi1 clock da net1 qabar vdd vss DFF_4NAND
.END
