
(defrule wonder0
(declare (salience 5000))
(id-root ?id wonder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id axBuwawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wonder.clp 	wonder0   "  ?id "  axBuwawA )" crlf))
)

;"wonder","N","1.axBuwawA"
;--"2.acaraja"
;We were filled with wonder when the total eclipse occurred.
;
(defrule wonder1
(declare (salience 4900))
(id-root ?id wonder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acaraja_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wonder.clp 	wonder1   "  ?id "  acaraja_kara )" crlf))
)

(defrule wonder2
(declare (salience 4800))
(id-root ?id wonder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AScaryacakiwa_honA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wonder.clp 	wonder2   "  ?id "  AScaryacakiwa_honA )" crlf))
)

; mEM AScaryacakiwa howA hUz Vs muHe acaraja howA hE
;"wonder","VT","1.acaraja_honA[karanA]"
;Ramesh wondered at the young child's achievement.
;--"2.kOwuka_honA"
;I wonder whether they will come.
;
