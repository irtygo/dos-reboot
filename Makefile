ASM=nasm
RM=rm

all: reboot.com

reboot.com: reboot.asm
	$(ASM) $< -fbin -o $@

clean:
	$(RM) reboot.com
