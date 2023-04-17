%{
#include<stdio.h>
#include<string.h>
int wordCount =0;
%}

%%
[a-zA-Z]+ {wordCount++;}
%%

int main(){
    yylex();
    printf("Number of Words %d\n", wordCount);
    return 0;
}