
(defrule more0
(declare (salience 5000))
(id-root ?id more)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  more.clp 	more0   "  ?id "  aXika )" crlf))
)

(defrule more1
(declare (salience 4900))
(id-root ?id more)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  more.clp 	more1   "  ?id "  aXika )" crlf))
)

;default_sense && category=adjective	aXika	0
;"more","Adj","1.aXika/jyAxA"
;I have more pens than he has.
;
;
