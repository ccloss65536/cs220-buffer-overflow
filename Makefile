test : grades testhex.txt
	./grades <testhex.txt
	
showhex : testhex.txt
	od -Ax -tx1z testhex.txt
	
hack.o : hack.s
	gcc -c -o hack.o hack.s
	
hack.objdump.txt : hack.o
	objdump -dSl hack.o >hack.objdump.txt	
	
testhex.txt : hex_input.txt
	python "Create_Hex.py"
	
grades: grades.c
	gcc -Wall -O0 -g -o grades grades.c
	
grades.assembly : grades
	objdump -dSl grades >grades.objdump.txt
	
gdb : grades testhex.txt
	gdb -silent -x dbg_cmds.txt grades

valgrind: grades testhex.txt
	valgrind ./grades <testhex.txt
	
clean:  
	-rm grades grades.objdump.txt makeHex testhex.txt hack.o hack.objdump.txt
