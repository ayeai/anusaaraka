
(defrule divorce0
(declare (salience 5000))
(id-root ?id divorce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id walAka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  divorce.clp 	divorce0   "  ?id "  walAka )" crlf))
)

;"divorce","N","1.walAka/vivAha_vicCexa"
;They decided to have a divorce.
;--"2.pqWakIkaraNa"
;
(defrule divorce1
(declare (salience 4900))
(id-root ?id divorce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id walAka_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  divorce.clp 	divorce1   "  ?id "  walAka_xe )" crlf))
)

;"divorce","VT","1.walAka_xenA/vivAha_vicCexa_karanA"
;The couple divorced after only 6 months
;--"2.pqWaka_karanA"
;
