
(defrule anger0
(declare (salience 5000))
(id-root ?id anger)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kroXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anger.clp 	anger0   "  ?id "  kroXa )" crlf))
)

;"anger","N","1.kroXa"
;She sensed my growing anger.
;
(defrule anger1
(declare (salience 4900))
(id-root ?id anger)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kroXiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anger.clp 	anger1   "  ?id "  kroXiwa_kara )" crlf))
)

;"anger","VT","1.kroXiwa_karanA"
;The spectators were angered when he threw his wicket with only 1 run on the
;scoreboard.
;
