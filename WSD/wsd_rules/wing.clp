
(defrule wing0
(declare (salience 5000))
(id-root ?id wing)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id winged )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id paMKoM_sahiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  wing.clp  	wing0   "  ?id "  paMKoM_sahiwa )" crlf))
)

;"winged","Adj","1.paMKoM_sahiwa"
;These winged birds are ready to fly.
;
(defrule wing1
(declare (salience 4900))
(id-root ?id wing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paMKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wing.clp 	wing1   "  ?id "  paMKa )" crlf))
)

;This is more commonly used
;default_sense && category=noun	pakRa	0
;"wing","N","1.pakRa"
;--"2.paMKa"
;The wing of the swan was injured    .
;
(defrule wing2
(declare (salience 4800))
(id-root ?id wing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paMKa_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wing.clp 	wing2   "  ?id "  paMKa_lagA )" crlf))
)

;"wing","VT","1.paMKa_lagAnA"
;The birds are wingging their way towards the nest.
;
