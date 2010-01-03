 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/hindi_sentence.clp"))
 (load ?*path*)
 (load-facts "word.dat")
 (load-facts "hindi_meanings.dat")
 (load-facts "id_Apertium_output.dat")
 (load-facts "hindi_id_reorder.dat")
 (open "hindi_sentence.dat" h_sen_fp "a")
 (run)
 (clear)
(exit)

