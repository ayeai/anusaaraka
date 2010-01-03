
(defrule theoretical0
(declare (salience 5000))
(id-root ?id theoretical)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sExXAnwika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  theoretical.clp 	theoretical0   "  ?id "  sExXAnwika )" crlf))
)

(defrule theoretical1
(declare (salience 4900))
(id-root ?id theoretical)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sExXAnwika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  theoretical.clp 	theoretical1   "  ?id "  sExXAnwika )" crlf))
)

;"theoretical","Adj","1.sExXAnwika"
;Quantum theory is a theoretical subject.
;--"2.mImAMsAwmaka"
;
;
