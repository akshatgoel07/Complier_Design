%{
#include<stdio.h>
#include<stdbool.h>
%}
%%
[a-zA-z _][0-9a-zA-Z _]* {printf(yytext);}
.* {printf("invalid identifier");}
%%
int main(){
    yylex();
    yywrap();
    return 0;
}
