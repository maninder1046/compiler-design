%{
int lines=0,words=0, spaces=0,total=0;
%}
%%
\n {lines++; words++;total++;}
[\t' '] {words++; total++;}
['' "] {spaces++;total++;}

%%

int yywrap(){return 1;}

int main(int argc, char *argv[])
{

extern FILE*yyin;

yyin = fopen("input.txt","r");
yylex();

printf(" Lines : %d Words : %d Spaces : %d Total : %d", lines, words, spaces, total);
}

