
(defrule brim0
(declare (salience 5000))
(id-root ?id brim)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AvaSyakawA_se_aXika_Bara_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " brim.clp	brim0  "  ?id "  " ?id1 "  AvaSyakawA_se_aXika_Bara_jA  )" crlf))
)

;jug brimmed over with water.
;jaga AvaSyakawA se aXika pAnI se Bara gayA
(defrule brim1
(declare (salience 4900))
(id-root ?id brim)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kagAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brim.clp 	brim1   "  ?id "  kagAra )" crlf))
)

;"brim","N","1.kagAra"
;The cup was filled till the brim.
;
;