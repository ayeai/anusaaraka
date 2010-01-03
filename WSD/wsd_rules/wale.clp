
(defrule wale0
(declare (salience 5000))
(id-root ?id wale)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAzta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wale.clp 	wale0   "  ?id "  sAzta )" crlf))
)

;"wale","N","1.sAzta"
(defrule wale1
(declare (salience 4900))
(id-root ?id wale)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cihna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wale.clp 	wale1   "  ?id "  cihna_kara )" crlf))
)

;"wale","VT","1.cihna_karanA"
;She waled a beautiful picture on the cloth
;
