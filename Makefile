all: hello

hello: hello.o sayhi.o
	gcc -o hello hello.o sayhi.o

hello.o: hello.c
	gcc -c hello.c

sayhi.o: sayhi.c
	gcc -c sayhi.c

clean:
	rm -f hello hello.o sayhi.o
