 rm $HOME_anu_test/debugging/sentence_debug/*

 cp $HOME_anu_test/debugging/lwg_debug.clp $HOME_anu_test/debugging/run_lwg_debug.bat $HOME_anu_test/debugging/sentence_debug/. 

 cp $HOME_anu_test/Anu_clp_files/verb_chunk.clp $HOME_anu_test/debugging/sentence_debug/.

 cd $HOME_anu_tmp/tmp/$1_tmp/$2
 cp  word.dat  linkid_word_tmp.dat link_relation_info_tmp1.dat link_name_expand.dat linkid_wordid_mapping.dat lwg_debug.dat lwg_info.dat global_path.clp English_sentence.dat $HOME_anu_test/debugging/sentence_debug/.

 echo "(defglobal ?*home_anu_tmp* = $HOME_anu_tmp/tmp/$1_$2_user_wsd_info.dat)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp
 echo "(defglobal ?*file_name* = $1)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp
 echo "(defglobal ?*sent_no* = $2)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp

