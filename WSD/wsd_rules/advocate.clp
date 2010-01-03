
(defrule advocate0
(declare (salience 5000))
(id-root ?id advocate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vakIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  advocate.clp 	advocate0   "  ?id "  vakIla )" crlf))
)

;"advocate","N","1.vakIla"
;He is a famous advocate && has won nearly all of his (court) cases.
;--"2.samarWaka"
;I have always been an advocate of anti pollution policies.
;
(defrule advocate1
(declare (salience 4900))
(id-root ?id advocate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vakAlawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  advocate.clp 	advocate1   "  ?id "  vakAlawa_kara )" crlf))
)

;"advocate","V","1.vakAlawa_karanA"
;We all advocate an anti-nuclear policy && want a nuclear-free world.
;
