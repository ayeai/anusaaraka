 echo "#define ABS_ANU_PATH \"$HOME_anu_test/Anu_databases/\"" > $HOME_anu_test/CLIPS/gdbm_lookup.h

 cd $HOME_anu_test/Anu_data
 echo "Creating morph.dbm"
 ./create_dbm_mo.pl $HOME_anu_test/Anu_databases/morph.dbm < morph.txt
 echo "Creating paxasUwra.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/paxasUwra.gdbm < paxasUwra.txt
 echo "Creating verbal_adj.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/verbal_adj.gdbm < verbal_adj.txt
 echo "Creating verbal_adj_tams.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/verbal_adj_tams.gdbm < verbal_adj_tams.txt
 echo "Creating default_meaning_frm_oldwsd.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/default_meaning_frm_oldwsd.gdbm < default_meaning_frm_oldwsd.txt
 echo "Creating causative_verb_mng.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/causative_verb_mng.gdbm < causative_verb_mng.txt
 echo "Creating female_list.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/female_list.gdbm < female_list.txt
 echo "Creating male_list.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/male_list.gdbm < male_list.txt
 echo "Creating PropN.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/PropN.gdbm < PropN.txt 
 echo "Creating Phrv.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/Phrv.gdbm < Phrv.txt
 echo "Creating animate_list.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/animate_list.gdbm < animate_list.txt
 echo "Creating adverb_list.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/adverbs_list.gdbm < adverbs_list.txt
 echo "Creating kriyA_mUla-gender.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/kriyA_mUla-gender.gdbm < kriyA_mUla-gender.txt
 echo "Creating not_ne_verb_list.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/not_ne_verb_list.gdbm < not_ne_verb_list.txt
 echo "Creating hindi_cat.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/hindi_cat.gdbm < hindi_cat.txt
 echo "Creating uncountable.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/uncountable.gdbm < uncountable.dat
 echo "Creating inanimate.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/inanimate.gdbm < inanimate.txt
 echo "Creating animate.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/animate.gdbm < animate.txt
 echo "Creating plural_words.gdbm "
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/plural_words.gdbm < plural_words.txt
 echo "Creating AllTam.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/AllTam.gdbm < AllTam.txt
 echo "Creating compound.gdbm"
 cd compound-matching
 sh make-dict.sh
 mv compound.gdbm $HOME_anu_test/Anu_databases/.
 mv Complete_sentence.gdbm $HOME_anu_test/Anu_databases/.

 echo "Compiling c and flex programs"
 cd $HOME_anu_test/Anu_src

 gcc  -o file-wx_utf8.out file-wx_utf8.c 
 gcc -o word.out word.c 
 flex ir.lex
 gcc -o ir lex.yy.c -lfl 
 mv ir $HOME_anu_test/bin/
 gcc -o split_file.out   split_file.c 
 gcc -o cat.out cat.c 
 gcc -o chunker.out  chunker.c 
 gcc punct.c -o punct.out
 ./comp.sh aper_chunker 
 ./comp.sh rm_tags

 echo "Compiling Anu stdenglish source files"
 cd $HOME_anu_test/Anu/stdenglish
 make all

 echo "Compiling Anu std_format source files"
 cd $HOME_anu_test/Anu/std_format
 make all

 echo "Compiling CLIPS source files"
 cd $HOME_anu_test/CLIPS
 make
 mv myclips $HOME_anu_test/bin/.

 echo "Compiling Anusaraka Link Parser files"
 cd $HOME_anu_test/LINK/link-grammar-4.5.7/
 ./configure
 make

 echo " Compiling Original Link Parser files"
 cd $HOME_anu_test/Anu
 tar -xzf link-grammar-4.5.7.tar.gz 
 cd $HOME_anu_test/Anu/link-grammar-4.5.7/
 ./configure
 make

 echo "Compiling stanford parser files"
 cd $HOME_anu_test/stanford-parser/stanford-parser-2008-10-26/
 sh compile.sh

 echo "Creating binary files"
 cd $HOME_anu_test/Anu_clp_files
 myclips -f create_binary_files.clp  >/dev/null

 echo "Creating apertium hindi generation files"
 cd $HOME_anu_test/new_hnd_mo
 sh compile.sh
 mv hi.gen.bin $HOME_anu_test/bin/.
 mv hi.morf.bin $HOME_anu_test/bin/.

 echo "Creating apertium english generation files"
 cd $HOME_anu_test/apertium
 sh compile.sh


