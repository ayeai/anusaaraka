
(defrule plank0
(declare (salience 5000))
(id-root ?id plank)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id planking )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id waKwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  plank.clp  	plank0   "  ?id "  waKwA )" crlf))
)

;"planking","N","1.waKwA"
;This table was made of rough planking.
;
(defrule plank1
(declare (salience 4900))
(id-root ?id plank)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waKwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plank.clp 	plank1   "  ?id "  waKwA )" crlf))
)

;"plank","N","1.waKwA"
;A long narrow flat piece of wood is called plank.
;--"2.GoRaNA pawra"
;Increased spending on road is the main plank of the government's transport policy.
;
;