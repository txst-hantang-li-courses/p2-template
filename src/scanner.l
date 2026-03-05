/* definitions */

%{
#include <stdio.h>
#include <stdlib.h>
#include "../obj/y.tab.h"

%}

integer         0|[1-9][0-9]*

%%
  /* yylval is a union defined in parser.y */
  /* INTCONST, and other defined, are generated automatically from parser.y */
  /* If you don't use a return value in parser.py, it won't be defined */
{integer}       { yylval.value = atoi(yytext); return INTCONST; }
.               { }

%%

