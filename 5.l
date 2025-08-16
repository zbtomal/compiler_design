%{
#include <stdio.h>

int lines = 0, words = 0, spaces = 0, chars = 0;
%}

%%
\n              { lines++; chars++; }
[ \t]           { spaces++; chars++; }
[a-zA-Z0-9]+    { words++; chars += yyleng; }
.               { chars++; }
%%

int main() {
    printf("Enter a statement (press Ctrl+D to end):\n");
    yylex();
    printf("\nTotal lines: %d\n", lines);
    printf("Total words: %d\n", words);
    printf("Total spaces: %d\n", spaces);
    printf("Total characters: %d\n", chars);
    return 0;
}

int yywrap() {
    return 1;
}