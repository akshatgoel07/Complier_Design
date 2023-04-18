%{
#include<stdio.h>
#include<string.h>
extern FILE *yyin, *yyout;
int count = 0;
%}
%%
[aeiouAEIOU][aeiouAEIOU] {count++;}
. ;
%%

int main(){
    yyin = fopen("in.txt", "r");
    yyout = fopen("out.txt", "w");
    yylex();
    fprintf(yyout,"Frequency =  %d\n", count);
    return 0;
}