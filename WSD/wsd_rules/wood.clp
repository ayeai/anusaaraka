
(defrule wood0
(declare (salience 5000))
(id-root ?id wood)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id wooded )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jaMgalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  wood.clp  	wood0   "  ?id "  jaMgalI )" crlf))
)

;"wooded","Adj","1.jaMgalI"
;We had picnic in a wooded valley.
;
(defrule wood1
(declare (salience 4900))
(id-root ?id wood)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lakadI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wood.clp 	wood1   "  ?id "  lakadI )" crlf))
)

;"wood","N","1.lakadI"
;Windows are made of wood.
;
;