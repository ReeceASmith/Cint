#pragma once
#include <stddef.h>

/*
	Memory++ (memorypp)
	Various functions relating to data and memory allocation.
	List of functions:
		strip		Strip newline from string
		printrb		Print Raw Bytes
*/



/*
	Strip Newline
	Strips newline characters from the end of strings
	Modifies *s by replacing the (existing) newline and replacing it with a null terminator
	Parameters:
		char *s = String to modify
	
	Returns an int (0 False, 1 True) signifying success
*/
int strip(char *s);



/*
	Print Raw Bytes
	Prints the raw data at a memory location in various formats
	Parameters:
		void * const p	= Pointer to data
			Const ensures original pointer is unchanged
		const int n	= Number of bytes to print
			Const ensures original value is unchanged
	(Optional, from ...)
		const char t	= The data type to output
			Const ensures original value is unchanged
			Default is 'd'
			'c'	= char
			'd'	= int
			'b' = binary
			'x'	= hex
			'i' = Cint as binary
	
	No return, uses a printf statement
	Does not change the data stored at *p
*/
void printrb(void * const p, const int n, ...);
