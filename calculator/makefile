CC = cc
CFLAGS = -lfl

FILES = calc.y calc.l
EXECUTABLE = calc
TRASH = calc.tab.c calc.tab.h lex.yy.c

build: $(FILES)
	bison -d calc.y
	flex calc.l
	$(CC) -o $(EXECUTABLE) calc.tab.c lex.yy.c $(CFLAGS)

clean:
	rm -rf $(TRASH) $(EXECUTABLE)
	
rebuild: clean build