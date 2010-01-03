 cd $HOME_anu_test/Anu_clp_files/
 cp $HOME_anu_test/Anu_clp_files/link_relation_rules.clp $HOME_anu_test/debugging/relation_debug.clp $HOME_anu_test/debugging/run_relation_debug.bat  $HOME_anu_test/debugging/sentence_debug/.

 cd $HOME_anu_tmp/tmp/$1_tmp/$2
 cp link_relation_info.dat linkid_wordid_mapping.dat relations_debug.dat word.dat lwg_info.dat relations_tmp1.dat relations.dat English_sentence.dat $HOME_anu_test/debugging/sentence_debug/.

#echo "(defglobal ?*home_anu_tmp* = $HOME_anu_tmp/tmp/$1_$2_user_wsd_info.dat)" >> $HOME_anu_test/debugging/sentenec_debug/global_path.clp
