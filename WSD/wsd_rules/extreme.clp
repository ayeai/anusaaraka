
(defrule extreme0
(declare (salience 5000))
(id-root ?id extreme)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id carama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extreme.clp 	extreme0   "  ?id "  carama )" crlf))
)

;"extreme","Adj","1.carama/awyanwa"
;He carried the argument to extremes.
;Extreme cold
;An extreme example
;An extreme conservative
;The extreme edge of town
;
(defrule extreme1
(declare (salience 4900))
(id-root ?id extreme)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sirA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extreme.clp 	extreme1   "  ?id "  sirA )" crlf))
)

;"extreme","N","1.sirA"
;We have to go to the extreme edge of town to find him.
;
