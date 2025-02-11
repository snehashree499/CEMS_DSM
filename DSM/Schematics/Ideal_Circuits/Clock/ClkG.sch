v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 240 -470 280 -470 {
lab=clkinb}
N 360 -470 500 -470 {
lab=clkinbb}
N 240 -280 500 -280 {
lab=clkinb}
N 240 -470 240 -280 {
lab=clkinb}
N 210 -470 240 -470 {
lab=clkinb}
N 1340 -450 1410 -450 {
lab=b1}
N 1410 -450 1410 -400 {
lab=b1}
N 470 -360 470 -320 {
lab=b1}
N 470 -320 500 -320 {
lab=b1}
N 1340 -300 1410 -300 {
lab=b2}
N 1410 -360 1410 -300 {
lab=b2}
N 470 -430 470 -400 {
lab=b2}
N 470 -430 500 -430 {
lab=b2}
N 1410 -450 1510 -450 {
lab=b1}
N 1410 -300 1500 -300 {
lab=b2}
N 100 -470 130 -470 {
lab=clkin}
N 1120 -450 1140 -450 {
lab=a1}
N 1120 -300 1140 -300 {
lab=a2}
N 1130 -400 1410 -400 {
lab=b1}
N 1130 -360 1410 -360 {
lab=b2}
N 1070 -400 1130 -360 {
lab=b2}
N 1070 -360 1130 -400 {
lab=b1}
N 1220 -450 1280 -450 {
lab=#net1}
N 1220 -300 1260 -300 {
lab=#net2}
N 1630 -470 1670 -470 {
lab=#net3}
N 1840 -470 1880 -470 {
lab=p1}
N 1730 -470 1770 -470 {
lab=#net4}
N 1620 -280 1650 -280 {
lab=#net5}
N 1730 -280 1760 -280 {
lab=#net6}
N 1840 -280 1880 -280 {
lab=p2}
N 470 -360 1070 -360 {
lab=b1}
N 470 -400 1070 -400 {
lab=b2}
N 1120 -490 1510 -490 {
lab=a1}
N 1120 -260 1500 -260 {
lab=a2}
N 740 -450 780 -450 {
lab=#net7}
N 860 -450 900 -450 {
lab=#net8}
N 740 -300 780 -300 {
lab=#net9}
N 860 -300 900 -300 {
lab=#net10}
N 980 -450 1020 -450 {
lab=#net11}
N 980 -300 1020 -300 {
lab=#net12}
N 1120 -300 1120 -260 {
lab=a2}
N 1100 -300 1120 -300 {
lab=a2}
N 1120 -490 1120 -450 {
lab=a1}
N 1100 -450 1120 -450 {
lab=a1}
N 620 -450 660 -450 {
lab=#net13}
N 620 -300 660 -300 {
lab=#net14}
C {devices/ipin.sym} 100 -470 0 0 {name=p11 lab=clkin}
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 560 -450 0 0 {name=xn1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 940 -450 0 0 {name=xi7 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} 170 -470 0 0 {name=xi1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_2.sym} 320 -470 0 0 {name=xi2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 560 -300 2 1 {name=xn2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1300 -450 0 0 {name=xi13 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 940 -300 0 0 {name=xi8 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1300 -300 0 0 {name=xi14 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 1570 -470 0 0 {name=xn3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_nand2_2.sym} 1560 -280 2 1 {name=xn4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/opin.sym} 1880 -470 0 0 {name=p3 lab=p1}
C {devices/opin.sym} 1880 -280 0 0 {name=p4 lab=p2}
C {devices/lab_wire.sym} 420 -280 0 0 {name=p6 sig_type=std_logic lab=clkinb}
C {devices/lab_wire.sym} 420 -470 0 0 {name=p7 sig_type=std_logic lab=clkinbb}
C {devices/lab_wire.sym} 1470 -490 0 0 {name=p8 sig_type=std_logic lab=a1}
C {devices/lab_wire.sym} 1470 -450 0 0 {name=p9 sig_type=std_logic lab=b1}
C {devices/lab_wire.sym} 1470 -300 0 0 {name=p10 sig_type=std_logic lab=b2}
C {devices/lab_wire.sym} 1470 -260 0 0 {name=p12 sig_type=std_logic lab=a2}
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1180 -450 0 0 {name=xi11 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1060 -450 0 0 {name=xi9 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1180 -300 0 0 {name=x12 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1060 -300 0 0 {name=xi10 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1690 -470 0 0 {name=xi15 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_8.sym} 1800 -470 0 0 {name=xi17 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 1690 -280 0 0 {name=xi16 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_8.sym} 1800 -280 0 0 {name=xi18 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 700 -450 0 0 {name=xi3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 820 -450 0 0 {name=xi5 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 700 -300 0 0 {name=xi4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_inv_4.sym} 820 -300 0 0 {name=xi6 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/code_shown.sym} 220 -1000 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27 vdd=1.5 per=4.5n cl=25f
.option method=gear

.control
save all 
tran 10p 15n
meas tran tp1_p2  TRIG v(p1)  VAL=0.6 FALL=1 TARG v(p2) VAL=0.6 RISE=1
plot p1 p2
write tb_clkgen.raw
.endc
"}
C {devices/code_shown.sym} 30 -790 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.inc /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
