
(defrule worry0
(declare (salience 5000))
(id-root ?id worry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id worrying )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id cinwAkAraka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  worry.clp  	worry0   "  ?id "  cinwAkAraka )" crlf))
)

;"worrying","Adj","1.cinwAkAraka"
;His behaviour is worrying.
;
(defrule worry1
(declare (salience 4900))
(id-root ?id worry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id worried )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id cinwiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  worry.clp  	worry1   "  ?id "  cinwiwa )" crlf))
)

(defrule worry2
(declare (salience 4800))
(id-root ?id worry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ciMwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  worry.clp 	worry2   "  ?id "  ciMwA )" crlf))
)

;"worry","N","1.ciMwA"
;Each profession has its worries.
;
(defrule worry3
(declare (salience 4700))
(id-root ?id worry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ciMwiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  worry.clp 	worry3   "  ?id "  ciMwiwa_ho )" crlf))
)

;"worry","VT","1.ciMwiwa_honA"
;Raju is worried about his health.
;--"2.pareSAna_karanA"
;Don't worry her, she is already disturbed.
;
