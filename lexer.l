/* Proyectito*/
%option noyywrap

%{
//#include <stdio.h>
int fila = 1;
int columna = 1;

%}



%%
	
	/* Palabras clave(reservadas)*/

"class"			{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"def"			{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"bool"			{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"True"			{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"False" 		{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"if" 			{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"elif"			{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"else" 			{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"while"		        { printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"with"	 		{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"for" 			{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"in" 			{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"is" 			{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"lambda"		{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"import"		{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"from"		        { printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"global"		{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"None" 			{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"as"			{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"assert" 		{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"case" 			{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"break" 		{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"continue"	 	{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"del"			{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"except"	 	{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"return"		{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"finally" 		{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"pass" 			{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"try"			{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"raise"			{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"yield" 		{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"print" 		{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }

"object"		{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
	
	
	/*Operadores lógicos(reservados)*/
"and"			{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"or" 			{ printf("<%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
"&"			{ printf("<tk_and,%d,%d> \n",fila,columna); columna += yyleng; }
"|" 			{ printf("<tk_or,%d,%d> \n",fila,columna); columna += yyleng; }
"not" 			{ printf("<not,%d,%d> \n",fila,columna); columna += yyleng; }

	
	/*Identificadores*/
[a-zA-Z_][a-zA-Z0-9_]*	{ printf("<id,%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
	
	
	/*Operadores aritméticos*/
"\+" 				{ printf("<tk_plus,%d,%d> \n", fila,columna); columna += yyleng; }
"-" 				{ printf("<tk_minus,%d,%d> \n", fila,columna); columna += yyleng; }
"*" 				{ printf("<tk_mult,%d,%d> \n", fila,columna); columna += yyleng; }
""				{ printf("<tk_div,%d,%d> \n",fila,columna); columna += yyleng; }
"%" 				{ printf("<tk_mod,%d,%d> \n",fila,columna); columna += yyleng; }
	
	/*Operadores de comparación*/
"=" 				{ printf("<tk_assig,%d,%d> \n", fila,columna); columna += yyleng; }
"=="			 	{ printf("<tk_eq,%d,%d> \n",fila,columna); columna += yyleng; }
"!=" 				{ printf("<tk_neq,%d,%d> \n", fila,columna); columna += yyleng; }
"<" 				{ printf("<tk_lt,%d,%d> \n", fila,columna); columna += yyleng; }
"<=" 				{ printf("<tk_lte,%d,%d> \n",fila,columna); columna += yyleng; }
">" 				{ printf("<tk_gt,%d,%d> \n", fila,columna); columna += yyleng; }
">=" 				{ printf("<tk_gte,%d,%d> \n", fila,columna); columna += yyleng; }
"->"				{ printf("<tk_lambd,%d,%d> \n", fila,columna); columna += yyleng; }
	

	/*Signos de puntuación*/
"\." 				{ printf("<tk_point,%d,%d> \n", fila,columna); columna += yyleng; }
"(" 				{  printf("<tk_lparen,%d,%d> \n", fila,columna); columna += yyleng; }
")" 				{  printf("<tk_rparen,%d,%d> \n", fila,columna); columna += yyleng; }
"{" 				{  printf("<tk_lbrace,%d,%d> \n", fila,columna); columna += yyleng; }
"}" 				{  printf("<tk_rbrace,%d,%d> \n", fila,columna); columna += yyleng; }
"[" 				{  printf("<tk_lbracket,%d,%d> \n", fila,columna); columna += yyleng; }
"]" 				{  printf("<tk_rbracket,%d,%d> \n", fila,columna); columna += yyleng; }
"," 				{  printf("< tk_comma,%d,%d> \n", fila,columna); columna += yyleng; }
":" 				{  printf("<tk_colon,%d,%d> \n", fila,columna); columna += yyleng; }
";" 				{  printf("<tk_semicolon,%d,%d> \n", fila,columna); columna += yyleng; }
	
	/*Literales*/
[0-9]+				{ printf("<tk_int,%s,%d,%d> \n", yytext,fila,columna); columna += yyleng; }
\"(?:[^\"\\]|\\.)*\"		{ printf("<tk_str,%s,%d,%d> \n",yytext, fila,columna); columna += yyleng; }
'(?:[^'\\]|\\.)'		{ printf("<tk_char,%d,%d> \n", fila,columna); columna += yyleng; }
	
	/*Comentarios*/
#[^\n]*  			{ columna++; } 

	/*saltos de linea y caracteres misteriosos*/
\n 	  { fila++; columna=1; }
[ \t] 	  { columna++;}
.	  { 
	    printf(">>>Error Lexico(linea:%d,posicion:%d)\n",fila, columna);
	    yyterminate();
	  }
	  
%%


int main(int argc, char **argv){
  if(argc > 1) {
   if(!(yyin = fopen(argv[1], "r"))) {
    perror(argv[1]);
    return (1);
    }
  }

  yylex();
  return 0;
}
