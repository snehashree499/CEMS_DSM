v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 590 -160 590 -140 {
lab=GND}
N 590 -240 590 -220 {
lab=v_ss}
N 590 -240 690 -240 {
lab=v_ss}
N 440 -180 440 -160 {
lab=GND}
N 440 -620 440 -240 {
lab=v_dd}
N 690 -470 690 -380 {
lab=v_in}
N 690 -470 1010 -470 {lab=v_in}
N 690 -320 690 -240 {lab=v_ss}
N 960 -620 960 -600 {
lab=v_dd}
N 960 -540 960 -440 {
lab=#net1}
N 960 -440 1010 -440 {lab=#net1}
N 440 -620 960 -620 {lab=v_dd}
N 1310 -440 1380 -440 {lab=v_out}
N 1460 -340 1460 -240 {
lab=v_ss}
N 1380 -440 1460 -440 {lab=v_out}
N 1460 -440 1460 -400 {lab=v_out}
N 1380 -440 1380 -330 {
lab=v_out}
N 1130 -240 1460 -240 {lab=v_ss}
N 930 -410 1010 -410 {lab=v_out}
N 930 -410 930 -330 {lab=v_out}
N 930 -330 1380 -330 {lab=v_out}
N 1130 -620 1130 -490 {lab=v_dd}
N 960 -620 1130 -620 {lab=v_dd}
N 1130 -390 1130 -240 {lab=v_ss}
N 690 -240 1130 -240 {lab=v_ss}
C {devices/code_shown.sym} -140 -70 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} -140 -160 0 0 {name=MODEL2 only_toplevel=true
format="tcleval( @value )"
value=".lib cornerRES.lib res_typ
"}
C {devices/title.sym} 240 90 0 0 {name=l5 author="(c) 2024 Hrishikesh, @HSB"}
C {devices/code_shown.sym} -140 -730 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.control
option sparse
save all
op
write tb_FolCas_ac.raw
set appendwrite

ac dec 101 1k 1G
write tb_FolCas_ac.raw
plot 20*log10(v_out)

meas ac dcgain MAX vmag(v_out) FROM=10 TO=10k
let f3db = dcgain/sqrt(2)
meas ac fbw WHEN vmag(v_out)=f3db FALL=1
let gainerror=(dcgain-1)/1
print dcgain
print fbw
print gainerror



plot 180/pi*ph(v_out) vs frequency

noise v(v_out) Vin dec 101 1k 100MEG
print onoise_total

.endc
"}
C {devices/vsource.sym} 590 -190 0 0 {name=Vss value=0}
C {devices/gnd.sym} 590 -140 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 590 -240 0 0 {name=p1 sig_type=std_logic lab=v_ss}
C {devices/vsource.sym} 440 -210 0 0 {name=Vdd value=1.5}
C {devices/gnd.sym} 440 -160 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 440 -250 0 0 {name=p2 sig_type=std_logic lab=v_dd}
C {devices/vsource.sym} 690 -350 0 0 {name=Vin value="dc 0.5 ac 1"}
C {lab_wire.sym} 760 -470 0 0 {name=p4 sig_type=std_logic lab=v_in}
C {spice_probe.sym} 810 -470 0 0 {name=p5 attrs=""}
C {isource.sym} 960 -570 0 0 {name=I0 value=0.8u}
C {capa.sym} 1460 -370 0 0 {name=C1
value=0.47p}
C {lab_wire.sym} 1460 -440 0 0 {name=p3 sig_type=std_logic lab=v_out}
C {spice_probe.sym} 1340 -440 0 0 {name=p6 attrs=""}
C {FoldedCascodeOTA.sym} 1160 -440 0 0 {name=x1}
