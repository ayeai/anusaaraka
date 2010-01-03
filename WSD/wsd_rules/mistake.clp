
(defrule mistake0
(declare (salience 5000))
(id-root ?id mistake)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id mistaken )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id galawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  mistake.clp  	mistake0   "  ?id "  galawa )" crlf))
)

;"mistaken","Adj","1.galawa"
;It was a case of mistaken identity.
;
;Added by human
(defrule mistake1
(declare (salience 4900))
(id-root ?id mistake)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 make)
(kriyA-object ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id galawI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mistake.clp 	mistake1   "  ?id "  galawI )" crlf))
)

(defrule mistake2
(declare (salience 4800))
(id-root ?id mistake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id galawa_samaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mistake.clp 	mistake2   "  ?id "  galawa_samaJa )" crlf))
)

;"mistake","V","1.galawa samaJanA"
;I mistook her for her sister.
;
;
