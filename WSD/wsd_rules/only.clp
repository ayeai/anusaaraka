
(defrule only0
(declare (salience 5000))
(id-root ?id only)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) the )
(id-word =(+ ?id 1) son)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id akelA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  only.clp 	only0   "  ?id "  akelA )" crlf))
)

(defrule only1
(declare (salience 4900))
(id-root ?id only)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) the )
(id-word =(+ ?id 1) daughter)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id akelA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  only.clp 	only1   "  ?id "  akelA )" crlf))
)

;I am the only son of my parents.
(defrule only2
(declare (salience 4800))
(id-root ?id only)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) the)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekamAwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  only.clp 	only2   "  ?id "  ekamAwra )" crlf))
)

;This is the only bed available.
(defrule only3
(declare (salience 4700))
(id-root ?id only)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kevala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  only.clp 	only3   "  ?id "  kevala )" crlf))
)

;"only","Adj","1.kevala/akelA"
;Only he could do such a foolish thing.
;
(defrule only4
(declare (salience 4600))
(id-root ?id only)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sirPZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  only.clp 	only4   "  ?id "  sirPZa )" crlf))
)

;"only","Adv","1.sirPZa"
;He arrived only to find his wife dead.
;
