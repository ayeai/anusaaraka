(defglobal ?*hin_sen-file* = h_sen_fp)
 
(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot preceeding_part_of_verb (default 0)) (slot preposition (default 0))(slot Hin_position (default 0)))

 (defrule gene_sent
 (declare (salience 1000))
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 (id-Apertium_output ?id $?wrd_analysis)
 =>
        (retract ?f0)
        (assert (hindi_id_order $?id1  $?wrd_analysis  $?id2))
 )

 ;Substituting the hindi_meaning for the id in case if the Apertium ouput is not present.
 (defrule substitute_hnd_mng
 (declare (salience 900))
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 (id-HM-source ?id ?hmng ?)
 =>
        (retract ?f0)
        (assert (hindi_id_order $?id1 ?hmng $?id2))
  )
 
 ;Substituting the english word if hindi_meaning is not present.
 (defrule substitute_eng_word 
 (declare (salience 800))
 ;(No complete linkages found)
 ?f0<-(hindi_id_order $?id1 ?id $?id2)
 (id-word ?id ?wrd)
 =>
  	(retract ?f0)
        (bind ?wrd (explode$ (str-cat "@" ?wrd)))
        (assert (hindi_id_order $?id1 ?wrd $?id2))
 )
 
 (defrule match_exp
 (declare (salience 700))
 (hindi_id_order $?var)
 =>
        (printout ?*hin_sen-file* (implode$ $?var) crlf)
 )


 (defrule end
 (declare (salience -10))
 =>
        (close ?*hin_sen-file* )
 )
