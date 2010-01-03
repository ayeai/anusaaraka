
(defrule trim0
(declare (salience 5000))
(id-root ?id trim)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id trimming )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id upakaraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  trim.clp  	trim0   "  ?id "  upakaraNa )" crlf))
)

;"trimming","N","1.upakaraNa"
;Baked potato && all the trimmings were on the table.
;
(defrule trim1
(declare (salience 4900))
(id-root ?id trim)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka-TAka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trim.clp 	trim1   "  ?id "  TIka-TAka )" crlf))
)

;"trim","Adj","1.TIka-TAka"
;She has a trim figure.
;
(defrule trim2
(declare (salience 4800))
(id-root ?id trim)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suvyavasWiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trim.clp 	trim2   "  ?id "  suvyavasWiwa )" crlf))
)

;"trim","N","1.suvyavasWiwa"
;The garden was trim && nice.
;
(defrule trim3
(declare (salience 4700))
(id-root ?id trim)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAta_CAzta_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trim.clp 	trim3   "  ?id "  kAta_CAzta_kara )" crlf))
)

;"trim","VT","1.kAta_CAzta_karanA"
;He trimmed the hedges recently.
;
