 (defglobal ?*morph_cons_file* = morph_cons_fp)


 (deftemplate word-morph(slot original_word)(slot morph_word)(slot root)(slot category)(slot suffix)(slot number))
 (deffacts dummy_facts
 (id-wsd_number)
 (affecting_id-affected_ids-wsd_group_root_mng)
 (affecting_id-affected_ids-wsd_group_word_mng)
 (root_id-TAM-vachan)
 (id-wsd_root)
 (id-wsd_root_mng)
 (id-wsd_word_mng)
 (kriyA_id-object2_viBakwi)
 (kriyA_id-object_viBakwi)
 (kriyA_id-subject_viBakwi)
 (kriyA_id-object1_viBakwi)
 (id-H_vib_mng)
 (id-root-category-suffix-number)
 (meaning_has_been_decided)
 (make_verbal_noun)
 )

 (defrule p_morph
 (declare (salience 700))
 (id-wsd_root ?id ?root)
 (word-morph (root ?root)(category ?cat)(suffix ?suf)(number ?num))
 ?f0<-(id-root-category-suffix-number ?id $?)
 =>
	(retract ?f0)
	(printout ?*morph_cons_file* "(id-root-category-suffix-number " ?id" " ?root" "?cat " "?suf" " ?num")" crlf)
 )

 (defrule def_p_morph
 (declare (salience 500))
 (id-root-category-suffix-number $?ids)
 =>
	(printout ?*morph_cons_file* "(id-root-category-suffix-number " (implode$ $?ids)")" crlf) 
 )

 
 (defrule morph_cons_end
 (declare (salience 100))
 =>
	(close ?*morph_cons_file*)
 )

