
(defrule bet0
(declare (salience 5000))
(id-root ?id bet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sarwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bet.clp 	bet0   "  ?id "  Sarwa )" crlf))
)

;"bet","N","1.Sarwa"
;We made a bet of Rs 100.
;
(defrule bet1
(declare (salience 4900))
(id-root ?id bet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAzva_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bet.clp 	bet1   "  ?id "  xAzva_lagA )" crlf))
)

;"bet","VT","1.xAzva_lagAnA"
;I bet it will rain tommorrow.
;
