
(defrule increase0
(declare (salience 5000))
(id-root ?id increase)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vqxXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  increase.clp 	increase0   "  ?id "  vqxXi )" crlf))
)

;"increase","N","1.vqxXi"
(defrule increase1
(declare (salience 4900))
(id-root ?id increase)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vqxXi_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  increase.clp 	increase1   "  ?id "  vqxXi_kara )" crlf))
)

(defrule increase2
(declare (salience 4800))
(id-root ?id increase)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vqxXi_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  increase.clp 	increase2   "  ?id "  vqxXi_ho )" crlf))
)

;"increase","V","1.vqxXi_karanA[honA]"
;He increased his speed to overtake the car.
;
