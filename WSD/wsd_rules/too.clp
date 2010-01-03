
;Added by human
(defrule too0
(declare (salience 5000))
(id-root ?id too)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jyAxA_hI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  too.clp 	too0   "  ?id "  jyAxA_hI )" crlf))
)

(defrule too1
(declare (salience 4900))
(id-root ?id too)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jyAxA_hI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  too.clp 	too1   "  ?id "  jyAxA_hI )" crlf))
)

;It is too difficult to lift
(defrule too2
(declare (salience 4800))
(id-root ?id too)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) ,)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  too.clp 	too2   "  ?id "  BI )" crlf))
)

;Children, too, like it.
(defrule too3
(declare (salience 4700))
(id-root ?id too)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) so)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  too.clp 	too3   "  ?id "  - )" crlf))
)

;Rama climbed up the ladder Mohan did so too.
(defrule too4
(declare (salience 4600))
(id-root ?id too)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  too.clp 	too4   "  ?id "  BI )" crlf))
)

(defrule too5
(declare (salience 4500))
(id-root ?id too)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jyAxA_hI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  too.clp 	too5   "  ?id "  jyAxA_hI )" crlf))
)

;"too","Adv","1.jyAxA_hI/bahuwa"
;This bag is too big to carry.
;--"2.BI"
;He has a Mercedes, too.
;
;
