/*

##############################################################################
#  Copyright (C) 2002-2005 Amba Kulkarni (amba at iiit dot net)
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation; either
#  version 2 of the License, or (at your option) any later
#  version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

##############################################################################


*/
SPC [^a-zA-Z0-9]
%%
^i\.e\.$	{printf("ABBRThatis");}
^i\.e\.{SPC}	{printf("ABBRThatis%c",yytext[4]);}
{SPC}i\.e\.{SPC}	{printf("%cABBRThatis%c",yytext[0],yytext[5]);}
^e\.g\.$	{printf("eABBRDOTABBRgABBRDOTABBR");}
^e\.g\.{SPC}	{printf("eABBRDOTABBRgABBRDOTABBR%c",yytext[4]);}
{SPC}e\.g\.{SPC}	{printf("%ceABBRDOTABBRgABBRDOTABBR%c",yytext[0],yytext[5]);}
{SPC}U\.S\.A\.{SPC}	{printf("%cUABBRDOTABBRSABBRDOTABBRAABBRDOTABBR%c",yytext[0],yytext[7]);}
{SPC}U\.K\.{SPC}	{printf("%cUABBRDOTABBRKABBRDOTABBR%c",yytext[0],yytext[5]);}
{SPC}A\.D\.{SPC}	{printf("%cAABBRDOTABBRDABBRDOTABBR%c",yytext[0],yytext[5]);}
{SPC}a\.k\.a\.{SPC} 	{printf("%caABBRDOTABBRkABBRDOTABBRaABBRDOTABBR%c",yytext[0],yytext[7]);}
%%
main()
{
 yylex();
}
