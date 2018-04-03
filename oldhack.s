# Sometimes its easier to create x86 assembler code in a file like this hack.s file
# The Makefile has a command to assemble this file and produce a hack.o file that has
# the binary instructions.
# 
# Use "objdump -d hack.o" to disassemble these instructions
# Use "objdump -h -j.text" to show exactly where these binary instruction are within the hack.o file
#
# Put your x86 assembler code below....
mov $0,%ecx
mov $0,%r8
mov $0x602001, %rdx #loop start
mov (%rdx,%r8,1),%cl
cmp $0xb9, %cl #first byte of this code
je  400969
mov $0x603ce0, %rdx
sub $0x17,%ecx
imul $0x64,%r8,%r9
add %r9,%rdx 
mov %ecx,(%rdx)
add $1, %r8
mov 0x602010, %rdx
jmp *%rdx
