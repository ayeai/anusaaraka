
(defrule elect0
(declare (salience 5000))
(id-root ?id elect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirvAciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  elect.clp 	elect0   "  ?id "  nirvAciwa )" crlf))
)

;"elect","Adj","1.nirvAciwa"
;The minister elect has to prove his majority.
;
(defrule elect1
(declare (salience 4900))
(id-root ?id elect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirvAciwa_manuRya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  elect.clp 	elect1   "  ?id "  nirvAciwa_manuRya )" crlf))
)

;"elect","N","1.nirvAciwa_manuRya"
;People choose the elect as the best.
;
(defrule elect2
(declare (salience 4800))
(id-root ?id elect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirvAcana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  elect.clp 	elect2   "  ?id "  nirvAcana_kara )" crlf))
)

;"elect","VT","1.nirvAcana_karanA"
;Mr. Gupta was elected as the President of the Company.
;--"2.cunanA"
;She elected to work overtime on sundays.
;
