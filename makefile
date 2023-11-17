# make makefile
# 
# Tools used:
#  Compile::Resource Compiler
#  Compile::GNU C
#  Make: make
all : pmstars.exe

pmstars.exe : pmstars.obj pmstars.def
	gcc -Zomf pmstars.obj pmstars.def -o pmstars.exe

pmstars.obj : pmstars.c pmstars.h
	gcc -Wall -Zomf -c -O2 pmstars.c -o pmstars.obj

pmstars.res : pmstars.rc pmstars,ico
	wrc -q -r -bt=os2 pmstars.rc

clean :
	rm -rf *exe *res *obj *lib
