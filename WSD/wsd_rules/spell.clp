
(defrule spell0
(declare (salience 5000))
(id-root ?id spell)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xOra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spell.clp 	spell0   "  ?id "  xOra )" crlf))
)

;"spell","N","1.xOra/vaSIkaraNa"
;She has reached great heights under the spell of her beauty.
;--"2.jAxU"
;The poet recited a spell.
;
(defrule spell1
(declare (salience 4900))
(id-root ?id spell)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uccAraNa_karanA_yA_liKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spell.clp 	spell1   "  ?id "  uccAraNa_karanA_yA_liKa )" crlf))
)

;"spell","V","1.uccAraNa_karanA_yA_liKanA"
;Some great novelist like Shakespeare used to spell their names differently at different places.
;
