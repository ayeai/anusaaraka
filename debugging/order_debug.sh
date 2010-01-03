rm *
cd $HOME_anu_test/Anu_clp_files/
cp $HOME_anu_test/debugging/order_debug.clp $HOME_anu_test/debugging/run_order_debug.bat  $HOME_anu_test/debugging/sentence_debug/.


cd $HOME_anu_tmp/tmp/$1_tmp/$2
cp English_sentence.dat word.dat GNP_agmt_info.dat relations.dat relations_tmp1.dat lwg_info.dat Eng_id_order.dat cat_consistency_check.dat chunk.dat chunk_relations.dat $HOME_anu_test/debugging/sentence_debug/.

echo "(defglobal ?*home_anu_tmp* = $HOME_anu_tmp/tmp/$1_$2_user_wsd_info.dat)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp
echo "(defglobal ?*file_name* = $1)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp
echo "(defglobal ?*sent_no* = $2)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp

