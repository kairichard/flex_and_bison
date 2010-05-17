%{
    enum yytokentype {
        NUMBER  = 258,
        PLUS    = 259,
        MINUS   = 260,
        MULTI   = 261,
        DIV     = 262,
        ABS     = 263,
        EOL     = 264
    };
    int yylval;
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
.       { printf("UNKOWN CHAR %s",yytext); }
%%
                                       
main(int argc, char **argv){
    int token;
    while(token = yylex()){
        printf("%d",token);
        if(token == NUMBER){ 
            printf("= %d\n",yylval);
        }else{
            printf("\n");
        }        
    }
}