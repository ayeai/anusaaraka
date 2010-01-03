
(defrule whom0
(declare (salience 5000))
(id-root ?id whom)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jisa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whom.clp 	whom0   "  ?id "  jisa )" crlf))
)

(defrule whom1
(declare (salience 4900))
(id-root ?id whom)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) tell)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOna-))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whom.clp 	whom1   "  ?id "  kOna- )" crlf))
)

(defrule whom2
(declare (salience 4800))
(id-root ?id whom)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) to)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOna-))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whom.clp 	whom2   "  ?id "  kOna- )" crlf))
)

; I did not know whom to ask
(defrule whom3
(declare (salience 4700))
(id-root ?id whom)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
(id-word 1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOna-))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whom.clp 	whom3   "  ?id "  kOna- )" crlf))
)

(defrule whom4
(declare (salience 4600))
(id-root ?id whom)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOna-))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whom.clp 	whom4   "  ?id "  kOna- )" crlf))
)

(defrule whom5
(declare (salience 4500))
(id-root ?id whom)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kise))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whom.clp 	whom5   "  ?id "  kise )" crlf))
)

;"whom","Pron","1.kise"
;Whom should I call for the party?.
;
