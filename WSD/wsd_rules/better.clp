
(defrule better0
(declare (salience 5000))
(id-root ?id better)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id behawara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  better.clp 	better0   "  ?id "  behawara )" crlf))
)

;"better","Adj","1.behawara"
;I wish you a better luck next time!
;
(defrule better1
(declare (salience 4900))
(id-root ?id better)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id behawara_warIke_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  better.clp 	better1   "  ?id "  behawara_warIke_se )" crlf))
)

;"better","Adv","1.behawara_warIke_se"
;The better I know him,the more I admire him.
;
(defrule better2
(declare (salience 4800))
(id-root ?id better)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ora_yogya_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  better.clp 	better2   "  ?id "  Ora_yogya_vyakwi )" crlf))
)

;"better","N","1.Ora_yogya_vyakwi"
;I expected better of him.
;
(defrule better3
(declare (salience 4700))
(id-root ?id better)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id behawara_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  better.clp 	better3   "  ?id "  behawara_banA )" crlf))
)

;"better","V","1.behawara_banAnA"
;Sergei Bubka's record cannot be bettered.
;
