#include <cassert>
#include <stdio.h>
#include <cstdlib>
#include <iostream>

class Cpu {
	public:
		virtual int dummy( int, int ) { }
	private:
		virtual int add_( int a, int b ) {return a + b;}
		virtual int sub_( int a, int b ) {return a - b;}
		virtual int mul_( int a, int b ) {return a * b;}
		virtual int div_( int a, int b ) {return a / b;}
		virtual int mod_( int a, int b ) {return a % b;}
		virtual int and_( int a, int b ) {return a & b;}
		virtual int  or_( int a, int b ) {return a | b;}
		virtual int xor_( int a, int b ) {return a ^ b;}
};

int main( int argc, char* argv[] )
{
	typedef int (Cpu::*Memfun) ( int, int );

	union {
		Memfun fn;
		unsigned char ptr[6];
	}u;

	Cpu 	cpu;

	u.fn = &Cpu::dummy;

	assert (argc == 4);

	int p1 = atoi(argv[1]);
	int p2 = atoi(argv[3]);
	char op = argv[2][0];

	assert( op >= 'A' && op <='H');

	std::cout << "The answer is " << ( (cpu.*(u.fn))(p1, p2) ) << std::end1;

}
