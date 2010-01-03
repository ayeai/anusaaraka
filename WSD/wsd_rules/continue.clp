
(defrule continue0
(declare (salience 5000))
(id-root ?id continue)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 he)
(kriyA-subject ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jArI_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  continue.clp 	continue0   "  ?id "  jArI_raKa )" crlf))
)

(defrule continue1
(declare (salience 4900))
(id-root ?id continue)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 she)
(kriyA-subject ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jArI_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  continue.clp 	continue1   "  ?id "  jArI_raKa )" crlf))
)

(defrule continue2
(declare (salience 4800))
(id-root ?id continue)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 I)
(kriyA-subject ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jArI_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  continue.clp 	continue2   "  ?id "  jArI_raKa )" crlf))
)

(defrule continue3
(declare (salience 4700))
(id-root ?id continue)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 we)
(kriyA-subject ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jArI_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  continue.clp 	continue3   "  ?id "  jArI_raKa )" crlf))
)

(defrule continue4
(declare (salience 4600))
(id-root ?id continue)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 they)
(kriyA-subject ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jArI_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  continue.clp 	continue4   "  ?id "  jArI_raKa )" crlf))
)

(defrule continue5
(declare (salience 4500))
(id-root ?id continue)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 you)
(kriyA-subject ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jArI_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  continue.clp 	continue5   "  ?id "  jArI_raKa )" crlf))
)

(defrule continue6
(declare (salience 4400))
(id-root ?id continue)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jArI_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  continue.clp 	continue6   "  ?id "  jArI_raKa )" crlf))
)

(defrule continue7
(declare (salience 4300))
(id-root ?id continue)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jArI_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  continue.clp 	continue7   "  ?id "  jArI_raha )" crlf))
)

;default_sense && category=verb	jArI_raha	0
;"continue","V","1.jArI_rahanA"
;We cannot continue several servants any longer
;We continued our research into the cause of the illness
;The demonstration continued after a break for lunch
;The bad weather continued for two more weeks
;
;
