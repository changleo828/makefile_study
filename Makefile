
hide:=@
log=@echo [$(shell date "+%Y-%m-%d %H:%M:%S")]

OBJ=main.o


edit:$(OBJ)
	gcc -o edit $(OBJ)

main.o:source/main.c include/str.h
	gcc -c source/main.c

.PHONY:help
help:
	$(log) "Starting"
	$(hide)echo "================================"
	@echo "makefile study"
	@echo "================================"
.PHONY:clean
clean:
	-rm edit $(OBJ)
