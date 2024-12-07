.TEMP 25
.OPTION POST

* Typical NMOS, typical PMOS process corner model file
.lib /home/vlsilab2/TSMCHOME/Executable_Package/Collaterals/Tech/SPICE/N16ADFP_SPICE_MODEL/n16adfp_spice_model_v1d0_usage.l TTMacro_MOS_MOSCAP
* Slow NMOS, slow PMOS process corner model file
*.lib /home/vlsilab2/TSMCHOME/Executable_Package/Collaterals/Tech/SPICE/N16ADFP_SPICE_MODEL/n16adfp_spice_model_v1d0_usage.l SSMacro_MOS_MOSCAP
* Fast NMOS, fast PMOS process corner model file
*.lib /home/vlsilab2/TSMCHOME/Executable_Package/Collaterals/Tech/SPICE/N16ADFP_SPICE_MODEL/n16adfp_spice_model_v1d0_usage.l FFMacro_MOS_MOSCAP

**Include your .sp file here**
.include "adder_ff_test.sp"

V1 CLOCK 0 PULSE(0 0.8V 0p 20p 20p 80p 200p)
V2 DA 0 0.8V
V3 DB 0 0V
V4 VDD 0 0.8V
V5 VSS 0 0V

*.tran 1n 10000n
.TRAN 0.1p 300ps
*.TRAN 0.1p 300ps
.END

*.tran 2p '70*period' Start=0.0
*.probe v(*)
*.option MEASDGT=5
*.option post
*.end
