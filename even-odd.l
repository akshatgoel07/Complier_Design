%{
    #include<stdio.h>
%}  
%%
[0-9]* {
        int a = atoi(yytext);
        if (a%2==0) printf("Even");
        else printf("Odd");
        printf("\n");
        }
.  ;
\n ;
%%
void main()
{
    yylex();
}
