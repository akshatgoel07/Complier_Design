%{
#include<stdio.h>
%}
%%
[+-=*%/]+ printf("Operator");
[{}(),;]+ printf("Separator");
bool|int|float printf("Keyword");
[a-zA-Z]+ printf("Identifier");
%%
int yywrap(){
    return 1;
}
int main(){
    yylex();
    return 0;
}