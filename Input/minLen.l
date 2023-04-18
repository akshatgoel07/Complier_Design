%{
#include<stdio.h>
int curr = 100;
%}
%%
[a-zA-Z]+ {if(yyleng<curr) curr=yyleng;}
\n {
    printf("lenght of smalles word is, %d\n ",curr);
    curr = 100;
}
. ;
%%
int main(){
    yylex();
    return 0;
}