
(defrule zero0
(declare (salience 5000))
(id-root ?id zero)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SUnya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  zero.clp 	zero0   "  ?id "  SUnya )" crlf))
)

;"zero","N","1.SUnya"
;The temperature fell below zero in Adampur,Punjab.
;
(defrule zero1
(declare (salience 4900))
(id-root ?id zero)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSAnA_sAXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  zero.clp 	zero1   "  ?id "  niSAnA_sAXa )" crlf))
)

;"zero","V","1.niSAnA_sAXanA"
;The missiles were zeroed in on the enemy camps.
;--"2.XyAna_kenxriwa_karanA"
;The media zeroed in on the Kargil issue for the past three months.
;
