
(defrule walk0
(declare (salience 5000))
(id-root ?id walk)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id walking )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id calawA-PirawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  walk.clp  	walk0   "  ?id "  calawA-PirawA )" crlf))
)

;"walking","Adj","1.calawA-PirawA"
;"walking","N","1.calanA"
;Walking improves health
;
(defrule walk1
(declare (salience 4900))
(id-root ?id walk)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 tahala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " walk.clp	walk1  "  ?id "  " ?id1 "  tahala  )" crlf))
)

(defrule walk2
(declare (salience 4800))
(id-root ?id walk)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 tahala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " walk.clp	walk2  "  ?id "  " ?id1 "  tahala  )" crlf))
)

(defrule walk3
(declare (salience 4700))
(id-root ?id walk)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 curA_le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " walk.clp	walk3  "  ?id "  " ?id1 "  curA_le_jA  )" crlf))
)

(defrule walk4
(declare (salience 4600))
(id-root ?id walk)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 curA_le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " walk.clp	walk4  "  ?id "  " ?id1 "  curA_le_jA  )" crlf))
)

(defrule walk5
(declare (salience 4500))
(id-root ?id walk)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id walking )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id calanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  walk.clp  	walk5   "  ?id "  calanA )" crlf))
)

(defrule walk6
(declare (salience 4400))
(id-root ?id walk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  walk.clp 	walk6   "  ?id "  cAla )" crlf))
)

;"walk","N","1.cAla"
;His walk is not straight
;
(defrule walk7
(declare (salience 4300))
(id-root ?id walk)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) out )
(id-word =(+ ?id 2) of)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id calA_jA))
(assert (kriyA_id-object_viBakwi ?id se))
(assert (id-H_vib_mng ?id ed))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  walk.clp 	walk7   "  ?id "  calA_jA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  walk.clp      walk7   "  ?id " se )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng   " ?*wsd_dir* "  walk.clp      walk7   "  ?id " ed )" crlf))
)

(defrule walk8
(declare (salience 4200))
(id-root ?id walk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  walk.clp 	walk8   "  ?id "  cala )" crlf))
)

;"walk","V","1.calanA"
;They walked for two kilometers yesterday.

(defrule walk9
(declare (salience 4200))
(id-root ?id walk)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id verb)
(id-word =(+ ?id 1) on)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) calawA_jA))
(if ?*debug_flag* then
 (printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  walk.clp    walk9   "  ?id " "(+ ?id 1) " calawA_jA )" crlf)
)
)

