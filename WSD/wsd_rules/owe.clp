
(defrule owe0
(declare (salience 5000))
(id-root ?id owe)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id owing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xeya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  owe.clp  	owe0   "  ?id "  xeya )" crlf))
)

;"owing","Adj","1.xeya"
;Rs.100 is still owing
;
(defrule owe1
(declare (salience 4900))
(id-root ?id owe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id qNI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  owe.clp 	owe1   "  ?id "  qNI_ho )" crlf))
)

;default_sense && category=verb	qNI_ho	0
;"owe","VT","1.qNI_honA"
;
;