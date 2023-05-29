%{
    #include <stdio.h>
    int yylex();
    void yyerror(char *s);
%}

%token DIM ID AS INT
%start CODE
%%
CODE: CODE STMT {printf("CODE -> CODE STMT\n");}
    | STMT {printf("CODE -> STMT\n");};
STMT: DIM ID AS INT {printf("STMT -> DIM ID AS INT\n");}
%%

int main() {
    yyparse();
    printf("Parsing finished...\n");
    return 0;
}

void yyerror(char *s) {
    fprintf(stderr, "Error: %s\n", s);
}