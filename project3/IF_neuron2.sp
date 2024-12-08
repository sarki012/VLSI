** Generated for: hspiceD
** Generated on: Dec  8 14:58:47 2024
** Design library name: project3
** Design cell name: IF_neuron
** Design view name: schematic


.TEMP 25.0
.OPTION

** Library name: project3
** Cell name: 2input_NAND
** View name: schematic
.subckt project3_2input_NAND_schematic a b out vdd vss
xm1 out b vdd vdd pch_svt_mac l=16e-9 nfin=4 w=154e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm0 out a vdd vdd pch_svt_mac l=16e-9 nfin=4 w=154e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm3 net1 b vss vss nch_svt_mac l=16e-9 nfin=8 w=346e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm2 out a net1 vss nch_svt_mac l=16e-9 nfin=8 w=346e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
.ends project3_2input_NAND_schematic
** End of subcircuit definition.

** Library name: project3
** Cell name: DFF_4NAND
** View name: schematic
.subckt DFF_4NAND clock d q qbar vdd vss
xi3 net2 qbar q vdd vss project3_2input_NAND_schematic
xi2 net3 q qbar vdd vss project3_2input_NAND_schematic
xi1 clock net1 net3 vdd vss project3_2input_NAND_schematic
xi0 d clock net2 vdd vss project3_2input_NAND_schematic
xm0 net1 d vss vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm1 net1 d vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
.ends DFF_4NAND
** End of subcircuit definition.

** Library name: project3
** Cell name: DFF_4bit_4NAND
** View name: schematic
.subckt DFF_4bit_4NAND clock d0 d1 d2 d3 q0 q1 q2 q3 qb0 qb1 qb2 qb3 vdd vss
xi3 clock d0 q0 qb0 vdd vss DFF_4NAND
xi2 clock d1 q1 qb1 vdd vss DFF_4NAND
xi1 clock d2 q2 qb2 vdd vss DFF_4NAND
xi0 clock d3 q3 qb3 vdd vss DFF_4NAND
.ends DFF_4bit_4NAND
** End of subcircuit definition.

** Library name: project3
** Cell name: 2input_AND
** View name: schematic
.subckt project3_2input_AND_schematic a b out vdd vss
xi0 a b net1 vdd vss project3_2input_NAND_schematic
xm0 out net1 vss vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm1 out net1 vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
.ends project3_2input_AND_schematic
** End of subcircuit definition.

** Library name: project3
** Cell name: weight
** View name: schematic
.subckt weight vdd vss a0 a1 a2 a3 w x0 x1 x2 x3
xi3 a2 w x2 vdd vss project3_2input_AND_schematic
xi2 a3 w x3 vdd vss project3_2input_AND_schematic
xi1 a1 w x1 vdd vss project3_2input_AND_schematic
xi0 a0 w x0 vdd vss project3_2input_AND_schematic
.ends weight
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
** Cell name: adder_4bit
** View name: schematic
.subckt adder_4bit cin cout vdd vss m0 m1 m2 m3 n0 n1 n2 n3 s0 s1 s2 s3
xi3 m3 n3 net19 cout s3 vdd vss adder_NAND
xi2 m2 n2 net12 net19 s2 vdd vss adder_NAND
xi1 m1 n1 net5 net12 s1 vdd vss adder_NAND
xi0 m0 n0 cin net5 s0 vdd vss adder_NAND
.ends adder_4bit
** End of subcircuit definition.

** Library name: project3
** Cell name: OR_2input
** View name: schematic
.subckt OR_2input a b vdd vout vss
xm2 vout net2 vss vss nch_svt_mac l=16e-9 nfin=8 w=346e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm1 net2 a vss vss nch_svt_mac l=16e-9 nfin=8 w=346e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm0 net2 b vss vss nch_svt_mac l=16e-9 nfin=8 w=346e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm5 vout net2 vdd vdd pch_svt_mac l=16e-9 nfin=8 w=346e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm4 net1 a vdd vdd pch_svt_mac l=16e-9 nfin=8 w=346e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm3 net2 b net1 vdd pch_svt_mac l=16e-9 nfin=8 w=346e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
.ends OR_2input
** End of subcircuit definition.

** Library name: project3
** Cell name: inverter_6fin
** View name: schematic
.subckt inverter_6fin a out vdd vss
xm0 out a vss vss nch_svt_mac l=16e-9 nfin=6 w=250e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm1 out a vdd vdd pch_svt_mac l=16e-9 nfin=6 w=250e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
.ends inverter_6fin
** End of subcircuit definition.

** Library name: project3
** Cell name: IF_neuron
** View name: schematic
xi0 clock d0 d1 d2 d3 net13 net12 net11 net10 qb0_3 qb1_3 qb2_3 qb3_3 vdd vss DFF_4bit_4NAND
xi3 clock a0 a1 a2 a3 net58 net57 net56 net55 qb0_0 qb1_0 qb2_0 qb3_0 vdd vss DFF_4bit_4NAND
xi2 clock b0 b1 b2 b3 net43 net42 net41 net40 qb0_1 qb1_1 qb2_1 qb3_1 vdd vss DFF_4bit_4NAND
xi1 clock c0 c1 c2 c3 net28 net27 net26 net25 qb0_2 qb1_2 qb2_2 qb3_2 vdd vss DFF_4bit_4NAND
xi7 vdd vss net58 net57 net56 net55 w0 net102 net101 net100 net99 weight
xi6 vdd vss net43 net42 net41 net40 w1 net91 net90 net89 net88 weight
xi5 vdd vss net28 net27 net26 net25 w2 net80 net79 net78 net77 weight
xi4 vdd vss net13 net12 net11 net10 w3 net69 net68 net67 net66 weight
xi10 net145 net150 vdd vss net119 net118 net117 net116 net134 net133 net132 net131 s0 s1 s2 s3 adder_4bit
xi9 vss net106 vdd vss net91 net90 net89 net88 net102 net101 net100 net99 net134 net133 net132 net131 adder_4bit
xi8 vss net105 vdd vss net69 net68 net67 net66 net80 net79 net78 net77 net119 net118 net117 net116 adder_4bit
xi14 net150 net145 vdd net6 vss OR_2input
xi12 net105 net106 vdd net145 vss OR_2input
xi16 net6 net1 vdd vss inverter_6fin
xi15 clock net1 f fbar vdd vss DFF_4NAND
.END
