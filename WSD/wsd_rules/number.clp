
(defrule number0
(declare (salience 5000))
(id-root ?id number)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 large)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMKyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  number.clp 	number0   "  ?id "  saMKyA )" crlf))
)

(defrule number1
(declare (salience 4900))
(id-root ?id number)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  number.clp 	number1   "  ?id "  aMka )" crlf))
)

;"number","N","1.aMka/saMKyA"
;Every number has a unique position in the sequence.
;--"2.bahuwa_sAre"
;He had a number of chores to do.
;--"1.gAnA/kaviwA"
;She sang a beautiful number.
;
(defrule number2
(declare (salience 4800))
(id-root ?id number)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gina))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  number.clp 	number2   "  ?id "  gina )" crlf))
)

;"number","VT","1.ginanA"
;You should number the pages of the thesis.
;
