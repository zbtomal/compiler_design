%{
    #include <stdio.h>
    int v=0, c=0;
%}

%%
[aieouAIEOU]        { v++; }
[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z] { c++; }
.                   { /* ignore other characters */ }
%%

int main()
{
    printf("Enter the input string: \n");
    yylex();
    printf("No of vowels are %d\n", v);
    printf("No of consonants are %d\n", c);
    return 0;
}

int yywrap()
{
    return 1;
}