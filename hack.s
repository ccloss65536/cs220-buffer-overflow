# Sometimes its easier to create x86 assembler code in a file like this hack.s file
# The Makefile has a command to assemble this file and produce a hack.o file that has
# the binary instructions.
# 
# Use "objdump -d hack.o" to disassemble these instructions
# Use "objdump -h -j.text" to show exactly where these binary instruction are within the hack.o file
#
# Put your x86 assembler code below....
mov $0,%edx
mov $0,%r8
mov $0x602001, %rcx #loop start
mov (%rcx,%r8,1),%dl
cmp $0xba, %dl #first byte of this code
je  400969
mov $0x603ce0, %rcx
sub $0x17,%edx
imul $400,%r8,%r9
add %r9,%rcx 
mov %edx,(%rcx)
add $0x38,%rsp
mov %rsp,%rbp
sub $0x38,%rsp
add $1, %r8
jmp -1
