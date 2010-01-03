
(defrule feature0
(declare (salience 5000))
(id-root ?id feature)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lakRaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  feature.clp 	feature0   "  ?id "  lakRaNa )" crlf))
)

(defrule feature1
(declare (salience 4900))
(id-root ?id feature)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakata_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  feature.clp 	feature1   "  ?id "  prakata_kara )" crlf))
)

;"feature","V","1.prakata_karanA"
;This film features an important hero.
;--"2.hissA_lenA"
;Does change of job features in your plans.
;
;