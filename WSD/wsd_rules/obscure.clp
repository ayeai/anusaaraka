
(defrule obscure0
(declare (salience 5000))
(id-root ?id obscure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XuzXalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  obscure.clp 	obscure0   "  ?id "  XuzXalA )" crlf))
)

;"obscure","Adj","1.XuzXalA"
;--"2.kaTina{samaJane_meM}"
;That is an obscure example.
;
(defrule obscure1
(declare (salience 4900))
(id-root ?id obscure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id boJawma_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  obscure.clp 	obscure1   "  ?id "  boJawma_kara_xe )" crlf))
)

;"obscure","V","1.boJawma_kara_xenA"
;Reporters obscure facts.
;
