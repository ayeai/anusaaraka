%{
char str[1000],str1[1000],str2[1000],*s1,*s2;
int len,len1,len2;
FILE *fp;
%}

%%
[A-Za-z_]*\([A-Za-z0-9]*[-][0-9]*[,][ ][A-Za-z0-9]*[-][0-9]*\)\n      {  
                                                              len=strcspn(yytext,"(");
                                                              strncpy(str,yytext,len);
                                                              str[len]='\0';
 
                                                              s1=strchr(yytext,'-')+1;
                                                              len1=strcspn(s1,",");
                                                              strncpy(str1,s1,len1);
                                                              str1[len1]='\0';
                                                              
                                                              s2=strchr(s1,'-')+1;
                                                              len2=strcspn(s2,")");
                                                              strncpy(str2,s2,len2);
                                                              str2[len2]='\0';
                                                              fprintf(fp,"(rel_name-sids %s L%s L%s)\n", str,str1,str2);

                                                          }

[ ]                             { }
^[\n]				{  fprintf(fp,"\n;~~~~~~~~~~\n"); 
				}
%%

main(int argc, char* argv[])
{
fp=fopen(argv[1],"a");
yylex();
fclose(fp);
}

