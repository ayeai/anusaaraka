
(defrule prostrate0
(declare (salience 5000))
(id-root ?id prostrate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id OMXe_muzha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prostrate.clp 	prostrate0   "  ?id "  OMXe_muzha )" crlf))
)

;"prostrate","Adj","1.OMXe_muzha[sARtAMga]"
;--"2.OMXe_muzha"
;The police found the woman prostrate on the ground.
;--"3.xaNdavaw"
;She fell prostrate before the deity.
;
(defrule prostrate1
(declare (salience 4900))
(id-root ?id prostrate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xaNdavaw_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prostrate.clp 	prostrate1   "  ?id "  xaNdavaw_kara )" crlf))
)

;"prostrate","V","1.xaNdavaw_karanA"
;The piligrims prostrated before the deity.
;
