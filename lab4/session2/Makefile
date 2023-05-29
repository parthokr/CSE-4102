run:
	bison -d parser.y
	flex lexer.l
	gcc lex.yy.c parser.tab.c -o build.out
	./build.out < input.txt