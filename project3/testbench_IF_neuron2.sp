.TEMP 25
.OPTION POST

* Typical NMOS, typical PMOS process corner model file
.lib /home/vlsilab2/TSMCHOME/Executable_Package/Collaterals/Tech/SPICE/N16ADFP_SPICE_MODEL/n16adfp_spice_model_v1d0_usage.l TTMacro_MOS_MOSCAP
* Slow NMOS, slow PMOS process corner model file
*.lib /home/vlsilab2/TSMCHOME/Executable_Package/Collaterals/Tech/SPICE/N16ADFP_SPICE_MODEL/n16adfp_spice_model_v1d0_usage.l SSMacro_MOS_MOSCAP
* Fast NMOS, fast PMOS process corner model file
*.lib /home/vlsilab2/TSMCHOME/Executable_Package/Collaterals/Tech/SPICE/N16ADFP_SPICE_MODEL/n16adfp_spice_model_v1d0_usage.l FFMacro_MOS_MOSCAP

**Include your .sp file here**
.include "IF_neuron2.sp"

*V1 CLOCK 0 PULSE (0 0.8V 0p 30p 30p pw4 period4)


*V1 CLOCK 0 PULSE(0 0.8V 0p 20p 20p 80p 200p)

*V1 CLOCK 0 PULSE(0 0.8V 0p 20p 20p 0.1n 0.5n)
********************************************

**********************************************
*vCLK CLOCK 0 PULSE (0 0.8 0 tr tf pw period)
*V1 CLOCK 0 PULSE(0 0.8V d tr tf pw3 period3)
V1 CLOCK 0 PULSE(0 0.8V 0p 20p 20p 80p 200p)
V2 a0 0 0.8V
V3 a1 0 0.8V
V4 a2 0 0.8V
V5 a3 0 0.8V

V6 b0 0 0.8V
V7 b1 0 0.8V
V8 b2 0 0.8V
V9 b3 0 0.8V

V10 c0 0 0.8V
V11 c1 0 0.8V
V12 c2 0 0.8V
V13 c3 0 0.8V

V14 d0 0 0.8V
V15 d1 0 0.8V
V16 d2 0 0.8V
V17 d3 0 0.8V

V18 w0 0 0.8V
V19 w1 0 0.8V
V20 w2 0 0.8V
V21 w3 0 0.8V

V22 VDD 0 0.8V
V23 VSS 0 0V

*.tran 1n 10000n
.TRAN 0.1p 300ps
*.TRAN 0.1p 300ps
.END

*.tran 2p '70*period' Start=0.0
*.probe v(*)
*.option MEASDGT=5
*.option post
*.end
