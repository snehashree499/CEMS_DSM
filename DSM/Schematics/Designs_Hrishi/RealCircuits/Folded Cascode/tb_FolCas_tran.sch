v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 790 -170 790 -150 {
lab=GND}
N 870 -170 870 -150 {
lab=GND}
N 870 -250 870 -230 {
lab=v_ss}
N 1740 -400 1740 -250 {
lab=v_ss}
N 1540 -500 1540 -380 {
lab=v_out}
N 1170 -380 1540 -380 {
lab=v_out}
N 1170 -470 1170 -380 {
lab=v_out}
N 1170 -470 1240 -470 {
lab=v_out}
N 970 -380 970 -250 {
lab=v_ss}
N 870 -250 970 -250 {
lab=v_ss}
N 970 -530 970 -440 {
lab=v_in}
N 970 -530 1240 -530 {
lab=v_in}
N 1360 -250 1740 -250 {
lab=v_ss}
N 1170 -500 1240 -500 {lab=#net1}
N 1170 -580 1170 -500 {lab=#net1}
N 1540 -500 1740 -500 {lab=v_out}
N 1740 -500 1740 -460 {lab=v_out}
N 790 -640 790 -230 {lab=v_dd}
N 790 -640 1360 -640 {lab=v_dd}
N 1360 -640 1360 -550 {lab=v_dd}
N 1360 -450 1360 -250 {lab=v_ss}
N 970 -250 1360 -250 {
lab=v_ss}
C {devices/code_shown.sym} 180 -70 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} 180 -150 0 0 {name=MODEL2 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerRES.lib res_typ
"}
C {devices/code_shown.sym} 200 -510 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.ic v(v_vout)=0
.control

tran 0.005u 15u uic
plot v_out

let tstart=0
let vout_limit = 0.5*0.99
meas tran tcross WHEN v(v_out)=vout_limit

let tsettle=tcross-tstart
print tsettle

.endc
"}
C {devices/vsource.sym} 790 -200 0 0 {name=Vdd value=1.5
}
C {devices/gnd.sym} 790 -150 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 790 -250 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 870 -200 0 0 {name=Vss value=0}
C {devices/gnd.sym} 870 -150 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 870 -250 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {capa.sym} 1740 -430 0 0 {name=C1
value=0.47p}
C {lab_wire.sym} 1740 -500 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {devices/vsource.sym} 970 -410 0 0 {name=Vin value="dc 0.5 ac 1"}
C {lab_wire.sym} 1030 -530 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {isource.sym} 1170 -610 0 0 {name=I0 value= 0.8u}
C {spice_probe.sym} 1090 -530 0 0 {name=p5 attrs=""}
C {spice_probe.sym} 1590 -500 0 0 {name=p6 attrs=""}
C {devices/title.sym} 340 90 0 0 {name=l5 author="(c) 2024 Hrishikesh, @HSB"}
C {/foss/designs/CEMS_DSM/DSM/Schematics/Designs_Hrishi/RealCircuits/Folded Cascode/FoldedCascodeOTA.sym} 1390 -500 0 0 {name=x1}
