
(defrule anyone0
(declare (salience 5000))
(id-root ?id anyone)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
(niSeXAwmaka_vAkya      )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koI_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anyone.clp 	anyone0   "  ?id "  koI_BI )" crlf))
)

(defrule anyone1
(declare (salience 4900))
(id-root ?id anyone)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anyone.clp 	anyone1   "  ?id "  koI )" crlf))
)

(defrule anyone2
(declare (salience 4800))
(id-root ?id anyone)
?mng <-(meaning_to_be_decided ?id)
(id-word 1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koI_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anyone.clp 	anyone2   "  ?id "  koI_BI )" crlf))
)

(defrule anyone3
(declare (salience 4700))
(id-root ?id anyone)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koI_eka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anyone.clp 	anyone3   "  ?id "  koI_eka )" crlf))
)

;"anyone","Pron","1.koI_eka"
;Anyone of you can go && get the tickets.
;
