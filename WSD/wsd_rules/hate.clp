
(defrule hate0
(declare (salience 5000))
(id-root ?id hate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nApasanxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hate.clp 	hate0   "  ?id "  nApasanxa_kara )" crlf))
)

(defrule hate1
(declare (salience 4900))
(id-root ?id hate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GqNA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hate.clp 	hate1   "  ?id "  GqNA )" crlf))
)

;"hate","N","1.GqNA"
;rIweSa ke mana meM prIwi ke prawi bahuwa"hate"BAva WA.
;
;