
(defrule dynamic0
(declare (salience 5000))
(id-root ?id dynamic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gawiSIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dynamic.clp 	dynamic0   "  ?id "  gawiSIla )" crlf))
)

(defrule dynamic1
(declare (salience 4900))
(id-root ?id dynamic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gawiSIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dynamic.clp 	dynamic1   "  ?id "  gawiSIla )" crlf))
)

;"dynamic","Adj","1.gawiSIla"
;--"2.parivarwanAwmaka 
;Dynamic leadership is required for progress
;
;
