** Generated for: hspiceD
** Generated on: Dec  4 16:33:37 2024
** Design library name: project3
** Design cell name: test2
** Design view name: schematic


.TEMP 25.0
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2

** Library name: project3
** Cell name: 2input_NAND
** View name: schematic
.subckt project3_2input_NAND_schematic a b out vdd vss
xm1 out b vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm0 out a vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm3 net1 b vss vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm2 out a net1 vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
.ends project3_2input_NAND_schematic
** End of subcircuit definition.

** Library name: project3
** Cell name: 3input_NAND
** View name: schematic
.subckt project3_3input_NAND_schematic a b c vdd vout vss
xm2 vout a net2 vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm1 net2 b net1 vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm0 net1 c vss vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm5 vout c vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm4 vout b vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm3 vout a vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
.ends project3_3input_NAND_schematic
** End of subcircuit definition.

** Library name: project3
** Cell name: DFF_6NAND
** View name: schematic
.subckt DFF_6NAND clock d q qbar vdd vss
xi4 net8 qbar q vdd vss project3_2input_NAND_schematic
xi3 q net2 qbar vdd vss project3_2input_NAND_schematic
xi2 net3 net8 net7 vdd vss project3_2input_NAND_schematic
xi1 net7 clock net8 vdd vss project3_2input_NAND_schematic
xi0 net2 d net3 vdd vss project3_2input_NAND_schematic
xi5 net8 clock net3 vdd net2 vss project3_3input_NAND_schematic
.ends DFF_6NAND
** End of subcircuit definition.

** Library name: project3
** Cell name: adder2
** View name: schematic
.subckt adder2 a b co ci s vdd vss
xm13 s net37 vss vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm12 net46 b vss vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm11 net42 a net46 vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm10 net37 ci net42 vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm9 net37 net13 net25 vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm8 net25 ci vss vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm7 net25 b vss vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm6 net25 a vss vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm5 co net13 vss vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm4 net13 ci net1 vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm3 net13 a net9 vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm2 net9 b vss vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm1 net1 b vss vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm0 net1 a vss vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm27 s net37 vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm26 net37 ci net102 vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm25 net102 b net98 vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm24 net98 a net84 vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm23 net84 b vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm22 net84 a vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm21 net84 ci vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm20 net37 net13 net84 vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm19 co net13 vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm18 net13 ci net64 vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm17 net64 b vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm16 net64 a vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm15 net60 b net64 vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xm14 net13 a net60 vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
.ends adder2
** End of subcircuit definition.

** Library name: project3
** Cell name: test2
** View name: schematic
xi2 clock a net1 qbar0 vdd vss DFF_6NAND
xi0 clock b net2 qbar1 vdd vss DFF_6NAND
xi1 net1 net2 co vss s vdd vss adder2
.END
