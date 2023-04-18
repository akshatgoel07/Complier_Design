%{
#include<stdio.h>
extern FILE *yyin, *yyout;
int num;
%}

%%
[0-9]+ {
    num = atoi(yytext);
    int i;
    for (i = 0; i <= num/2; i++) {
        if (i*i == num) {
            fprintf(yyout, "Number is a perfect square\n");
            break;
        }
    }
    if (i > num/2) {
        fprintf(yyout, "Number is not a perfect square\n");
    }
}

%%

int main(){
    yyin = fopen("in.txt","r");
    yyout = fopen("out.txt","w");
    yylex();
    return 0;
}
