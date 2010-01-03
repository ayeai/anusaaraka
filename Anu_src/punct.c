#include<stdio.h>
#include<stdlib.h>
#include<string.h>

main(int argc,char *argv[])
{
FILE *fp,*fp1;
char str_tmp[1000],str2[1000],str4[1000],str_new[1000],str5[1000];
char *str,*p;
int str_len=0,len1=0,len2=0,len3=0,len4=0,word_count=1,str_len1=0,i=0;

 fp=fopen(argv[1],"r");
 fp1=fopen(argv[2],"w");
 while(fgets(str_tmp,1000,fp)!=NULL) // input-format  2.10.4 \t left_punct \t coming \t right_punct
                                     // Eg:-          2.10.4                  coming    ?</s>
                                     // Eg:-          1.1.2     <TITLE>       Test      .</TITLE>
  {
    
    strcpy(str_new,"\0");
    
    str_len=strlen(str_tmp);
    str=str_tmp;    
    
    len1=strcspn(str,"\t");
    str=str+len1+1;
 
    len2=strcspn(str,"\t");
    strncpy(str2,str,len2);
    str2[len2]='\0';
    p=str2;
    str_len1=0;i=0;
   
    while(*p!='\0')
    {
          if((*p=='\"'))
          {str_new[i]='\\';i++;str_new[i]='\"';i++;}
          if((*p=='!')|(*p=='.')|(*p=='?')|(*p=='\'')|(*p==',')|(*p==';')|(*p==')')|(*p=='('))
          {str_new[i]=*p;i++;}
          *p='\0';p=p+1;
    }
    str_new[i]='\0'; 
    if(strcmp(str_new,"\0")!=0)
    fprintf(fp1,"(id-left_punctuation    %d  \"%s\")\n",word_count,str_new);
    else
    fprintf(fp1,"(id-left_punctuation    %d  \"NONE\")\n",word_count);
     
    str=str+len2+1;*p='\0';str_len1=0;strcpy(str_new,"\0");
     
    len3=strcspn(str,"\t");
    str=str+len3+1;
    
    len4=strcspn(str,"\t");
    strncpy(str4,str,len4);
    strncpy(str5,str,len4);
    str4[len4]='\0';
    str5[len4]='\0';
    p=str4;
    str_len1=0;i=0;
    while(*p!='\0')
    {
          if((*p=='\"'))
          {str_new[i]='\\';i++;str_new[i]='\"';i++;}
          if((*p=='!')|(*p=='.')|(*p=='?')|(*p=='\'')|(*p==',')|(*p==';')|(*p==')')|(*p=='('))          
          {str_new[i]=*p;i++;}
          *p='\0';p=p+1;
    }
   str_new[i]='\0';
    if(strcmp(str_new,"\0")!=0)
    fprintf(fp1,"(id-right_punctuation   %d  \"%s\")\n",word_count,str_new);
    else
    fprintf(fp1,"(id-right_punctuation   %d  \"NONE\")\n",word_count);

    *p='\0';str_len1=0;
    if((strstr(str5,"</s>") != NULL)|(strstr(str5,"</TITLE>") != NULL))
    {fprintf(fp1,";~~~~~~~~~~\n"); word_count=1;}
    else
    word_count++;
    
    str='\0';
  }
 fclose(fp);fclose(fp1);
}
