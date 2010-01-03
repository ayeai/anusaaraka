
(defrule under0
(declare (salience 5000))
(id-root ?id under)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) law)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_aMwargawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  under.clp 	under0   "  ?id "  ke_aMwargawa )" crlf))
)

(defrule under1
(declare (salience 4900))
(id-root ?id under)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_nIce))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  under.clp 	under1   "  ?id "  ke_nIce )" crlf))
)

;"under","Prep","1.ke_nIce/ke_wale/se_kama/ke_aXIna"
;He is doing his doctorate under Prof.Mohan.
;
