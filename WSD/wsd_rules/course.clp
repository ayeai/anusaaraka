
(defrule course0
(declare (salience 5000))
(id-root ?id course)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pATyakrama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  course.clp 	course0   "  ?id "  pATyakrama )" crlf))
)

(defrule course1
(declare (salience 4900))
(id-root ?id course)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  course.clp 	course1   "  ?id "  baha )" crlf))
)

;"course","V","1.bahanA"
;The river coursed down the hill.
;
;
