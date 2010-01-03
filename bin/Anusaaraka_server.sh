 #/bin/sh
 source ~/.bashrc

 export LC_ALL=
 export LC_ALL=en_US.UTF-8

 if ! [ -d $HOME_anu_tmp ] ; then
     echo $HOME_anu_tmp " directory does not exist "
     echo "Creating "$HOME_anu_tmp 
    mkdir $HOME_anu_tmp
 fi

 MYPATH1=`pwd`
 MYPATH=$HOME_anu_tmp
 cp $1 $MYPATH/. 

 if ! [ -d $MYPATH/tmp ] ; then
    echo "tmp  does not exist "
    echo " Creating tmp "
    mkdir $MYPATH/tmp
 fi

 if  [ -e $MYPATH/tmp/$1_tmp ] ; then
    rm -rf $MYPATH/tmp/$1_tmp
 fi

 mkdir $MYPATH/tmp/$1_tmp

 echo "Saving Format info ..."

 $HOME_anu_test/Anu/stdenglish.sh $1 $MYPATH
 $HOME_anu_test/Anu/pre_process.sh $1 $MYPATH
 $HOME_anu_test/Anu/save_format.sh $1 $MYPATH

 echo "Saving word information"
 cd $HOME_anu_test/Anu_src
 ./word.out < $MYPATH/tmp/tmp_save_format/$1.fmt_split $MYPATH/tmp $1
 ./rm_tags.out < $MYPATH/tmp/$1_tmp/new_text.txt > $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt
 ./punct.out $MYPATH/tmp/tmp_save_format/$1.fmt_split $MYPATH/tmp/$1_tmp/punctuation.txt

  echo "Saving morph information"
  cd $HOME_anu_test/apertium/
  apertium-destxt $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt | lt-proc -a en.morf.bin | apertium-retxt > $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt.morph
  perl morph.pl $MYPATH $1 < $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt.morph

  echo "Calling POS Tagger and Chunker (GROK)"
  cd $MYPATH/tmp/$1_tmp/
  chunker.sh $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt

  echo "Saving category information"
  cd $HOME_anu_test/Anu_src/
 ./cat.out $HOME_anu_test $MYPATH/tmp  $1 < $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt.grok_pos_orig

  echo "Saving chunker information"
  cd $HOME_anu_test/Anu_src/
  ./chunker.out  $MYPATH/tmp $1 < $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt.chunker

  echo "Calling Link Parser"
  cd $HOME_anu_test/LINK/link-grammar-4.5.7/link-grammar
 ./link-parser $HOME_anu_test/LINK/link-grammar-4.5.7/data/en $MYPATH/tmp $1 $2 <$MYPATH/tmp/$1_tmp/one_sentence_per_line.txt 
  #if $2 equals stanford then runs stanford parser
  if [ $2 ]; then
  if [ $2 ==  stanford ] ; then
  echo "Calling Stanford parser"
  cd $HOME_anu_test/stanford-parser/stanford-parser-2008-10-26/
  sh ./run_stanford-parser.sh $1 $MYPATH
  cd $MYPATH/tmp/$1_tmp
  $HOME_anu_test/Anu_src/split_file.out sd-relation.txt dir_names.txt sd-relations_tmp.dat
  $HOME_anu_test/Anu_src/split_file.out sd_word.txt dir_names.txt sd_word.dat
  fi
  fi

  cd $MYPATH/tmp/$1_tmp
  sed 's/&/\&amp;/g' one_sentence_per_line.txt|sed -e s/\'/\\\'/g |sed 's/\"/\&quot;/g' |sed  "s/^/(Eng_sen \"/" |sed -n '1h;2,$H;${g;s/\n/\")\n;~~~~~~~~~~\n/g;p}'|sed -n '1h;2,$H;${g;s/$/\")\n;~~~~~~~~~~\n/g;p}' > one_sentence_per_line_tmp.txt
  $HOME_anu_test/Anu_src/split_file.out one_sentence_per_line_tmp.txt dir_names.txt English_sentence.dat
  $HOME_anu_test/Anu_src/split_file.out link_relation_info.txt dir_names.txt link_relation_info_tmp.dat
  $HOME_anu_test/Anu_src/split_file.out link_name_expand.txt dir_names.txt link_name_expand.dat
  $HOME_anu_test/Anu_src/split_file.out linkid_word.txt dir_names.txt linkid_word_tmp.dat
  $HOME_anu_test/Anu_src/split_file.out link_word_cat.txt dir_names.txt linkid_word_cat.dat
  $HOME_anu_test/Anu_src/split_file.out link_numeric_word.txt dir_names.txt link_numeric_word_tmp.dat
  $HOME_anu_test/Anu_src/split_file.out linkage_count.txt dir_names.txt linkage_count
  $HOME_anu_test/Anu_src/split_file.out punctuation.txt dir_names.txt punctuation.dat

  echo 'matching compounds......'
  perl $HOME_anu_test/Anu_src/Compound-dict.pl $HOME_anu_test/Anu_databases/compound.gdbm  one_sentence_per_line.txt > compound_phrase.txt
  perl $HOME_anu_test/Anu_src/Match-sen.pl $HOME_anu_test/Anu_databases/Complete_sentence.gdbm  one_sentence_per_line.txt > sen_phrase.txt

  $HOME_anu_test/Anu_src/split_file.out sen_phrase.txt dir_names.txt sen_phrase.dat
  $HOME_anu_test/Anu_src/split_file.out compound_phrase.txt dir_names.txt compound_phrase.dat
 
 cd $HOME_anu_test/bin
 while read line
 do
    echo "Hindi meanings for " $line
   ./run_sentence.sh $1 $line 1 $MYPATH
    echo ""
 done < $MYPATH/tmp/$1_tmp/dir_names.txt
 
 cd $MYPATH/tmp/$1_tmp/
 echo "(defglobal ?*path* = $HOME_anu_test)" > path_for_html.clp
 echo "(defglobal ?*mypath* = $MYPATH)" >> path_for_html.clp
 echo "(defglobal ?*filename* = $1)" >> path_for_html.clp

  echo "Calling Interface related programs"
  sh $HOME_anu_test/shell_scripts/ClipsToAnu_browser_intfc.sh $1 $MYPATH
  echo "<html><body>" > $MYPATH/tmp/$1_tmp/$1.txt.html
  cat $MYPATH/$1 >>$MYPATH/tmp/$1_tmp/$1.txt.html
  echo "</body></html>" >> $MYPATH/tmp/$1_tmp/$1.txt.html
  
 cp $1.html $1_trnsltn.html $1.txt.html $MYPATH/tmp/.
 
 rm -rf $MYPATH/tmp/$1_tmp/*

 cp $MYPATH/$1 $MYPATH/tmp/$1_tmp/
 sh $HOME_anu_test/shell_scripts/frame.sh $1 $MYPATH/tmp/$1_tmp/
 
 cd $HOME_anu_test/Browser
 cp -r help $MYPATH/tmp/$1_tmp/
 cd src
 cp *.html *.js *.css $MYPATH/tmp/$1_tmp/

 cp $MYPATH/tmp/$1.html $MYPATH/tmp/$1_trnsltn.html $MYPATH/tmp/$1.txt.html $MYPATH/tmp/$1_tmp/.
