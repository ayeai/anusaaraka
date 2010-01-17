

;Added by Veena Bagga (31-12-09) 

(defrule biological0
(declare (salience 6400))
(id-root ?id biological)
;(Any)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jEvika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "   biological.clp      biological0  "  ?id "  jEvika" crlf))
)
;She decided to search her biological mother . 
