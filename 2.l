%{
    #include <stdio.h>
%}

%%
[A-Z]+   { printf("%s\n", yytext); }
.        { /* ignore other characters */ }
%%

int main()
{
    printf("Enter the input string:\n");
    yylex();
    
}

int yywrap()
{
    return 1;
}