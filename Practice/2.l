/*Lex program to identify the capital words from an input string*/

%{
    #include<stdio.h>
%}

%%
[A-Z]+[ \t\n] {printf("%s\n", yytext);}
. ;
%%

int main() {
    printf("Enter the string: ");
    yylex();
}

int yywrap() {
    return 1;
}