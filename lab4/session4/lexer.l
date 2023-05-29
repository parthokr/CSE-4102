%option noyywrap
%{
    #include "parser.tab.h"
%}

%%
[0-9]+ { printf("%s->NUM\n", yytext); yylval=atoi(yytext); return NUM; }
"+"   { printf("%s->PLUS\n", yytext); return PLUS; }
"*"  { printf("%s->TIMES\n", yytext); return TIMES; }
. {}
%%