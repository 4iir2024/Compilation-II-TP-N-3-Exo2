%{
#include<stdio.h>
int cnt=0;
%}
chiffre [0-9]
lettre [a-zA-Z]
type("int"|"float"|"char"|"string"|"double")
typef {type}|"void"
variable {lettre}({lettre}|{chiffre}|"_")*
param ({type}" "{variable})(","{type}" "{variable})*
%%
{typef}" "{variable}"("{param}?")" {cnt++; printf("la chaine %s est une signature d'une fonction \n",yytext);}
.+ {}
%%
int main()
{
printf("Exo 2 TP3 \n");
yylex();
printf("le nombre de fonction ans le programme : %d \n", cnt);
return 0;
}


