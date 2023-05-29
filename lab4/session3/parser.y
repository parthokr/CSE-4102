%{
    #include <stdio.h>
    int yylex();
    void yyerror(char *s);
%}

%token FOR TO NEXT NUM ID ASSIGN
%start CODE
%%
CODE: FOR_PRE CODE FOR_POST {printf("CODE -> FOR_PRE CODE FOR_POST\n");}
    | /* empty */ {printf("CODE -> epsilon\n");};
FOR_PRE: FOR ID ASSIGN NUM TO NUM {printf("FOR_PRE -> FOR ID ASSIGN NUM TO NUM\n");}
FOR_POST: NEXT ID {printf("FOR_POST -> NEXT ID\n");}
%%

int main() {
    yyparse();
    printf("Parsing finished...\n");
    return 0;
}

void yyerror(char *s) {
    fprintf(stderr, "Error: %s\n", s);
}