
(defrule an0
(declare (salience 5000))
(id-root ?id an)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id Art)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  an.clp 	an0   "  ?id "  eka )" crlf))
)


;Added by Meena(4.12.09)
;An income tax increase may be necessary .
(defrule an1
(declare (salience 4900))
(id-root ?id an)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) ?)
(samAsa  ? =(+ ?id 1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  an.clp        an1   "  ?id "  - )" crlf))
)


;Salience reduced by Meena(4.12.09)
(defrule an2
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id an)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  an.clp 	an2   "  ?id "  eka )" crlf))
)

;"an","Art","2.eka"
;She bought an umbrella.
;
