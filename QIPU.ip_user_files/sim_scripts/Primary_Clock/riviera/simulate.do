transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+Primary_Clock  -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.Primary_Clock xil_defaultlib.glbl

do {Primary_Clock.udo}

run 1000ns

endsim

quit -force
