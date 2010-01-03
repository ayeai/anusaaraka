
(defrule variable0
(declare (salience 5000))
(id-root ?id variable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parivarwanaSIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  variable.clp 	variable0   "  ?id "  parivarwanaSIla )" crlf))
)

;"variable","Adj","1.parivarwanaSIla"
;Prices are variable in the supermarket
;
(defrule variable1
(declare (salience 4900))
(id-root ?id variable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parivarwanaSIla_vaswu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  variable.clp 	variable1   "  ?id "  parivarwanaSIla_vaswu )" crlf))
)

;"variable","N","1.parivarwanaSIla_vaswu"
;Take `X' as a variable here.
;
