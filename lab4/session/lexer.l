%option noyywrap
%{
    #include "parser.tab.h"
%}

%%
"int" { printf("%s->INT_TYPE\n", yytext); return INT_TYPE; }
[_a-zA-Z][a-zA-Z0-9]* { printf("%s->ID\n", yytext); return ID; }
";" { printf("%s->SEMICOLON\n", yytext); return SEMICOLON; }
. {}
%%