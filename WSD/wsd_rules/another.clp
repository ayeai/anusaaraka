
(defrule another0
(declare (salience 5000))
(id-root ?id another)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_Ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  another.clp 	another0   "  ?id "  eka_Ora )" crlf))
)

;"another","Adj","1.eka_Ora/xUsarA"
;Would you like to have another cup of tea?
;Take this book && bring another one.
;
(defrule another1
(declare (salience 4900))
(id-root ?id another)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_Ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  another.clp 	another1   "  ?id "  eka_Ora )" crlf))
)

;"another","Det","1.eka_Ora"
