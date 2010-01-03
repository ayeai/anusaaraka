 (defglobal ?*vachan_file* = vachan_fp)
 (defglobal ?*agmt_cntrl_file* = agmt_cntrl_fp)
 (defglobal ?*pada_cntrl_file* = pada_cntrl_fp)
 (defglobal ?*dbug* = pada_debug_fp)
 (defglobal ?*errfp* = err_file)

 (defrule end
 (declare (salience -100))
 =>
	(close ?*vachan_file*)
	(close ?*agmt_cntrl_file*)
	(close ?*pada_cntrl_file*)
	(close ?*dbug*)
        (close ?*errfp*)
 )  



 (deffunction print_in_ctrl_fact_files (?paxa_head)
	(printout	?*vachan_file*	"(vachan_to_be_decided	"	?paxa_head	")"	crlf)	
	(printout	?*agmt_cntrl_file*	"(agmt_control_fact	"	?paxa_head	")"	crlf)	
	(printout	?*pada_cntrl_file*	"(pada_control_fact	"	?paxa_head	")"	crlf)	
 )

 (deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (slot preposition (default 0))(slot Hin_position (default 0)))

 (defrule pada_count
 (declare (salience 10000))
 (to_be_included_in_paxa 1)
 =>
 (assert (count 0))
 )

  (defrule retract_cntrl_fact
  (declare (salience 2000))
  (has_been_included_in_paxa ?id)
  ?f<-(to_be_included_in_paxa ?id)
  =>
  (retract ?f)
  )
  
 (defrule kriyA_pada
 (declare (salience 1001))
 (root-verbchunk-tam-chunkids ? ? ? $?ids ?kri)
 ?f<-(to_be_included_in_paxa ?kri)
  =>
 (retract ?f)
 (assert (pada_info (group_head_id ?kri) (group_cat VP) (group_ids $?ids ?kri)))
 (bind ?len (length $?ids))
 (loop-for-count (?i 1 ?len)
                  (bind ?j (nth$ ?i $?ids))
                  (assert (has_been_included_in_paxa ?j))
 )
 (print_in_ctrl_fact_files ?kri)
 )

 (defrule to-infinitive_pada
 (declare (salience 1001))
 (using-parser-ids to-infinitive  ?to ?inf)
 ?f<-(to_be_included_in_paxa ?inf)
 ?f1<-(to_be_included_in_paxa ?to) ;Added by Manju
 =>
 (retract ?f ?f1)
 (assert (pada_info (group_head_id ?inf) (group_cat infinitive) (group_ids  ?to ?inf)))
 (print_in_ctrl_fact_files ?inf)
 )

 (defrule PP_pada
 (declare (salience 1000))
 (using-parser-ids  ?rel  ?kri ?PP)
 (test (or (eq ?rel kriyA-subject)(eq ?rel kriyA-object)(eq ?rel saMjFA-saMjFA_samAnAXikaraNa)(eq ?rel subject-subject_samAnAXikaraNa)(eq ?rel kriyA-kriyA_viSeRaNa)(eq ?rel kriyA-upasarga)(eq ?rel to-infinitive)(eq ?rel kriyA-dummy_subject))) 
 ?f<-(to_be_included_in_paxa ?PP)
  => 
 (retract ?f)
  (assert (pada_info (group_head_id ?PP) (group_cat PP) (group_ids  ?PP)))
 (print_in_ctrl_fact_files ?PP)
 )

 (defrule PP_pada1
 (declare (salience 1000))
 (using-parser-ids  ?rel  ?kri ?PP)
 (test (neq (str-index "-" ?rel)  FALSE))
 (test (neq (str-index "_" ?rel)  FALSE))
 (test (eq (sub-string 1 (- (str-index "-" ?rel) 1) ?rel) "kriyA"))
 (test (eq (sub-string (+ (+ (str-index "-" ?rel) 1) (- (str-index "_" ?rel)  (str-index "-" ?rel))) (length ?rel) ?rel) "saMbanXI"))
 ?f<-(to_be_included_in_paxa ?PP)
  =>
 (retract ?f)
 (assert (pada_info (group_head_id ?PP) (group_cat PP) (group_ids  ?PP)(preposition 0)))
 (print_in_ctrl_fact_files ?PP)
 )

 (defrule PP_pada2
 (declare (salience 1000))
 (using-parser-ids  ?rel  ?PP ?)
 (test (eq ?rel kriyA-kqxanwa_viSeRaNa))
 ?f<-(to_be_included_in_paxa ?PP)
  =>
 (retract ?f)
  (assert (pada_info (group_head_id ?PP) (group_cat PP) (group_ids  ?PP)))
 (print_in_ctrl_fact_files ?PP)
 )

 (defrule viSeRaNa_pada
 (declare (salience 990))
 (using-parser-ids  ?rel ?viSeRya ?viSeRaNa)
 (test (or (eq ?rel viSeRya-det_viSeRaNa)(eq ?rel viSeRya-viSeRaNa)(eq ?rel samAsa)(eq ?rel kriyA-kqxanwa_viSeRaNa)(eq ?rel viSeRya-saMKyA_viSeRaNa)(eq ?rel viSeRaNa-viSeRaka)))
 ?f<-(to_be_included_in_paxa ?viSeRaNa)
 ?f1<-(pada_info (group_ids  $?id ?viSeRya $?ids)(group_cat PP|infinitive))
   =>
 (retract ?f)
 (bind $?grp_ids (sort > (create$ $?id ?viSeRya $?ids ?viSeRaNa)))
 (modify ?f1 (group_ids $?grp_ids))
 )
 ;Ex : We have very different ideas about disciplining children .
 ;Modified by Shirisha Manju : 
                  ; added viSeRaNa-viSeRaka relation and 
                  ; removed (group_head_id  ?viSeRya) and modified (group_ids $?grp_ids) as (group_ids  $?id ?viSeRya $?ids)

 (defrule RaRTI_viSeRaNa
 (declare (salience 1000))
 (using-parser-ids  viSeRya-RaRTI_viSeRaNa ?viSeRya ?viSeRaNa)
 ?f<-(to_be_included_in_paxa ?viSeRaNa)
 =>
 (retract ?f)
 (assert (pada_info (group_head_id ?viSeRaNa) (group_cat PP) (group_ids  ?viSeRaNa)(vibakthi kA)))
 (print_in_ctrl_fact_files ?viSeRaNa)
 )

 (defrule add_prep
 (declare (salience 900))
 (rel_name-sids prep ?kriyA ?prep)
 (rel_name-sids pobj|pcomp  ?prep ?prep_saM)
 (parserid-wordid ?prep ?prep_id)
 (parserid-wordid ?prep_saM ?saM_id)
 ?f1<-(pada_info (group_head_id ?saM_id)(preposition 0))
 ?f<-(to_be_included_in_paxa ?prep_id)
 =>
  (retract ?f)
  (modify ?f1 (preposition ?prep_id)))
 

 (defrule conj_pada 
 (rel_name-sids conj ?id ?CONJ)
 (parserid-wordid ?CONJ ?PP)
 ?f<-(to_be_included_in_paxa ?PP)
  =>
 (retract ?f)
 (assert (pada_info (group_head_id ?PP) (group_cat PP) (group_ids  ?PP)))
 (print_in_ctrl_fact_files ?PP)
 )

 (defrule default_pada
 ?f<-(to_be_included_in_paxa ?PP)
  =>
 (retract ?f)
 (assert (pada_info (group_head_id ?PP) (group_cat PP) (group_ids  ?PP)))
 (print_in_ctrl_fact_files ?PP)
 )


