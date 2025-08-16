%{
    #include <stdio.h>
    int flag=0;
%}

%%
and	{ flag=1; }
or	{ flag=1; }
but	{ flag=1; }
because	{ flag=1; }
if	{ flag=1; }
then	{ flag=1; }
nevertheless	{ flag=1; }
.	{ /* ignore other characters */ }
\n	{ /* ignore newlines */ }
%%

int main() {
    printf("Enter the sentence : \n");
    yylex();
    if(flag==0) {
        printf("simple sentence\n");
    } else {
        printf("compound sentence\n");
    }
    return 0;
}

int yywrap() {
    return 1;
}