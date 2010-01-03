
(defrule boast0
(declare (salience 5000))
(id-root ?id boast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dIMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  boast.clp 	boast0   "  ?id "  dIMga )" crlf))
)

(defrule boast1
(declare (salience 4900))
(id-root ?id boast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id garva_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  boast.clp 	boast1   "  ?id "  garva_kara )" crlf))
)

;default_sense && category=noun	dIMga	0
;"boast","N","1.dIMga"
;His boast that he has achieved a lot in life impressed nobody.
;--"2.garva"
;It was his proud boast that he was sincere in his work despite his
;illness.
;
;