
(defrule which0
(declare (salience 5000))
(id-root ?id which)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOnasA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  which.clp 	which0   "  ?id "  kOnasA )" crlf))
)

(defrule which1
(declare (salience 4900))
(id-root ?id which)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) one)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOnasA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  which.clp 	which1   "  ?id "  kOnasA )" crlf))
)

(defrule which2
(declare (salience 4800))
(id-root ?id which)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) ones)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOnasA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  which.clp 	which2   "  ?id "  kOnasA )" crlf))
)

;Which one do you want madam?
(defrule which3
(declare (salience 4700))
(id-root ?id which)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) tell)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOnasA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  which.clp 	which3   "  ?id "  kOnasA )" crlf))
)

(defrule which4
(declare (salience 4600))
(id-root ?id which)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) to)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOnasA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  which.clp 	which4   "  ?id "  kOnasA )" crlf))
)

;I did not know which to choose.
(defrule which5
(declare (salience 4500))
(id-root ?id which)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
(id-word 1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOnasA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  which.clp 	which5   "  ?id "  kOnasA )" crlf))
)

(defrule which6
(declare (salience 4400))
(id-root ?id which)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOnasA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  which.clp 	which6   "  ?id "  kOnasA )" crlf))
)

(defrule which7
(declare (salience 4300))
(id-root ?id which)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id conjunction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jaba_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  which.clp 	which7   "  ?id "  jaba_ki )" crlf))
)

;"which","Conj","1.jaba_ki"
;The maid comes in the morning at which time I am asleep .
;
(defrule which8
(declare (salience 4200))
(id-root ?id which)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id wh_adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOna_sA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  which.clp 	which8   "  ?id "  kOna_sA )" crlf))
)

;"which","Interro","1.kOna_sA"
;Which is your favourite game?.
;Which way do we take for going to the Exhibition Ground.
;
(defrule which9
(declare (salience 4100))
(id-root ?id which)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id relative_pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  which.clp 	which9   "  ?id "  jo )" crlf))
)

;"which","Rel Pron","1.jo"
;You can take the book which is on the table.
;
