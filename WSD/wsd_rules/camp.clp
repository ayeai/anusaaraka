
(defrule camp0
(declare (salience 5000))
(id-root ?id camp)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 _surround)
(kriyA-object ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sivira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  camp.clp 	camp0   "  ?id "  Sivira )" crlf))
)

(defrule camp1
(declare (salience 4900))
(id-root ?id camp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sivira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  camp.clp 	camp1   "  ?id "  Sivira )" crlf))
)

(defrule camp2
(declare (salience 4800))
(id-root ?id camp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id padZAva_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  camp.clp 	camp2   "  ?id "  padZAva_dAla )" crlf))
)

;"camp","V","1.padZAva_dAlanA"
;We camped on Nilgiri hills during summer.
;
;