
(defrule native0
(declare (salience 5000))
(id-root ?id native)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeSI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  native.clp 	native0   "  ?id "  xeSI )" crlf))
)

;"native","Adj","1.xeSI"
;This area's native tongue is Hindi.
;
(defrule native1
(declare (salience 4900))
(id-root ?id native)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUla_nivAsI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  native.clp 	native1   "  ?id "  mUla_nivAsI )" crlf))
)

;"native","N","1.mUla_nivAsI"
;I am a native of M.P..
;
