
(defrule while0
(declare (salience 5000))
(id-root ?id while)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 biwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " while.clp	while0  "  ?id "  " ?id1 "  biwA  )" crlf))
)

(defrule while1
(declare (salience 4900))
(id-root ?id while)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 biwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " while.clp	while1  "  ?id "  " ?id1 "  biwA  )" crlf))
)

(defrule while2
(declare (salience 4800))
(id-root ?id while)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) tell)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  while.clp 	while2   "  ?id "  kaba )" crlf))
)

(defrule while3
(declare (salience 4700))
(id-root ?id while)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
(id-word 1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  while.clp 	while3   "  ?id "  kaba )" crlf))
)

(defrule while4
(declare (salience 4600))
(id-root ?id while)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id conjunction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id usa_avaXi_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  while.clp 	while4   "  ?id "  usa_avaXi_meM )" crlf))
)

;"while","Conj","1.usa_avaXi_meM"
;I finished the novel while she was cooking.
;--"2.jaba_ki"
;I like black tea while my husband takes it with milk.
;
(defrule while5
(declare (salience 4500))
(id-root ?id while)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  while.clp 	while5   "  ?id "  kAla )" crlf))
)

;"while","N","1.kAla"
;She worked in a school for a while before joining the college.
;
(defrule while6
(declare (salience 4400))
(id-root ?id while)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ArAma_se_samaya_gujAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  while.clp 	while6   "  ?id "  ArAma_se_samaya_gujAra )" crlf))
)

;"while","V","1.ArAma_se_samaya_gujAranA"
;We whiled away the time at the airport reading newspapers.
;
