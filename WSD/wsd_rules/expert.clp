
(defrule expert0
(declare (salience 5000))
(id-root ?id expert)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nipuNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expert.clp 	expert0   "  ?id "  nipuNa )" crlf))
)

;"expert","Adj","1.nipuNa"
;My mother is an expert cook.
;
(defrule expert1
(declare (salience 4900))
(id-root ?id expert)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nipuNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expert.clp 	expert1   "  ?id "  nipuNa )" crlf))
)

;"expert","N","1.nipuNa"
;My mother is an expert in cooking.
;
