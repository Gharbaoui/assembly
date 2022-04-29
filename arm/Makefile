exit: exit.o
	arm-linux-gnueabi-gcc exit.o -nostdlib -o exit
exit.o:exit.s
	arm-linux-gnueabi-as exit.s -o exit.o
hello:hello.o
	arm-linux-gnueabi-gcc -nostdlib hello.o -o hello
hello.o:hello.s
	arm-linux-gnueabi-as hello.s -o hello.o

clean:
	rm *.o exit hello
	
