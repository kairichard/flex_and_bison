%{
    #include "calc.tab.h"
%}

%%
"+"     { return PLUS; }
"-"     { return MINUS; }
"*"     { return MULTI; }
"/"     { return DIV; }
"|"     { return ABS; }
"("     { return OP; }
")"     { return CP; }
[0-9]+  { yylval = atoi(yytext); return NUMBER; }
\n      { return EOL; }
[ \t]   { /*IGNORE*/ }
"//"    { /*IGNORE*/ }
.       { printf("UNKOWN CHAR %s\n",yytext); }
%%
                                       