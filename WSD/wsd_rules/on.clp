
(defrule on0
(declare (salience 5000))
(id-root ?id on)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(- ?id 1) noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  on.clp 	on0   "  ?id "  para )" crlf))
)

(defrule on1
(declare (salience 4900))
(id-root ?id on)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) charge|attack|complaint|cost|electric charge|care|guardianship|rush|thrill|excitement|emotion|feeling|billing|asking|accusation|explosive charge)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  on.clp 	on1   "  ?id "  meM )" crlf))
)

(defrule on2
(declare (salience 4800))
(id-root ?id on)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) panel|commiittee)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  on.clp 	on2   "  ?id "  para )" crlf))
)

(defrule on3
(declare (salience 4700))
(id-root ?id on)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) sunday|monday|tuesday|wednesday|thursday|friday|saturday)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  on.clp 	on3   "  ?id "  ko )" crlf))
)

(defrule on4
(declare (salience 4600))
(id-root ?id on)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) cash|money|gun|drugs)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_pAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  on.clp 	on4   "  ?id "  ke_pAsa )" crlf))
)

(defrule on5
(declare (salience 4500))
(id-root ?id on)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagAwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  on.clp 	on5   "  ?id "  lagAwAra )" crlf))
)

;"on","Adv","1.lagAwAra"
;She talked on for two hours without stopping.
;
(defrule on6
(declare (salience 4400))
(id-root ?id on)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  on.clp 	on6   "  ?id "  para )" crlf))
)

;"on","Prep","1.para"
;The book is on the table.
;
