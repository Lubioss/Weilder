all: libso.so libso2.so

libso.so: processhi.c
	gcc -Wall -fPIC -shared -o libso.so processhi.c -ldl

libso2.so: processhi2.c
	gcc -Wall -fPIC -shared -o libso2.so processhi2.c -ldl

.PHONY clean:
	rm -rf libso.so libso2.so
