%{
#include<stdio.h>
extern FILE *yyin, *yyout;
int num;
%}
%%
[0-9]+ { 
    num = atoi(yytext);
    for(int i =0; i<=num/2; i++){
        if(i*i == num) {
            fprintf(yyout,"No. is perfect square"); 
            break;
        }
        else if(i == num/2){
            fprintf(yyout,"No. is not perfect square");}
        }
}

%%
int main(){
    yyin = fopen("in.txt","r");
    yyout = fopen("out.txt","w");
    yylex();
    return 0;
}