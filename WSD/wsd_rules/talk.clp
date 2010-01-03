
(defrule talk0
(declare (salience 5000))
(id-root ?id talk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAwacIwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  talk.clp 	talk0   "  ?id "  bAwacIwa )" crlf))
)

;"talk","N","1.bAwacIwa"
;Let's have more work && less talk around here.
;--"2.gapaSapa"
;There has been talk about you.
;--"3.vAxa-vivAxa"
;I attended an interesting talk on local history.
;

(defrule talk1
(declare (salience 4900))
(id-root ?id talk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAwacIwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  talk.clp 	talk1   "  ?id "  bAwacIwa_kara )" crlf))
)

;"talk","VT","1.bAwacIwa_karanA"
;We talked for a long time.
;--"2.bola_sakanA"
;Children learn to talk faster.
;
