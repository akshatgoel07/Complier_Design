%{
    #include<stdio.h>
    int num,i;
    int flag =0;
%}
%%
[0-9]* {num = atoi(yytext); 
if (num==1 || num==0) {printf("Not prime");}
else if (num==2) {printf("Prime");}
else{
    for(i=0; i<num/2; i++){
        if(num%i ==0){
            flag =1;
        }
    }
    if(flag==0) printf("Not prime");
    if(flag==1) printf("Prime");
}
. {;}
\n {;}
}
%%
int main(){
    yylex();
    return 0;
}