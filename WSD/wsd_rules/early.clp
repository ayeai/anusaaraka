
(defrule early0
(declare (salience 5000))
(id-root ?id early)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id earlier )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pahale_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  early.clp  	early0   "  ?id "  pahale_kA )" crlf))
)

; earlier version
(defrule early1
(declare (salience 4900))
(id-root ?id early)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id earlier )
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id isase_pahale))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  early.clp  	early1   "  ?id "  isase_pahale )" crlf))
)

;"earlier","Adv","1.pahale_[kA]"
;The workers went on vacation earlier in this season.
;
;Rules generated by wasp machine
(defrule early2
(declare (salience 4800))
(id-root ?id early)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id earliest )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id SurU_SurU_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  early.clp  	early2   "  ?id "  SurU_SurU_meM )" crlf))
)

(defrule early3
(declare (salience 4700))
(id-root ?id early)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SurU_SurU_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  early.clp 	early3   "  ?id "  SurU_SurU_meM )" crlf))
)

(defrule early4
(declare (salience 4600))
(id-root ?id early)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jalxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  early.clp 	early4   "  ?id "  jalxI )" crlf))
)

;"early","Adv","1.jalxI"
;He has to go to school early today .
;
;
