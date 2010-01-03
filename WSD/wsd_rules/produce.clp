
(defrule produce0
(declare (salience 5000))
(id-root ?id produce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upaja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  produce.clp 	produce0   "  ?id "  upaja )" crlf))
)

;"produce","N","1.upaja"
;This year a large part of paddy produce got ruined by heavy rains.
;--"2.uwpAxa"
;The factory sells its produce in the local markets.
;
(defrule produce1
(declare (salience 4900))
(id-root ?id produce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwpAxana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  produce.clp 	produce1   "  ?id "  uwpAxana_kara )" crlf))
)

;"produce","V","1.uwpAxana_karanA"
;My uncle's factory produce shoes.
;--"2.racanA_karanA"
;Monalisa was the best work produced by Picasso.
;--"3.parisWiwi_uwpanna_karanA"
;My arrival at home produced many problems for him.
;--"4.praswuwa_karanA"
;The operator produced the bill immediately.
;
