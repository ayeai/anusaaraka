
(defrule certain0
(declare (salience 5000))
(id-root ?id certain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  certain.clp 	certain0   "  ?id "  niSciwa )" crlf))
)

;"certain","Adj","1.niSciwa"
;You must set aside a certain sum each week.
;
(defrule certain1
(declare (salience 4900))
(id-root ?id certain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  certain.clp 	certain1   "  ?id "  kuCa )" crlf))
)

;"certain","Pron","1.kuCa"
;Certain of those present had had too much to drink.
;
