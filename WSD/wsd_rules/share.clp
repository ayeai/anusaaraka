
(defrule share0
(declare (salience 5000))
(id-root ?id share)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hissA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  share.clp 	share0   "  ?id "  hissA )" crlf))
)

;"share","N","1.hissA"
;Ram gave his share to his brother.
;
(defrule share1
(declare (salience 4900))
(id-root ?id share)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAJA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  share.clp 	share1   "  ?id "  sAJA_kara )" crlf))
)

;"share","V","1.sAJA_kara"
;--"2.sAJA_karanA"
;They shared the apartment.
;
