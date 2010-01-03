
(defrule whose0
(declare (salience 5000))
(id-root ?id whose)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) tell)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOna))
(assert (id-H_vib_mng ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whose.clp 	whose0   "  ?id "  kOna )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng   " ?*wsd_dir* "  whose.clp     whose0   "  ?id " kA )" crlf))
)

(defrule whose1
(declare (salience 4900))
(id-root ?id whose)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
(id-word 1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOna))
(assert (id-H_vib_mng ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whose.clp 	whose1   "  ?id "  kOna )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng   " ?*wsd_dir* "  whose.clp     whose1   "  ?id " kA )" crlf))
)

(defrule whose2
(declare (salience 4800))
(id-root ?id whose)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id wh_adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kisakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whose.clp 	whose2   "  ?id "  kisakA )" crlf))
)

;"whose","Interro","1.kisakA"
;Whose car is that?.
;
(defrule whose3
(declare (salience 4700))
(id-root ?id whose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id relative_pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jisakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whose.clp 	whose3   "  ?id "  jisakA )" crlf))
)

;"whose","Rel Pron","1.jisakA"
;The boy whose book it is, will come later.
;
