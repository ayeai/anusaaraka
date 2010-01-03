
(defrule tide0
(declare (salience 5000))
(id-root ?id tide)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pAra_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tide.clp	tide0  "  ?id "  " ?id1 "  pAra_lagA  )" crlf))
)

(defrule tide1
(declare (salience 4900))
(id-root ?id tide)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pAra_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tide.clp	tide1  "  ?id "  " ?id1 "  pAra_lagA  )" crlf))
)

(defrule tide2
(declare (salience 4800))
(id-root ?id tide)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAnI_caDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tide.clp 	tide2   "  ?id "  pAnI_caDZa )" crlf))
)

(defrule tide3
(declare (salience 4700))
(id-root ?id tide)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jvAra_BAtA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tide.clp 	tide3   "  ?id "  jvAra_BAtA )" crlf))
)

;"tide","N","1.jvAra_BAtA"
;Tide is high on a full moon night.
;--"2.pravqwwi"
;A rising tide of popular interest.
;
;
