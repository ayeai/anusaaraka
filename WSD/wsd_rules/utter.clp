
(defrule utter0
(declare (salience 5000))
(id-root ?id utter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  utter.clp 	utter0   "  ?id "  pUrNa )" crlf))
)

;"utter","Adj","1.pUrNa"
;All his arguments are utter nonsense.
;
(defrule utter1
(declare (salience 4900))
(id-root ?id utter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  utter.clp 	utter1   "  ?id "  bola )" crlf))
)

;"utter","VT","1.bola"
;He never uttered a word in protest.
;
