/* Compilar JFlex



/* Primera seccion: codigo usuario*/
package com.mycompany.ejercicio02compi.analizadores;

import java_cup.runtime.Symbol;
//import java.util.ArrayList;
%%

/* Segunda seccion: configuracion*/
%class Lexer
//%cupsym Symbol
%unicode
%standalone
%line
%column
%public
//%cup
//%int

/*
%init{ 
    yyline = 1; 
    yycolumn = 1; 
%init}
*/

palabra = [\"][[a-z]|[A-Z]|[0-9]|[" "]]+[\"] //Palabras: pueden ir en comentarios o titulos
decimal = [0-9]+[.][0-9]+
comentario = [#][[a-z]|[A-Z]|[0-9]|[" "]]*[\n]*
entero = [0-9]+
Barras = "Barras"
Pie = "Pie"
titulo = "titulo"
ejeX = "ejex"
ejeY = "ejey"
etiquetas = "etiquetas"
Ejecutar = "Ejecutar"
valores = "valores"
unir = "unir"
tipo = "tipo"
total = "total"
extra = "extra"
Cantidad = "Cantidad"
Porcentaje = "Porcentaje"

%%

/* Tercer seccion: reglas lexicas*/

//-Palabras reservadas

//1. Def
[D|d][e][f] {System.out.println(yytext()); } //{System.out.println(yytext());}
//2. decimal
{decimal} {System.out.println(yytext());} 
//2. entero
{entero} {System.out.println(yytext());} 
//2. Barras
{Barras} {System.out.println(yytext());}
//3. Pie
{Pie} {System.out.println(yytext());}
//4. titulo
{titulo} {System.out.println(yytext());} 
//5. ejeX
{ejeX} {System.out.println(yytext());}
//6. ejeY
{ejeY} {System.out.println(yytext());}
//7. etiqueta
{etiquetas} {System.out.println(yytext());}
//8. Ejecutar
{Ejecutar} {System.out.println(yytext());}
// token: parentesis izquierdo...
//9. valores
{valores} {System.out.println(yytext());}
//10. unir
{unir} {System.out.println(yytext());}
//11. tipo
{tipo} {System.out.println(yytext());}
//12. palabra //id
{palabra} {System.out.println(yytext());}
//13. total
{total} {System.out.println(yytext());}
//14. extra
{extra} {System.out.println(yytext());}
//15. Cantidad
{Cantidad} {System.out.println(yytext());}
//16. Porcentaje
{Porcentaje} {System.out.println(yytext());}
// token: llave derecha...

// -Tokens: simbolos del Lenguaje
["+"] {
            System.out.println(yytext());}
["-"] {
            System.out.println(yytext());}
["*"] {
            System.out.println(yytext());}
["/"] {
            System.out.println(yytext());}
["("] {
            System.out.println(yytext());}
[")"] {
            System.out.println(yytext());}
/*Otros caracteres */
[","] {
            System.out.println(yytext());}
[";"] {
            System.out.println(yytext());}
[":"] {
            System.out.println(yytext());}
//["\""] {
       //     System.out.println(yytext());}
["["] {
            System.out.println(yytext());}
["]"] {
            System.out.println(yytext());}
["{"] {System.out.println(yytext());}
["}"]


//-Tokens: compuestos por expresion regular

//1. comentario
{comentario} {System.out.println(yytext());}

[^]  {}//error       
