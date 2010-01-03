
(defrule poor0
(declare (salience 5000))
(id-root ?id poor)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poor.clp 	poor0   "  ?id "  xIna )" crlf))
)

;"poor","Adj","1.xIna/xarixra"
;According to me, being poor is a curse for a human being.
;--"2.alpa"
;This soil is poor in nutrients.
;--"3.KarAba"
;They sold very poor quality wool.
;--"4.aBAgA/becArA"
;The poor girl has nothing to eat.
;
(defrule poor1
(declare (salience 4900))
(id-root ?id poor)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poor.clp 	poor1   "  ?id "  xIna )" crlf))
)

;"poor","N","1.xIna/xarixra"
;According to me, being poor is a curse for a human being.
;--"2.alpa"
;This soil is poor in nutrients.
;--"3.KarAba"
;They sold very poor quality wool.
;--"4.aBAgA/becArA"
;The poor girl has nothing to eat.
;
