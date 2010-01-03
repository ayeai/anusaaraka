
(defrule saw0
(declare (salience 5000))
(id-root ?id saw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  saw.clp 	saw0   "  ?id "  ArA )" crlf))
)

;"saw","N","1.ArA"
;The saw is used in cutting woods.
;
(defrule saw1
(declare (salience 4900))
(id-root ?id saw)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id ~saw)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ArA_calA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  saw.clp 	saw1   "  ?id "  ArA_calA )" crlf))
)



;Last week I saw a great movie .


;Modified by Meena(24.10.09)
;I saw you put the key in your pocket .  
(defrule saw2
(declare (salience 4800))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id saw)
(kriyA-subject ?id ?sub_id)
;(id-word ?sub_id ~I)
;(id-root-category-suffix-number ?sub_id $? s)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeKa))
(assert (id-wsd_root ?id see))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  saw.clp      saw2   "  ?id "  xeKa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  saw.clp      saw2   "  ?id " see )" crlf))
)



;In case of the word 'saw' 'xeKanA' is more preferred.
;"saw","V","1.ArA_calAnA"
;Saw wood to make any furniture.


;Modified by Meena
;Guess who I saw at the party last night ! 
(defrule saw3
(declare (salience 4900))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id saw)
(id-root ?id1 ?)
(kriyA-object ?id ?id1)
(not (id-root ?id1 movie))      ;Added by Meena(14.10.09),to avoid this rule for the sentence=> Last week I saw a great movie . as we don't require object viBakwi "ko" here  
(kriyA-subject ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeKa))
(assert (id-wsd_root ?id see))
(assert (kriyA_id-object_viBakwi ?id ko))
(assert (kriyA_id-subject_viBakwi ?id ne))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  saw.clp    saw3   "  ?id "  xeKa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  saw.clp    saw3   "  ?id " ko )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  saw.clp    saw3   "  ?id " ne )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  saw.clp    saw3   "  ?id " see )" crlf))
)

