
(defrule by0
(declare (salience 5000))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 pass)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kawarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " by.clp	by0  "  ?id "  " ?id1 "  kawarA  )" crlf))
)

(defrule by1
(declare (salience 4900))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 pass)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kawarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " by.clp	by1  "  ?id "  " ?id1 "  kawarA  )" crlf))
)

(defrule by2
(declare (salience 4800))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) jolt|tarnish)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_kAraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by2   "  ?id "  ke_kAraNa )" crlf))
)

(defrule by3
(declare (salience 4700))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) is|are|be|was|were|been|am)
(id-word =(+ ?id 1) integer|whole number|number)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by3   "  ?id "  ka )" crlf))
)

(defrule by4
(declare (salience 4600))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) miss )
(id-word =(+ ?id 1) measure|step|action|quantity|amount|measurement|meter|metre|bar|unit|dimension|dimensions|meters)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by4   "  ?id "  waka )" crlf))
)

(defrule by5
(declare (salience 4500))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) swear|vow)
(id-word =(+ ?id 1) god|bible|geeta|gita)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by5   "  ?id "  kI )" crlf))
)

(defrule by6
(declare (salience 4400))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) join)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by6   "  ?id "  se )" crlf))
)

(defrule by7
(declare (salience 4300))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) walk)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAsa_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by7   "  ?id "  pAsa_se )" crlf))
)

(defrule by8
(declare (salience 4200))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) is|are|was|were|am|sit|sleep|stand)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAsa_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by8   "  ?id "  pAsa_meM )" crlf))
)

;He was standing by me
(defrule by9
(declare (salience 4100))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) measure|step|action|quantity|amount|measurement|meter|metre|bar|unit|dimension|dimensions|meters)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_xvArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by9   "  ?id "  ke_xvArA )" crlf))
)

; It gets replaced by a new one.
(defrule by10
(declare (salience 4000))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) down )
(id-word =(+ ?id 1) weight)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_kAraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by10   "  ?id "  ke_kAraNa )" crlf))
)

(defrule by11
(declare (salience 3900))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) time|time period|period of time|period|moment|minute|second|instant|point in time|clock time|hour)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by11   "  ?id "  waka )" crlf))
)

; time is subset of measure, && hence order is important.




;Added by Meena(12.11.09)
;By 2012 the task will be completed.
(defrule by011
(declare (salience 3900))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-cat =(+ ?id 1) <num>)
(kriyA-by_saMbanXI  ?id1 =(+ ?id 1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp        by011   "  ?id "  waka )" crlf))
)















(defrule by12
(declare (salience 3800))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) measure|step|action|quantity|amount|measurement|meter|metre|bar|unit|dimension|dimensions|meters )
(id-word =(+ ?id 1) measure|step|action|quantity|amount|measurement|meter|metre|bar|unit|dimension|dimensions|meters)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id guNA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by12   "  ?id "  guNA )" crlf))
)

(defrule by13
(declare (salience 3700))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) measure|step|action|quantity|amount|measurement|meter|metre|bar|unit|dimension|dimensions|meters)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_hisAba_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by13   "  ?id "  ke_hisAba_se )" crlf))
)

(defrule by14
(declare (salience 3600))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) watch|law)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_anusAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by14   "  ?id "  ke_anusAra )" crlf))
)

(defrule by15
(declare (salience 3500))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samIpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by15   "  ?id "  samIpa )" crlf))
)

;"by","Adv","1.samIpa"
;He took the pen when noone was by.



;Added by Meena(9.11.09)
;They were awakened by the sound of a gun.
;I was awakened by a gun's sound . 
(defrule by16
(declare (salience 3500))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?id1 ?id2)
(or(viSeRya-of_saMbanXI  ?id2 ?id3)(viSeRya-RaRTI_viSeRaNa  ?id2 ?id3))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp        by16   "  ?id "  se )" crlf))
)




;Added by Meena(10.11.09)
;The book was read by Meera.
(defrule by17
(declare (salience 3400))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_xvArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp        by17   "  ?id "  ke_xvArA )" crlf))
)




;Salience reduced by Meena(9.11.09)
(defrule by18
(declare (salience 1000))
;(declare (salience 3400))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_xvArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by18   "  ?id "  ke_xvArA )" crlf))
)

;xvArA is more frequent, followed by 'se' followed by 'pAsa_meM'
;default_sense && category=preposition	pAsa_meM	0
;"by","Prep","1.pAsa_meM/sAWa_meM"
;She came && sat by me.
;--"2.xvArA"
;The book was given to him by Ram.
;--"3.se"
;He was holding the child by hand.
;



;Salience reduced by Meena(10.11.09)
(defrule by19
(declare (salience -1000))
;(declare (salience 3300))
(id-root ?id by)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  by.clp 	by19   "  ?id "  se )" crlf))
)

