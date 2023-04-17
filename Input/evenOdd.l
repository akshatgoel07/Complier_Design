%{
    #include<stdio.h>
    int num=0;
%}
%%
[0-9]* {num = atoi(yytext); if(num%2==0)printf("Even");
else printf("Odd");}
%%
int main(){
    yylex();
    return 0;
}