%{
    #include <stdio.h>
    int yylex();
    void yyerror(char *s);
%}

%token DIM ID AS INT
%start S
%%
S: DIM ID AS INT;
%%

int main() {
    yyparse();
    printf("Parsing finished...\n");
    return 0;
}

void yyerror(char *s) {
    fprintf(stderr, "Error: %s\n", s);
}