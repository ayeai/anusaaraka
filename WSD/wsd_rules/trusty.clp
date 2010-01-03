
(defrule trusty0
(declare (salience 5000))
(id-root ?id trusty)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSvAsI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trusty.clp 	trusty0   "  ?id "  viSvAsI )" crlf))
)

;"trusty","Adj","1.viSvAsI"
;My trusty old friend came to my help.
;
(defrule trusty1
(declare (salience 4900))
(id-root ?id trusty)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSvasanIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trusty.clp 	trusty1   "  ?id "  viSvasanIya )" crlf))
)

;"trusty","N","1.viSvasanIya"
;--"2.kExI{jisako_usakI_ImAnaxArI_ke_kAraNa_viReSAXikAra_xiyA_ho}"
;He is a trusty in the jail.
;
