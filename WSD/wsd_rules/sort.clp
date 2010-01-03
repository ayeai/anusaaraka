
(defrule sort0
(declare (salience 5000))
(id-root ?id sort)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sort.clp 	sort0   "  ?id "  prakAra )" crlf))
)

(defrule sort1
(declare (salience 4900))
(id-root ?id sort)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CAzta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sort.clp 	sort1   "  ?id "  CAzta )" crlf))
)

;"sort","V","1.CAztanA"
;I have to sort out the letters from the post.
;--"2.cunanA"
;He asked me to sort the pens which do not work.
;
;