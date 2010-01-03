
(defrule boat0
(declare (salience 5000))
(id-root ?id boat)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id boating )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id nOkA-vihAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  boat.clp  	boat0   "  ?id "  nOkA-vihAra_kara )" crlf))
)

;"boating","VI","1.nOkA-vihAra_karanA"
;We go boating on Hussain Sagar lake every Friday.
;
(defrule boat1
(declare (salience 4900))
(id-root ?id boat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  boat.clp 	boat1   "  ?id "  nAva )" crlf))
)

;"boat","N","1.nAva"
;We crossed the river by a small boat.
;
;
