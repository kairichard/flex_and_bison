This is a very simple implementation of the popular wc-programm using only flex.
You have to manually compile it like this:
	flex wc.l
	cc lex.yy.c -lfl

The resulting program can only read from _STDIN_
