%{
#include <string.h>
%}

NUM [0-9]+\.?[0-9]*
VARS [a-z]+[0-9]*

INICIO "ket_inicio"
FIM "ket_fim"

IF "if"
ELSE "else"
WHILE "while"

PRINTF "ketoutf<<"
PRINTI "ketouti<<"
PRINTS "ketouts<<"

SCANFLOAT "ketinf>>"
SCANINT "ketini>>"
SCANSTRING "ketins>>"

FLOAT "float"
INT "int"
STRING "string"
COMENT "#"
TEXTO ["][^"]*["]
	

%%
{COMENT}.* {;}
{INICIO} {return INICIO;}
{FIM} {return FIM;}


{IF} {return IF;}
{ELSE} {return ELSE;}
{WHILE} {return WHILE;}


{PRINTF} {return PRINTF;}
{PRINTI} {return PRINTI;}
{PRINTS} {return PRINTS;}
{SCANFLOAT} {return SCANFLOAT;}
{SCANINT} {return SCANINT;}
{SCANSTRING} {return SCANSTRING;}

{FLOAT} {return FLOAT;}
{INT} {return INT;}
{STRING} {return STRING;}

{VARS} {
	strcpy(yylval.str,yytext);
	return VARS;
}

{TEXTO} {
	char aux[50];
	strncpy ( aux, &yytext[1], strlen(yytext)-2);
	aux[strlen(yytext)-2]='\0';
	strcpy (yylval.str, aux);

	return TEXTO;  
}

{NUM} {
	yylval.flo = atof(yytext);
	return NUM;
}

[\ \n\t ;]*   {;}

[-+()=/*^{}$] {return *yytext;}

">" {yylval.fn = 1; return CMP; }
"<" {yylval.fn = 2; return CMP; }
"!=" {yylval.fn = 3; return CMP; }
"==" {yylval.fn = 4; return CMP; }
">=" {yylval.fn = 5; return CMP; }
"<=" {yylval.fn = 6; return CMP; }

. { /* ignore */}
%%