%{
#include<stdio.h>
int lc=0, sc=0, tc=0, wc=0;
extern  FILE *yyin, *yyout;
%}

%%
[\n] {lc++;}
[" "] {sc++;}
[\t] {tc++;}
[a-zA-Z0-9]+ {wc++;}
%%

int yywrap()
{
return 1;
}

int main()
{
yyin=fopen("countfile.txt","r");
yyout=fopen("cofile.txt","w");
yylex();
fprintf(yyout,"Number of lines : %d\n",lc);
fprintf(yyout,"Number of spaces : %d\n",sc);
fprintf(yyout,"Number of tabs : %d\n",tc);
fprintf(yyout,"Number of words : %d\n",wc);

return 0;
}
