%{
    #include "calc.tab.h"
%}

%%
"+"     { return PLUS; }
"-"     { return MINUS; }
"*"     { return MULTI; }
"/"     { return DIV; }
"|"     { return ABS; }
[0-9]+  { yylval = atoi(yytext); return NUMBER; }
\n      { return EOL; }
[ \t]   { /*IGNORE*/ }
.       { printf("UNKOWN CHAR %s\n",yytext); }
%%
                                       