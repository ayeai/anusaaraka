
(defrule wash0
(declare (salience 5000))
(id-root ?id wash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id washing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id XulAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  wash.clp  	wash0   "  ?id "  XulAI )" crlf))
)

;"washing","N","1.XulAI"
;Hang the washing on the rope
;
;
(defrule wash1
(declare (salience 4900))
(id-root ?id wash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Xo_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wash.clp	wash1  "  ?id "  " ?id1 "  Xo_dAla  )" crlf))
)

(defrule wash2
(declare (salience 4800))
(id-root ?id wash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Xo_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wash.clp	wash2  "  ?id "  " ?id1 "  Xo_dAla  )" crlf))
)

(defrule wash3
(declare (salience 4700))
(id-root ?id wash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Xo_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wash.clp	wash3  "  ?id "  " ?id1 "  Xo_xe  )" crlf))
)

(defrule wash4
(declare (salience 4600))
(id-root ?id wash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Xo_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wash.clp	wash4  "  ?id "  " ?id1 "  Xo_xe  )" crlf))
)

(defrule wash5
(declare (salience 4500))
(id-root ?id wash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mitA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wash.clp	wash5  "  ?id "  " ?id1 "  mitA_xe  )" crlf))
)

(defrule wash6
(declare (salience 4400))
(id-root ?id wash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mitA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wash.clp	wash6  "  ?id "  " ?id1 "  mitA_xe  )" crlf))
)

;Added by human
(defrule wash7
(declare (salience 4300))
(id-root ?id wash)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) a)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XonA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wash.clp 	wash7   "  ?id "  XonA )" crlf))
)

(defrule wash8
(declare (salience 4200))
(id-root ?id wash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wash.clp 	wash8   "  ?id "  Xo )" crlf))
)

;Added by sheetal(29-12-2009).
(defrule wash9
(declare (salience 4200))
(id-root ?id wash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id2 flood)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bahA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  wash.clp      wash9   "  ?id "  bahA_xe )" crlf))
)
;The whole village was washed away by the floods .
;"wash","VTI","1.XonA"
;You wash the clothes
;
;
