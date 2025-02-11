v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -370 -10 -370 10 {
lab=GND}
N -470 -10 -470 10 {
lab=GND}
N -470 -110 -470 -70 {p1
lab=VSS}
N -370 -150 -370 -70 {
lab=clkin}
N -370 -150 -210 -150 {
lab=clkin}
N 90 -90 170 -90 {
lab=p2e}
N 90 -110 230 -110 {
lab=p2}
N 90 -130 290 -130 {
lab=p1}
N 90 -150 350 -150 {
lab=p1e}
N -570 -10 -570 10 {
lab=GND}
N -570 -110 -570 -70 {p1
lab=VDD}
N 170 -90 170 -30 {lab=p2e}
N 230 -110 230 -30 {lab=p2}
N 290 -130 290 -30 {lab=p1}
N 350 -150 350 -30 {lab=p1e}
C {devices/gnd.sym} -370 10 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -370 -40 0 0 {name=Vp1 value="dc 0 pulse(0, \{vdd\}, 0, 100p, 100p, \{per/2\}, \{1u\}) "}
C {devices/gnd.sym} -470 10 0 0 {name=l16 lab=GND}
C {devices/vsource.sym} -470 -40 0 0 {name=Vss value="dc 0"}
C {devices/vdd.sym} -470 -110 0 0 {name=l17 lab=VSS}
C {devices/lab_wire.sym} 140 -150 0 0 {name=p2 sig_type=std_logic lab=p1e}
C {devices/lab_wire.sym} 140 -130 0 0 {name=p3 sig_type=std_logic lab=p1}
C {devices/lab_wire.sym} 140 -110 0 0 {name=p4 sig_type=std_logic lab=p2}
C {devices/lab_wire.sym} 140 -90 0 0 {name=p5 sig_type=std_logic lab=p2e}
C {devices/lab_wire.sym} -290 -150 0 0 {name=p6 sig_type=std_logic lab=clkin}
C {devices/gnd.sym} -570 10 0 0 {name=l14 lab=GND}
C {devices/vsource.sym} -570 -40 0 0 {name=Vsup value="dc \{vdd\}"}
C {devices/vdd.sym} -570 -110 0 0 {name=l15 lab=VDD}
C {devices/code_shown.sym} 190 -470 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27 vdd=1.5 per=1u cl=25f
.option method=gear

.control
save all 
tran 10p 15n
meas tran tp1e_p1 TRIG v(p1e) VAL=0.6 FALL=1 TARG v(p1) VAL=0.6 FALL=1
meas tran tp1_p2  TRIG v(p1)  VAL=0.6 FALL=1 TARG v(p2) VAL=0.6 RISE=1

plot v(p1) p2
.endc
"}
C {devices/capa.sym} 170 0 0 0 {name=C1
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 170 30 0 0 {name=l5 lab=GND}
C {devices/capa.sym} 230 0 0 0 {name=C2
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 290 0 0 0 {name=C3
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/capa.sym} 350 0 0 0 {name=C4
m=1
value=\{cl\}
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 230 30 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 290 30 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 350 30 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} 390 -150 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.inc /foss/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {/foss/designs/EE628/5_Design/3_Real_circuits/template_clkgen.sym} -60 -120 0 0 {name=x2}
