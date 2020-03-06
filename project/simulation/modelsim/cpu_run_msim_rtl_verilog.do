transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/00_Project/riscv-invicta-master/17010160051/NO157/Question1/src {E:/00_Project/riscv-invicta-master/17010160051/NO157/Question1/src/machinectl.v}
vlog -vlog01compat -work work +incdir+E:/00_Project/riscv-invicta-master/17010160051/NO157/Question1/src {E:/00_Project/riscv-invicta-master/17010160051/NO157/Question1/src/machine.v}
vlog -vlog01compat -work work +incdir+E:/00_Project/riscv-invicta-master/17010160051/NO157/Question1/src {E:/00_Project/riscv-invicta-master/17010160051/NO157/Question1/src/irregister.v}
vlog -vlog01compat -work work +incdir+E:/00_Project/riscv-invicta-master/17010160051/NO157/Question1/src {E:/00_Project/riscv-invicta-master/17010160051/NO157/Question1/src/datactl.v}
vlog -vlog01compat -work work +incdir+E:/00_Project/riscv-invicta-master/17010160051/NO157/Question1/src {E:/00_Project/riscv-invicta-master/17010160051/NO157/Question1/src/counter.v}
vlog -vlog01compat -work work +incdir+E:/00_Project/riscv-invicta-master/17010160051/NO157/Question1/src {E:/00_Project/riscv-invicta-master/17010160051/NO157/Question1/src/CLKSOURCE.v}
vlog -vlog01compat -work work +incdir+E:/00_Project/riscv-invicta-master/17010160051/NO157/Question1/src {E:/00_Project/riscv-invicta-master/17010160051/NO157/Question1/src/alu.v}
vlog -vlog01compat -work work +incdir+E:/00_Project/riscv-invicta-master/17010160051/NO157/Question1/src {E:/00_Project/riscv-invicta-master/17010160051/NO157/Question1/src/adr.v}
vlog -vlog01compat -work work +incdir+E:/00_Project/riscv-invicta-master/17010160051/NO157/Question1/src {E:/00_Project/riscv-invicta-master/17010160051/NO157/Question1/src/accum.v}
vlog -vlog01compat -work work +incdir+E:/00_Project/riscv-invicta-master/17010160051/NO157/Question1/src {E:/00_Project/riscv-invicta-master/17010160051/NO157/Question1/src/cpu.v}

vlog -vlog01compat -work work +incdir+E:/00_Project/riscv-invicta-master/17010160051/NO157/Question1/project/../sim {E:/00_Project/riscv-invicta-master/17010160051/NO157/Question1/project/../sim/cputop.v}
vlog -vlog01compat -work work +incdir+E:/00_Project/riscv-invicta-master/17010160051/NO157/Question1/project/../src {E:/00_Project/riscv-invicta-master/17010160051/NO157/Question1/project/../src/addr_decode.v}
vlog -vlog01compat -work work +incdir+E:/00_Project/riscv-invicta-master/17010160051/NO157/Question1/project/../src {E:/00_Project/riscv-invicta-master/17010160051/NO157/Question1/project/../src/ram.v}
vlog -vlog01compat -work work +incdir+E:/00_Project/riscv-invicta-master/17010160051/NO157/Question1/project/../src {E:/00_Project/riscv-invicta-master/17010160051/NO157/Question1/project/../src/rom.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  cputop

add wave *
view structure
view signals
run -all
