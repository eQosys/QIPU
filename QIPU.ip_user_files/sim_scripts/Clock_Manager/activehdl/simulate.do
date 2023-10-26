transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+Clock_Manager  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.Clock_Manager xil_defaultlib.glbl

do {Clock_Manager.udo}

run

endsim

quit -force
