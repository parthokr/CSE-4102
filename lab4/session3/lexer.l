%option noyywrap
%{
    #include "parser.tab.h"
%}

%%
"for" { printf("%s->FOR\n", yytext); return FOR; }
"to" { printf("%s->TO\n", yytext); return TO; }
"next" { printf("%s->NEXT\n", yytext); return NEXT; }
"=" { printf("%s->ASSIGN\n", yytext); return ASSIGN; }
[0-9]+ { printf("%s->NUM\n", yytext); return NUM; }
[_a-zA-Z][a-zA-Z0-9]* { printf("%s->ID\n", yytext); return ID; }
. {}
%%