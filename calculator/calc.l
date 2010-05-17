%{

%}

%%
"+" { printf("PLUS\n"); }
"-" { printf("MINUS\n"); }
"*" { printf("TIMES\n"); }
"/" { printf("DIVISION\n"); }
"|" { printf("ABS\n"); }
[0-9]+ { printf("NUMBER %s\n",yytext); }
\n  { printf("NEWLINE"); }
[ \t]   { /*IGNORE*/ }
.       { printf("UNKOWN CHAR %s",yytext); }
%%
                                       
main(int argc, char **argv){
    yylex();
}