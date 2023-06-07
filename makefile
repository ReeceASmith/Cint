buildlib: src/intstr.c include/intstr.h src/intstrconv.c include/intstrconv.h src/mempp.c include/mempp.h
	@cd src
	@cl /c intstr.c intstrconv.c mempp.c
	@echo. && echo Building Cint Library...
	@lib /OUT:Cint.lib intstr.obj intstrconv.obj mempp.obj
	@move Cint.lib "../lib"
	@del *.obj
	@cd ../
	@echo. && echo Cint Library Build Complete. File Location: Cint/Cint.lib
	
test:
	del Cint.lib
	@IF NOT EXIST Cint.lib nmake buildlib
	@nmake testhelper
	
testhelper: lib/Cint.lib
	@cl /c test.c
	@link test.obj lib/Cint.lib
	@del *.obj
	@echo. && echo.
	@test

testfile:
	del Cint.lib
	@IF NOT EXIST Cint.lib nmake buildlib
	@nmake testfilehelper

testfilehelper: lib/Cint.lib
	@cl /c testfile.c
	@link testfile.obj lib/Cint.lib
	@del *.obj
	@echo. && echo.
	@testfile