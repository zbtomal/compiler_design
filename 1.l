%{
    #include <stdio.h>
%}

%%
if        { printf("%s is a keyword\n", yytext); }
else      { printf("%s is a keyword\n", yytext); }
printf    { printf("%s is a keyword\n", yytext); }
[0-9]+    { printf("%s is a number\n", yytext); }
[a-zA-Z]+ { printf("%s is an identifier\n", yytext); }
.|\n      { ECHO; }
%%

int main()
{
    printf("\nEnter the string: ");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}