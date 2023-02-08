%{
    int line_count = 0;
    int space_count = 0;
    int special_count = 0;
    int other_char = 0;
%}

%%
\n     { line_count++; }
\s     { space_count++; } 
[a-zA-Z0-9] {other_char++;}
[!@#$%^&*()+=\|{}':;<>,.?/~`-]+ { special_count++; }
%%

int main(int argc, char *argv[]) {
    yylex();
    printf("Number of lines: %d\n", line_count);
    printf("Number of spaces: %d\n", space_count);
    printf("Number of special characters: %d\n", special_count);
        printf("Number of other characters: %d\n", other_char);
    return 0;
}
int yywrap() {
    return 1;
}