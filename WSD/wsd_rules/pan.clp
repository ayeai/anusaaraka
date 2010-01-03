
(defrule pan0
(declare (salience 5000))
(id-root ?id pan)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wavA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pan.clp 	pan0   "  ?id "  wavA )" crlf))
)

(defrule pan1
(declare (salience 4900))
(id-root ?id pan)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wasale_meM_kuCa_Xo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pan.clp 	pan1   "  ?id "  wasale_meM_kuCa_Xo )" crlf))
)

;"pan","V","1.wasale meM kuCa XonA"
;The prospectors living in South Africa pan for gold && live their life.
;--"2."
;The BSP candidate was panned during his visit to Meerut.
;--"3."
;The photographer panned the camera to take perfect snaps.
;
;