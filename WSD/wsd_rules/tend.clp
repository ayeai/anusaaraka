
(defrule tend0
(declare (salience 5000))
(id-root ?id tend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeKaBAla_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tend.clp 	tend0   "  ?id "  xeKaBAla_kara )" crlf))
)

;"tend","V","1.xeKaBAla_karanA"
;The doctor is tending the injured.
;
(defrule tend1
(declare (salience 4900))
(id-root ?id tend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pravqwwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tend.clp 	tend1   "  ?id "  pravqwwa_ho )" crlf))
)

;"tend","VTI","1.pravqwwa_honA"
;The cyclone tends to advance in the eastern direction.
;
