
 cp $HOME_anu_test/Anu_clp_files/pada_ids.clp $HOME_anu_test/debugging/pada_debug.clp $HOME_anu_test/debugging/run_pada_debug.bat  $HOME_anu_test/debugging/sentence_debug/.

 cd $HOME_anu_tmp/tmp/$1_tmp/$2
 cp pada_debug.dat pada_id_info.dat word.dat lwg_info.dat relations.dat English_sentence.dat $HOME_anu_test/debugging/sentence_debug/.

echo "(defglobal ?*home_anu_tmp* = $HOME_anu_tmp/tmp/$1_$2_user_wsd_info.dat)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp
echo "(defglobal ?*file_name* = $1)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp
echo "(defglobal ?*sent_no* = $2)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp

