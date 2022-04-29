run: display.o write.o strlen.o exit.o
	arm-linux-gnueabi-ld -o run $^
display.o:display.s
	arm-linux-gnueabi-as display.s -o display.o
write.o:write.s
	arm-linux-gnueabi-as write.s -o write.o
strlen.o:strlen.s
	arm-linux-gnueabi-as strlen.s -o strlen.o
exit.o:exit.s
	arm-linux-gnueabi-as exit.s -o exit.o

clean:
	rm *.o run
