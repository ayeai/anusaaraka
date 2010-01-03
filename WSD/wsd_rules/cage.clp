
(defrule cage0
(declare (salience 5000))
(id-root ?id cage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id piMjadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cage.clp 	cage0   "  ?id "  piMjadZA )" crlf))
)

;"cage","N","1.piMjadZA"
;The pigeons were released from the cage to mark Independence Day celebrations.
;
(defrule cage1
(declare (salience 4900))
(id-root ?id cage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cage.clp 	cage1   "  ?id "  banxa_kara )" crlf))
)

;"cage","VT","1.banxa_karanA"
;The animal was caged in the zoo.
;
