
(defrule letter0
(declare (salience 5000))
(id-root ?id letter)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id lettering )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id leKana-prakriyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  letter.clp  	letter0   "  ?id "  leKana-prakriyA )" crlf))
)

;"lettering","N","1.leKana-prakriyA"
;
(defrule letter1
(declare (salience 4900))
(id-root ?id letter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  letter.clp 	letter1   "  ?id "  pawra )" crlf))
)

;"letter","N","1.pawra[akRara]"
;--"2.akRara"
;Letters of alphabet. 
;--"3.pawra"
;I have received your letter.
;
