%{
    #include <stdio.h>
    int yylex();
    void yyerror(char *s);
%}

%token INT_TYPE ID SEMICOLON
%start S
%%
S: INT_TYPE ID SEMICOLON
%%

int main() {
    yyparse();
    printf("Parsing finished...\n");
    return 0;
}

void yyerror(char *s) {
    fprintf(stderr, "Error: %s\n", s);
}