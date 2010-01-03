
(defrule bother0
(declare (salience 5000))
(id-root ?id bother)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pareSAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bother.clp 	bother0   "  ?id "  pareSAnI )" crlf))
)

;"bother","N","1.pareSAnI"
(defrule bother1
(declare (salience 4900))
(id-root ?id bother)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waMga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bother.clp 	bother1   "  ?id "  waMga_kara )" crlf))
)

;"bother","VT","1.waMga_karanA"
;Mosquitoes buzzing in my ear really bothers me
;Don't bother the professor while she is grading term papers
;The mere thought of her bothered him && made his heart beat faster
;
