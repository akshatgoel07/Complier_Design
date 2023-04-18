%{
    #include<stdio.h>
    #include<stdbool.h>
    #include<string.h>
    int curr=0;
%}
%%
[a-zA-Z]+ {if(yyleng>curr) {curr=yyleng;}}
\n {
    printf("Length of the longest word: %d\n", curr);
    curr = 0;
}
. ;
%%
int main()
{
    yylex();
    return 0;
}