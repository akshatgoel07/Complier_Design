%{
    #include<stdio.h>
    #include<stdbool.h>
%}
%%
[0-9]* {
    int a = atoi(yytext);
    int i=0;
    bool flag = false;
    for(i=2;i<=a/2;i++)
    {
        if (a%i==0){flag=1;break;}
    }
    if (flag)printf("Composite\n");
    else printf("Prime or 1\n");
}
. {;}
\n {;}
%%

int main()
{
    yylex();
    return 1;
}
int yywrap()
{
    return 1;
}