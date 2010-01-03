
(defrule where0
(declare (salience 5000))
(id-root ?id where)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kahAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  where.clp 	where0   "  ?id "  kahAz )" crlf))
)

(defrule where1
(declare (salience 4900))
(id-root ?id where)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) tell)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kahAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  where.clp 	where1   "  ?id "  kahAz )" crlf))
)

(defrule where2
(declare (salience 4800))
(id-root ?id where)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) to)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kahAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  where.clp 	where2   "  ?id "  kahAz )" crlf))
)

;I did not know where to go.
(defrule where3
(declare (salience 4700))
(id-root ?id where)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
(id-word 1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kahAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  where.clp 	where3   "  ?id "  kahAz )" crlf))
)

(defrule where4
(declare (salience 4600))
(id-root ?id where)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id wh_adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kahAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  where.clp 	where4   "  ?id "  kahAz )" crlf))
)

;"where","Interro","1.kahAz"
;Where do you stay?.
;
(defrule where5
(declare (salience 4500))
(id-root ?id where)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id relative_pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jisa_sWAna_para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  where.clp 	where5   "  ?id "  jisa_sWAna_para )" crlf))
)

;"where","Rel Pron","1.jisa_sWAna_para"
;The place where you are staying is very congested.
;
(defrule where6
(declare (salience 4400))
(id-root ?id where)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kahAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  where.clp 	where6   "  ?id "  kahAz )" crlf))
)
;Modified by Sukhada. jahAz => kahAz
;The most famous tamrind tree in India is in Gwaliar, where it stand near the ..
