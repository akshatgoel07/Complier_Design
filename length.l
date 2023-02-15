%{
    #include<stdio.h>
    int length =0;
    int maxxy =-1;
%}
%%
.* {length = yyleng;}
\n {if(maxxy<length)maxxy=length;}

%%

void main()
{
    yylex();
    printf("length of the longest string in data stream %d \n",maxxy);
}
int yywrap()
{
    return 1;
}