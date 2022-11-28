package com.mycompany.ejercicio02compi.analizadores;

import java_cup.runtime.Symbol;
%%

/*segunda seccion: configuracion*/
%class Lexer
%unicode 
%line
%column
%int
%public
%cup

ENTERO=[0-9]+
DECIMAL=[0-9]+[.][0-9]+
DEF=[D|d][e][f]
PIE=[P][i][e]
BARRAS=[B][a][r][r][a][s]
TITULO=[t][i][t][u][l][o]
EJEX=[e][j][e][x]
EJEY=[e][j][e][y]
ETIQUETAS=[e][t][i][q][u][e][t][a][s]
VALORES=[v][a][l][o][r][e][s]
UNIR=[u][n][i][r]
TIPO=[t][i][p][o]
TOTAL=[t][o][t][a][l]
EXTRA=[e][x][t][r][a]
EJECUTAR=[E][j][e][c][u][t][a][r]
PORCENTAJE=[P][o][r][c][e][n][t][a][j][e]
CANTIDAD=[C][a][n][t][i][d][a][d]
SUMA="+"
RESTA="-"
MULTIPLICACION="*"
DIVISION="/"
PARENTESIS_A=[\(]
PARENTESIS_C=[\)]
LLAVE_A=[\{]
LLAVE_C=[\}]
CORCHETE_A=[\[]
CORCHETE_C=[\]]
COMA=","
DOS_PUNTOS=":"
PUNTO_COMA=";"
COMENTARIO=[#]([a-z]|[A-Z]|[0-9]|[" "]|[á|é|í|ó|ú|ñ]|[Á|É|Í|Ó|Ú|Ñ])*[\n]*
CADENA=[\"][[a-z]|[A-Z]|[0-9]|[" "]]+[\"]


%init{
	yyline=1;
	yycolumn=1;
%init}
%{

%}

%%
/*Tercera Seccion: reglas lexicas*/
{ENTERO}					{return new Symbol(sym.ENTERO,yyline,yycolumn,yytext());}
{DECIMAL}					{return new Symbol(sym.DECIMAL,yyline,yycolumn,yytext());}	
{DEF}						{return new Symbol(sym.DEF,yyline,yycolumn,yytext());}
{BARRAS}					{return new Symbol(sym.BARRAS,yyline,yycolumn,yytext());}
{PIE}						{return new Symbol(sym.PIE,yyline,yycolumn,yytext());}
{TITULO}					{return new Symbol(sym.TITULO,yyline,yycolumn,yytext());}	
{EJEX}						{return new Symbol(sym.EJEX,yyline,yycolumn,yytext());}
{EJEY}						{return new Symbol(sym.EJEY,yyline,yycolumn,yytext());}
{ETIQUETAS}					{return new Symbol(sym.ETIQUETAS,yyline,yycolumn,yytext());}
{VALORES}					{return new Symbol(sym.VALORES,yyline,yycolumn,yytext());}
{UNIR}						{return new Symbol(sym.UNIR,yyline,yycolumn,yytext());}
{TIPO}						{return new Symbol(sym.TIPO,yyline,yycolumn,yytext());}
{TOTAL}					{return new Symbol(sym.TOTAL,yyline,yycolumn,yytext());}
{EXTRA}					{return new Symbol(sym.EXTRA,yyline,yycolumn,yytext());}
{EJECUTAR}					{return new Symbol(sym.EJECUTAR,yyline,yycolumn,yytext());}
{SUMA}						{return new Symbol(sym.SUMA,yyline,yycolumn,yytext());}
{RESTA}					{return new Symbol(sym.RESTA,yyline,yycolumn,yytext());}
{DIVISION}					{return new Symbol(sym.DIVISION,yyline,yycolumn,yytext());}
{MULTIPLICACION}				{return new Symbol(sym.MULTIPLICACION,yyline,yycolumn,yytext());}
{PARENTESIS_A}					{return new Symbol(sym.PARENTESIS_A,yyline,yycolumn,yytext());}
{PARENTESIS_C}					{return new Symbol(sym.PARENTESIS_C,yyline,yycolumn,yytext());}
{LLAVE_A}					{return new Symbol(sym.LLAVE_A,yyline,yycolumn,yytext());}
{LLAVE_C}					{return new Symbol(sym.LLAVE_C,yyline,yycolumn,yytext());}
{CORCHETE_A}					{return new Symbol(sym.CORCHETE_A,yyline,yycolumn,yytext());}
{CORCHETE_C}					{return new Symbol(sym.CORCHETE_C,yyline,yycolumn,yytext());}
{COMA}						{return new Symbol(sym.COMA,yyline,yycolumn,yytext());}
{DOS_PUNTOS}					{return new Symbol(sym.DOS_PUNTOS,yyline,yycolumn,yytext());}	
{PUNTO_COMA}					{return new Symbol(sym.PUNTO_COMA,yyline,yycolumn,yytext());}
{COMENTARIO}					{return new Symbol(sym.COMENTARIO,yyline,yycolumn,yytext());}
{CADENA}					{return new Symbol(sym.CADENA,yyline,yycolumn,yytext());} 
{PORCENTAJE}					{return new Symbol(sym.PORCENTAJE,yyline,yycolumn,yytext());}
{CANTIDAD}					{return new Symbol(sym.CANTIDAD,yyline,yycolumn,yytext());}
[\t]						{}
[\r]						{}
[\n]						{}
[^] 						{}
