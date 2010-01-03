
(defrule bold0
(declare (salience 5000))
(id-root ?id bold)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nidara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bold.clp 	bold0   "  ?id "  nidara )" crlf))
)

(defrule bold1
(declare (salience 4900))
(id-root ?id bold)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xabaMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bold.clp 	bold1   "  ?id "  xabaMga )" crlf))
)

;"bold","Adj","1.xabaMga"
;Bold settlers on some foreign shore
;--"2.spaRta"
;Bold handwriting
;
;
