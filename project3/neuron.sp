** Generated for: hspiceD
** Generated on: Dec  4 16:33:37 2024
** Design library name: project3
** Design cell name: test2
** Design view name: schematic

.OPTION POST

* Typical NMOS, typical PMOS process corner model file
.lib /home/vlsilab2/TSMCHOME/Executable_Package/Collaterals/Tech/SPICE/N16ADFP_SPICE_MODEL/n16adfp_spice_model_v1d0_usage.l TTMacro_MOS_MOSCAP
* Slow NMOS, slow PMOS process corner model file
*.lib /home/vlsilab2/TSMCHOME/Executable_Package/Collaterals/Tech/SPICE/N16ADFP_SPICE_MODEL/n16adfp_spice_model_v1d0_usage.l SSMacro_MOS_MOSCAP
* Fast NMOS, fast PMOS process corner model file
*.lib /home/vlsilab2/TSMCHOME/Executable_Package/Collaterals/Tech/SPICE/N16ADFP_SPICE_MODEL/n16adfp_spice_model_v1d0_usage.l FFMacro_MOS_MOSCAP

** Library name: project3
** Cell name: 2input_NAND
** View name: schematic
.subckt project3_2input_NAND_schematic a b out vdd vss
xmdut1 out b vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut0 out a vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut3 net1 b vss vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut2 out a net1 vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
.ends project3_2input_NAND_schematic
** End of subcircuit definition.

** Library name: project3
** Cell name: 3input_NAND
** View name: schematic
.subckt project3_3input_NAND_schematic a b c vdd vout vss
xmdut2 vout a net2 vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut1 net2 b net1 vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut0 net1 c vss vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut5 vout c vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut4 vout b vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut3 vout a vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
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
xmdut13 s net37 vss vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut12 net46 b vss vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut11 net42 a net46 vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut10 net37 ci net42 vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut9 net37 net13 net25 vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut8 net25 ci vss vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut7 net25 b vss vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut6 net25 a vss vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut5 co net13 vss vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut4 net13 ci net1 vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut3 net13 a net9 vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut2 net9 b vss vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut1 net1 b vss vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut0 net1 a vss vss nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut27 s net37 vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut26 net37 ci net102 vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut25 net102 b net98 vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut24 net98 a net84 vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut23 net84 b vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut22 net84 a vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut21 net84 ci vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut20 net37 net13 net84 vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut19 co net13 vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut18 net13 ci net64 vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut17 net64 b vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut16 net64 a vdd vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut15 net60 b net64 vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut14 net13 a net60 vdd pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
.ends adder2
** End of subcircuit definition.

** Library name: project3
** Cell name: test2
** View name: schematic
xi2 clock a net1 qbar0 vdd vss DFF_6NAND
xi0 clock b net2 qbar1 vdd vss DFF_6NAND
xi1 net1 net2 co vss s vdd vss adder2

**Change your period here**
.param period=0.5n

.param period4='period*16'
.param tr='30p'
.param tf='30p'
.param d='period-100p'
.param pw4 = '(period4/2)-((tr+tf)/2)'
* Voltage sources
Vss gnd! 0 DC=0
VDD vdd! 0 DC=0.8

C0 F gnd! 5E-15F

*xinv Vin Vout Inv

V0 CLOCK 0 PULSE (0 0.8 d tr tf pw4 period4)

V6 A 1 0V
V7 B 1 0.8V
*V8 CO 0 0V
*V9 S 0 0V

.tran 1p 40n

.end



*V1 IN 0 PULSE(0 0.8V 0p 20p 20p 80p 200p)
*V4 V2 0 0.8V
*V5 V3 0 0V



