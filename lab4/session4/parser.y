%{
    #include <stdio.h>
    int yylex();
    void yyerror(char *s);
%}

%token NUM PLUS TIMES
%start EXPR
%%
EXPR: EXPR PLUS EXPR { $$ = $1 + $3; printf("EXPR -> EXPR + EXPR = %d\n", $$);  }
    | EXPR TIMES EXPR { $$ = $1 * $3; printf("EXPR -> EXPR * EXPR = %d\n", $$); }
    | NUM { printf("EXPR -> NUM = %d\n", $$); }
%%

int main() {
    yyparse();
    printf("Parsing finished...\n");
    return 0;
}

void yyerror(char *s) {
    fprintf(stderr, "Error: %s\n", s);
}