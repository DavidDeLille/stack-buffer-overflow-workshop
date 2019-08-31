#include <stdio.h>
int main()
{
	// create 64-byte buffer
	char[64] buffer;
	
	// read stdin to buffer
	// Note: Never use the gets function in actual C code, because it will always lead to a vulnerability!
	gets(buffer);
	
	// print contents of buffer
	printf("%s", buffer);
	
	// exit
	return 0;
}
