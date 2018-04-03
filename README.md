# cs220-buffer-overflow
Handwritten x86 assembly code to exploit an intentionally vulnerable code for class

Grades.c is the exploited file, which uses gets() to copy user data into an executable page .
108.tar is the raw input used to exploit grades.c.
hack.s contains the assembly for the exploit.
hex_input.txt contains the hexadecimal for the exploit, that is translated intp 108.tar with Create_Hex.py

This code was created for CS220 at SUNY Binghamton in Spring 2017
