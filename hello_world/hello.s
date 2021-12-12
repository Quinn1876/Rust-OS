.global _start

_start:
	lui t0, 0x10010 # upper 20 bits of the UART address which is 0x10010000

	# Write 'H' to UART
	li t1, 72
	sw t1, 0(t0)

	# Write 'E' to UART
	li t1, 101
	sw t1, 0(t0)

	# Write LL to UART
	li t1, 108
	sw t1, 0(t0)
	sw t1, 0(t0)

	li t1, 111 # Write O to UART
	sw t1, 0(t0)

	li t1, 10 # linefeed character to UART
	sw t1, 0(t0)


finished:
	beq x0, x0, finished

