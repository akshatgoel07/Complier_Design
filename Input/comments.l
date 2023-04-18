%{
#include <stdio.h>
int comment_count = 0;
%}

%%
"/*".*"*/" { comment_count++; }
"//".*     { comment_count++; }
.;
%%

int main()
{
    yylex();
    printf("Number of comments: %d\n", comment_count);
    return 0;
}
