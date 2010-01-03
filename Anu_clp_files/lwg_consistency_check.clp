
 (defglobal ?*lwg-diff-file* = lwg_diff_fp)
 (defglobal ?*revised-lwg-file* = revised_lwg_fp)
 
 (deffacts dummy_facts
 (id-last_word )
 (root-verbchunk-tam-parser_chunkids)
 (parserid-wordid )
 (linkid-word)
 (lwg_root-verbchunk-tam-chunkids)
 (verb_type-verb-causative_verb-tam)
 (link_name-link_lnode-link_rnode)
 (id-word)
 )

 (defrule lwg_idiom_rule
 (declare (salience 300))
 ?f0<-(root-verbchunk-tam-parser_chunkids ?root ?vbchunk idiom $?ids ?kriyA ?upasarga)
 (kriyA-upasarga  ?kriyA ?upasarga)
 (not (modified_lwg_head ?kriyA))
 =>
 (retract ?f0)
 (assert (modified_lwg_head ?kriyA))
 (assert (root-verbchunk-tam-parser_chunkids ?root ?vbchunk idiom $?ids ?upasarga ?kriyA))
 )
 

; (defrule lwg_let_rule
; (declare (salience 300))
; ?f0<-(root-verbchunk-tam-parser_chunkids ?root ?vbchunk ?tam $?ids)
; (id-word ?id let)
; (not (moved_lwg_id ?id))
; =>
; 	(assert (moved_lwg_id ?id))
;	(bind ?id (explode$ (str-cat L ?id)))
;	(if (neq (member$ ?id $?ids) FALSE) then
;		(retract ?f0)
;		(bind $?ids (delete-member$ $?ids ?id))
;		(bind $?ids (create$ $?ids ?id))
;		(assert (root-verbchunk-tam-parser_chunkids ?root ?vbchunk ?tam $?ids))
;	)
; )

 ;A party is taking place so if you would like to show up you should do so
 (defrule is_ing_rule
 (declare (salience 250))
 ?f0<-(lwg_root-verbchunk-tam-chunkids ?root ?vbchunk is_ing  ?id $?ids)
 (parserid-wordid  ?lid ?id)
 (link_name-link_lnode-link_rnode Ost ?lid1 ?lid)
 =>
 (retract ?f0)
 (printout ?*lwg-diff-file* "(lwg_root-verbchunk-tam-chunkids " ?root" " ?vbchunk " is_ing " ?id " "(implode$ $?ids)")" crlf)
 (printout ?*revised-lwg-file* "(lwg_root-verbchunk-tam-chunkids " ?root" "?vbchunk " is_ing "?id" "(implode$ $?ids) ")"crlf)
 (assert (old_lwg_grp_id ?lid))
 )

 (defrule was_ing_rule
 (declare (salience 250))
 ?f0<-(lwg_root-verbchunk-tam-chunkids ?root ?vbchunk was_ing  ?id $?ids)
 (parserid-wordid  ?lid ?id)
  =>
  (retract ?f0)
  (printout ?*lwg-diff-file* "(lwg_root-verbchunk-tam-chunkids "?root" "?vbchunk " was_ing "?id" "(implode$ $?ids)")" crlf)
  (printout ?*revised-lwg-file* "(lwg_root-verbchunk-tam-chunkids "?root" "?vbchunk " was_ing "?id" "(implode$ $?ids)")"crlf)
  (assert (old_lwg_grp_id ?lid))
 )

 ;She is making the girl feed the child
 (defrule causative_verb_rule
 (declare (salience 120))
 ?f0<-(root-verbchunk-tam-parser_chunkids ?root ?vbchunk ?tam ?id $?ids)
 (verb_type-verb-causative_verb-tam causative $?var ?tam)
 (not (old_lwg_grp_id ?id))
 =>
	(retract ?f0)
        (printout ?*lwg-diff-file* "(root-verbchunk-tam-parser_chunkids " ?root" " ?vbchunk " "?tam " "?id " " (implode$ $?ids)")" crlf)
	(printout ?*revised-lwg-file* "(root-verbchunk-tam-parser_chunkids " ?root" "?vbchunk " " ?tam " "?id " "(implode$ $?ids) ")" crlf)
	(printout ?*revised-lwg-file* "(verb_type-verb-causative_verb-tam causative " (implode$ $?var)" " ?tam ")" crlf)
)

 (defrule causative_verb_rule1
 (declare (salience 120))
 ?f0<-(verb_type-verb-causative_verb-tam causative $?var ?tam)
 =>
        (retract ?f0)
        (printout ?*revised-lwg-file* "(verb_type-verb-causative_verb-tam causative " (implode$ $?var)" " ?tam ")" crlf)
 )

 (defrule parser_lwg1
 (declare (salience 100))
 ?f0<-(root-verbchunk-tam-parser_chunkids ?root ?vbchunk ?tam ?id $?ids)
 (not (old_lwg_grp_id ?id))
 =>
  (retract ?f0)
  (printout ?*lwg-diff-file* "(root-verbchunk-tam-parser_chunkids " ?root" " ?vbchunk " "?tam " "?id " " (implode$ $?ids)")" crlf)
  (printout ?*revised-lwg-file* "(root-verbchunk-tam-parser_chunkids " ?root" "?vbchunk " " ?tam " "?id " "(implode$ $?ids) ")" crlf)
)

 (defrule lwg_rule_diff
 (declare (salience 100))
 (lwg_root-verbchunk-tam-chunkids ?root ?vbchunk ?tam $?ids)
 =>
 (printout ?*lwg-diff-file* "(lwg_root-verbchunk-tam-chunkids " ?root" " ?vbchunk " "?tam " " (implode$ $?ids)")" crlf)
 )

 (defrule lwg_rule
 (declare (salience 100))
 (No complete linkages found)
 (lwg_root-verbchunk-tam-chunkids ?root ?vbchunk ?tam $?ids)
 =>
 (printout  ?*revised-lwg-file* "(lwg_root-verbchunk-tam-chunkids " ?root" " ?vbchunk " "?tam " " (implode$ $?ids)")" crlf)
 )

 (defrule end
 (declare (salience 50))
 =>
 	(close ?*lwg-diff-file*)
 	(close ?*revised-lwg-file*)
 )
