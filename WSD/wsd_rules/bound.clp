
(defrule bound0
(declare (salience 5000))
(id-root ?id bound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bazXA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bound.clp 	bound0   "  ?id "  bazXA_huA )" crlf))
)

(defrule bound1
(declare (salience 4900))
(id-root ?id bound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sImA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bound.clp 	bound1   "  ?id "  sImA )" crlf))
)

(defrule bound2
(declare (salience 4800))
(id-root ?id bound)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CalAMga_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bound.clp	bound2  "  ?id "  " ?id1 "  CalAMga_mAra  )" crlf))
)

(defrule bound3
(declare (salience 4700))
(id-root ?id bound)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CalAMga_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bound.clp	bound3  "  ?id "  " ?id1 "  CalAMga_mAra  )" crlf))
)

(defrule bound4
(declare (salience 4600))
(id-root ?id bound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CalAMga_mAra))
; (assert (id-wsd_root_mng ?id  bAzXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bound.clp 	bound4   "  ?id "  CalAMga_mAra )" crlf))
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bound.clp   bound4   "  ?id "   bAzXa )" crlf))
)

;default_sense && category=verb	kulAzce_mAranA/uCala	0
;"bound","VTI","1.kulAzce_mAranA/uCalanA"
;The horse bounded across the meadow
;
;
