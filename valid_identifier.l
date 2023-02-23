%{
#include<stdio.h>
int c=0;
%}

%%
[a-zA-Z_][a-zA-Z0-9_]* {c++; printf("\tvalid identifier=%s",yytext);}
.;     

%%
int yywrap() {};
int main()
{
yylex();
printf("total no. of valid identifier = %d\n",c);
}
