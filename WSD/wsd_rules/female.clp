
(defrule female0
(declare (salience 5000))
(id-root ?id female)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id swrI-))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  female.clp 	female0   "  ?id "  swrI- )" crlf))
)

;"female","Adj","1.swrI_sabaMXI"
;Female infacticide is a social evil.
;--"2.swrI"
;She moves around only with her female friends.
;
(defrule female1
(declare (salience 4900))
(id-root ?id female)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id swrI_jAwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  female.clp 	female1   "  ?id "  swrI_jAwi )" crlf))
)

;"female","N","1.swrI_jAwi"
;Females of birds produce eggs.
;
