	.arch armv5te
	.fpu softvfp
	.eabi_attribute 20 , 1
	.eabi_attribute 21 , 1
	.eabi_attribute 23 , 3
	.eabi_attribute 24 , 1
	.eabi_attribute 25 , 1
	.eabi_attribute 26 , 2
	.eabi_attribute 30 , 6
	.eabi_attribute 18 , 4
 
	.data
 
str0:	.string "teste 3 : conditions\n"
len0 = . - str0
str1:	.string "premiere if : erreur"
len1 = . - str1
str2:	.string "deuxieme if : erreur"
len2 = . - str2
str3:	.string "troisieme if : ok\n"
len3 = . - str3
str4:	.string "troisieme if : elsif : erreur"
len4 = . - str4
str5:	.string "troisieme if : else : erreur"
len5 = . - str5
str6:	.string "deuxieme if : else : erreur"
len6 = . - str6
str7:	.string "premier if : elsif2 : erreur"
len7 = . - str7
str8:	.string "premier if : else : erreur"
len8 = . - str8
str9:	.string "premier if : erreur"
len9 = . - str9
str10:	.string "deuxieme if : ok\n"
len10 = . - str10
str11:	.string "troisieme if : erreur"
len11 = . - str11

 

 
	.text
 
	.global _start
_start :
	/* syscall write	*/ 
	MOV 	R0, #1
	LDR 	R1, =str0
	LDR 	R2, =len0
	MOV 	R7, #4
	SWI 	#0

	MOV 	R4, #6

	MOV 	R5, #2

	MOV 	R6, #2

	MOV 	R7, #1
	CMP	R4, R7
		BNE else00
	/* syscall write	*/ 
	MOV 	R0, #1
	LDR 	R1, =str1
	LDR 	R2, =len1
	MOV 	R7, #4
	SWI 	#0


	B end0
else00: 
	MOV 	R7, #6
	CMP	R4, R7
		BNE else01
	CMP	R5, R4
		BLE else10
	/* syscall write	*/ 
	MOV 	R0, #1
	LDR 	R1, =str2
	LDR 	R2, =len2
	MOV 	R7, #4
	SWI 	#0


	B end1
else10: 
	CMP	R5, R6
		BNE else11
	MOV 	R7, #6
	CMP	R4, R7
		BNE else20
	/* syscall write	*/ 
	MOV 	R0, #1
	LDR 	R1, =str3
	LDR 	R2, =len3
	MOV 	R7, #4
	SWI 	#0


	B end2
else20: 
	MOV 	R7, #8
	CMP	R4, R7
		BNE else21
	/* syscall write	*/ 
	MOV 	R0, #1
	LDR 	R1, =str4
	LDR 	R2, =len4
	MOV 	R7, #4
	SWI 	#0


	B end2
else21: 
	/* syscall write	*/ 
	MOV 	R0, #1
	LDR 	R1, =str5
	LDR 	R2, =len5
	MOV 	R7, #4
	SWI 	#0


end2:


	B end1
else11: 
	/* syscall write	*/ 
	MOV 	R0, #1
	LDR 	R1, =str6
	LDR 	R2, =len6
	MOV 	R7, #4
	SWI 	#0


end1:


	B end0
else01: 
	MOV 	R7, #3
	CMP	R4, R7
		BNE else02
	/* syscall write	*/ 
	MOV 	R0, #1
	LDR 	R1, =str7
	LDR 	R2, =len7
	MOV 	R7, #4
	SWI 	#0


	B end0
else02: 
	/* syscall write	*/ 
	MOV 	R0, #1
	LDR 	R1, =str8
	LDR 	R2, =len8
	MOV 	R7, #4
	SWI 	#0


end0:

	MOV 	R7, #4
	ADD	R8, R6, R7
	MOV 	R5, R8

	MOV 	R7, #1
	CMP	R4, R7
		BNE else30
	/* syscall write	*/ 
	MOV 	R0, #1
	LDR 	R1, =str9
	LDR 	R2, =len9
	MOV 	R7, #4
	SWI 	#0


	B end3
else30: 
	MOV 	R7, #6
	CMP	R4, R7
		BNE else31
	CMP	R5, R4
		BNE else40
	/* syscall write	*/ 
	MOV 	R0, #1
	LDR 	R1, =str10
	LDR 	R2, =len10
	MOV 	R7, #4
	SWI 	#0


	B end4
else40: 
	CMP	R5, R6
		BNE else41
	MOV 	R7, #6
	CMP	R4, R7
		BNE else50
	/* syscall write	*/ 
	MOV 	R0, #1
	LDR 	R1, =str11
	LDR 	R2, =len11
	MOV 	R7, #4
	SWI 	#0


	B end5
else50: 
	MOV 	R7, #8
	CMP	R4, R7
		BNE else51
	/* syscall write	*/ 
	MOV 	R0, #1
	LDR 	R1, =str4
	LDR 	R2, =len4
	MOV 	R7, #4
	SWI 	#0


	B end5
else51: 
	/* syscall write	*/ 
	MOV 	R0, #1
	LDR 	R1, =str5
	LDR 	R2, =len5
	MOV 	R7, #4
	SWI 	#0


end5:


	B end4
else41: 
	/* syscall write	*/ 
	MOV 	R0, #1
	LDR 	R1, =str6
	LDR 	R2, =len6
	MOV 	R7, #4
	SWI 	#0


end4:


	B end3
else31: 
	MOV 	R7, #3
	CMP	R4, R7
		BNE else32
	/* syscall write	*/ 
	MOV 	R0, #1
	LDR 	R1, =str7
	LDR 	R2, =len7
	MOV 	R7, #4
	SWI 	#0


	B end3
else32: 
	/* syscall write	*/ 
	MOV 	R0, #1
	LDR 	R1, =str8
	LDR 	R2, =len8
	MOV 	R7, #4
	SWI 	#0


end3:


	/* syscall exit*/ 
	MOV     R0, #0
	MOV     R7, #1
	SWI     #0
