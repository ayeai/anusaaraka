
(defrule grade0
(declare (salience 5000))
(id-root ?id grade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SreNI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grade.clp 	grade0   "  ?id "  SreNI )" crlf))
)

(defrule grade1
(declare (salience 4900))
(id-root ?id grade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kramAnusAra_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grade.clp 	grade1   "  ?id "  kramAnusAra_raKa )" crlf))
)

;"grade","VT","1.kramAnusAra_raKanA"
;The palyers were graded according to their recent performances.
;
;
