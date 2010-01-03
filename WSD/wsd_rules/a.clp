;Added by Amba
(defrule a0
(declare (salience 5000))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) million)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp 	a0   "  ?id "  - )" crlf))
)

; A million attended.
;(defrule a1
;(declare (salience 4900))
;(id-root ?id a)
;?mng <-(meaning_to_be_decided ?id)
;(id-word =(+ ?id 1) car)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id -))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp 	a1   "  ?id "  - )" crlf))
;)

; She knows how to drive a car.
(defrule a2
(declare (salience 4800))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) distinction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp 	a2   "  ?id "  - )" crlf))
)

(defrule a3
(declare (salience 4700))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) third)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp 	a3   "  ?id "  - )" crlf))
)

(defrule a4
(declare (salience 4600))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) second)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp 	a4   "  ?id "  - )" crlf))
)

(defrule a5
(declare (salience 4500))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) first)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp 	a5   "  ?id "  - )" crlf))
)

(defrule a6
(declare (salience 4400))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) single)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp 	a6   "  ?id "  - )" crlf))
)

(defrule a7
(declare (salience 4300))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) wash)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp 	a7   "  ?id "  - )" crlf))
)

(defrule a8
(declare (salience 4200))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) little)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp 	a8   "  ?id "  - )" crlf))
)

(defrule a9
(declare (salience 4100))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) hurry)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp 	a9   "  ?id "  - )" crlf))
)

(defrule a10
(declare (salience 4000))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) lot)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp 	a10   "  ?id "  - )" crlf))
)

(defrule a11
(declare (salience 3900))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) few)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp 	a11   "  ?id "  - )" crlf))
)

(defrule a12
(declare (salience 3800))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) even)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp 	a12   "  ?id "  eka )" crlf))
)

(defrule a13
(declare (salience 3700))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) called)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp 	a13   "  ?id "  - )" crlf))
)

(defrule a14
(declare (salience 3600))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) what)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp 	a14   "  ?id "  - )" crlf))
)

(defrule a15
(declare (salience 3500))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) many)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp 	a15   "  ?id "  - )" crlf))
)






;;Commented by Meena(30.10.09)
;There was a forest near the village . 
;(defrule a16
;(declare (salience -1000))
;;(declare (salience 3400))
;(id-root ?id a)
;?mng <-(meaning_to_be_decided ?id)
;(id-word =(- ?id 1) was )
;(id-word =(- ?id 2) there)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id eka))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp 	a16   "  ?id "  eka )" crlf))
;)






(defrule a17
(declare (salience -1000))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp 	a17   "  ?id "  - )" crlf))
)



;Added by Meena(aug'09)
;We need a president who understands us.
;Phil gave me a sweater which he bought in Paris .
(defrule a18
(declare (salience 3300))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-jo_samAnAXikaraNa  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_EsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp    a18   "  ?id "  eka_EsA )" crlf))
)




;Added by Meena(17.9.09)
;Would you like a cup of tea?
(defrule a19
(declare (salience 3300))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
(id-root =(+ ?id 1) cup|glass|bowl|plate)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp         a19   "  ?id "  eka )" crlf))
)



;Added by Meena(13.10.09)
;One day a small opening appeared.
(defrule a20
(declare (salience 3300))
(id-root ?id a)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?id1 ?id)
(or (viSeRya-viSeRaNa ?id1 ?id2)(viSeRya-wulanAwmaka_viSeRaNa ?id1 ?id2)) 
(not (id-root ?id1 sound|shame|success|effect|idea|manner))
(not(id-cat_coarse ?id1 PropN))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  a.clp         a20   "  ?id "  eka )" crlf))
)
;Modified by Shirisha Manju (added viSeRya-wulanAwmaka_viSeRaNa )
;Ex: John is quite certainly a better choice .

