%option noyywrap
%{
    #include "parser.tab.h"
%}

%%
"dim" { printf("%s->DIM\n", yytext); return DIM; }
"as" { printf("%s->AS\n", yytext); return AS; }
"integer" { printf("%s->INT\n", yytext); return INT; }
[_a-zA-Z][a-zA-Z0-9]* { printf("%s->ID\n", yytext); return ID; }
. {}
%%