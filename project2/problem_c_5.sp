** Generated for: hspiceD
** Generated on: Nov 13 14:34:03 2024
** Design library name: project2
** Design cell name: problem_c
** Design view name: schematic

** Library name: project2
** Cell name: problem_c
** View name: schematic


.OPTION POST

* Typical NMOS, typical PMOS process corner model file
.lib /home/vlsilab2/TSMCHOME/Executable_Package/Collaterals/Tech/SPICE/N16ADFP_SPICE_MODEL/n16adfp_spice_model_v1d0_usage.l TTMacro_MOS_MOSCAP
* Slow NMOS, slow PMOS process corner model file
*.lib /home/vlsilab2/TSMCHOME/Executable_Package/Collaterals/Tech/SPICE/N16ADFP_SPICE_MODEL/n16adfp_spice_model_v1d0_usage.l SSMacro_MOS_MOSCAP
* Fast NMOS, fast PMOS process corner model file
*.lib /home/vlsilab2/TSMCHOME/Executable_Package/Collaterals/Tech/SPICE/N16ADFP_SPICE_MODEL/n16adfp_spice_model_v1d0_usage.l FFMacro_MOS_MOSCAP


xmdut14 net2 out v3 v3 nch_svt_mac l=16e-9 nfin=10 w=442e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut13 net2 out v3 v3 nch_svt_mac l=16e-9 nfin=20 w=922e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut11 out c v3 v3 nch_svt_mac l=16e-9 nfin=9 w=394e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut10 out net3 v3 v3 nch_svt_mac l=16e-9 nfin=9 w=394e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut7 net5 b v3 v3 nch_svt_mac l=16e-9 nfin=10 w=442e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut6 net4 a net5 v3 nch_svt_mac l=16e-9 nfin=10 w=442e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut5 net3 net1 net4 v3 nch_svt_mac l=16e-9 nfin=10 w=442e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut0 net1 in v3 v3 nch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut15 net2 out v2 v2 pch_svt_mac l=16e-9 nfin=10 w=442e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut12 net2 out v2 v2 pch_svt_mac l=16e-9 nfin=20 w=922e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut9 out c net6 v2 pch_svt_mac l=16e-9 nfin=17 w=778e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut8 net6 net3 v2 v2 pch_svt_mac l=16e-9 nfin=17 w=778e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut4 net3 b v2 v2 pch_svt_mac l=16e-9 nfin=4 w=154e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut3 net3 a v2 v2 pch_svt_mac l=16e-9 nfin=4 w=154e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut2 net3 net1 v2 v2 pch_svt_mac l=16e-9 nfin=4 w=154e-9 multi=1 nf=1 sa=90e-9 sb=90e-9
xmdut1 net1 in v2 v2 pch_svt_mac l=16e-9 nfin=2 w=58e-9 multi=1 nf=1 sa=90e-9 sb=90e-9


* Voltage sources
V1 IN 0 PULSE(0 0.8V 0p 20p 20p 80p 200p)
V4 V2 0 0.8V
V5 V3 0 0V

V6 A 0 0.8V
V7 B 0 0.8V
V8 C 0 0V

.tran 1p 40n


.END
