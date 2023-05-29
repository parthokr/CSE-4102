%{
    #include <stdio.h>
    int yylex();
    void yyerror(char *s);
%}

%token NUM PLUS TIMES
%start CAL
%%
CAL: CAL EXP { printf("Res=%d\n", $2); }
    |
    ;
EXP: EXP PLUS TERM { $$ = $1 + $3; }
    | TERM
    ;
TERM: TERM TIMES NUM { $$ = $1 * $3;}
    | NUM
    ;
%%

int main() {
    yyparse();
    printf("Parsing finished...\n");
    return 0;
}

void yyerror(char *s) {
    fprintf(stderr, "Error: %s\n", s);
}