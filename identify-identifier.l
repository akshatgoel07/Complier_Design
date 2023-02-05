%{
#include<stdio.h>
%}

%%
^[a-z A-Z _]+[a-z A-Z 0-9 _]* printf("Valid identifer"); 
^[^a-z A-Z _] printf("Invalid Identifier");

%%
int yywrap(){ return 1; }
int main(){
    yylex();
    return 0;
}


