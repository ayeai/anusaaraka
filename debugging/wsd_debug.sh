 rm * 
 cp $HOME_anu_test/debugging/wsd_debug.clp $HOME_anu_test/debugging/run_wsd_debug.bat  $HOME_anu_test/debugging/sentence_debug/.

 cd $HOME_anu_tmp/tmp/$1_tmp/$2
 cp  meaning_to_be_decided.dat word.dat original_word.dat root.dat relations.dat lwg_info.dat cat_consistency_check.dat  meaning_has_been_decided.dat  preferred_morph.dat link_relation_info.dat link_name_expand.dat debug_file.dat hindi_meanings.dat global_path.clp $HOME_anu_test/debugging/sentence_debug/.

echo "(defglobal ?*home_anu_tmp* = $HOME_anu_tmp/tmp/$1_$2_user_wsd_info.dat)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp
echo "(defglobal ?*file_name* = $1)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp
echo "(defglobal ?*sent_no* = $2)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp

