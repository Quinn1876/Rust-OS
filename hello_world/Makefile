hello: hello.o link.lds
	~/bin/riscv-toolkit/bin/riscv64-unknown-linux-gnu-ld -T link.lds -o hello hello.o

hello.o: hello.s
	~/bin/riscv-toolkit/bin/riscv64-unknown-linux-gnu-as -o hello.o hello.s

clean:
	rm hello hello.o

run:
	~/repos/qemu/build/qemu-system-riscv64 -machine sifive_u -bios none -nographic -kernel hello
