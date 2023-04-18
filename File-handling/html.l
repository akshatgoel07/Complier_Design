%{
#include <stdio.h>
extern FILE *yyin, *yyout;
%}
%%
"<"[^>]*> {fprintf(yyout,"Found tag: %s\n", yytext);}
. ;
%%
int main() {
    yyin = fopen("in.txt","r");
    yyout = fopen("out.txt","w");
    yylex();
    return 0;
}
