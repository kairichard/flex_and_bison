%{
int chars = 0;
int words = 0;
int lines = 0;
%}

%%

[a-zA-Z]+   { words++; chars += strlen(yytext); }
\n          { chars++; lines++; }
.           { chars++; }

%%

main(int argc, char **argv){
    yylex();
    printf(" Lines:%8d words:%8d chars:%8d\n",lines,words,chars);
}