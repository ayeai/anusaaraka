
(defrule soak0
(declare (salience 5000))
(id-root ?id soak)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id soaking )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id wara-bawara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  soak.clp  	soak0   "  ?id "  wara-bawara )" crlf))
)

;"soaking","Adj","1.wara-bawara"
;I think you are wearing a soaking wet trouser.
;
(defrule soak1
(declare (salience 4900))
(id-root ?id soak)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id soaked )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id BigA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  soak.clp  	soak1   "  ?id "  BigA_huA )" crlf))
)

;"soaked","Adj","1.BigA huA"
;My coat was completely soaked by rain water.
;
;
(defrule soak2
(declare (salience 4800))
(id-root ?id soak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id soKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  soak.clp 	soak2   "  ?id "  soKa )" crlf))
)

;"soak","N","1.soKa"
;Give that part a good soak so that the smell doesn't come.
;--"2.piyakkadZa"
;He's a dreadful old soak.
;
(defrule soak3
(declare (salience 4700))
(id-root ?id soak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bigo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  soak.clp 	soak3   "  ?id "  Bigo )" crlf))
)

;"soak","V","1.BigonA/soKanA"
;Those cups need to soak in soapy water for a minute.
;--"2.warabawara_karaxenA"
;Clean up that tea on that cloth before it soaks in.
;--"3.aXika_pEsA_vasUlanA"
;Always soak the rich.
;
