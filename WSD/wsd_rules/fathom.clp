
(defrule fathom0
(declare (salience 5000))
(id-root ?id fathom)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fathom.clp 	fathom0   "  ?id "  WAha )" crlf))
)

(defrule fathom1
(declare (salience 4900))
(id-root ?id fathom)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WAha_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fathom.clp 	fathom1   "  ?id "  WAha_le )" crlf))
)

;"fathom","VT","1.WAha_lenA"
;They tried to fathom the depth of the river.
;
;