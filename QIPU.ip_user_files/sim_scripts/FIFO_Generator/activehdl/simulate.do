transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+FIFO_Generator  -L xpm -L fifo_generator_v13_2_8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.FIFO_Generator xil_defaultlib.glbl

do {FIFO_Generator.udo}

run

endsim

quit -force
