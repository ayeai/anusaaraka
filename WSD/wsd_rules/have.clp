;Added by Meena(15.10.09)
;The towns have people largely from the factories and their families .
(defrule have0
(declare (salience 5500))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(id-root ?id1 town|city|party|assembly|country|university|bus|train)
;(id-word =(- ?id 1) town|city|party|assembly|country)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(assert (kriyA_id-subject_viBakwi ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  have.clp        have0   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi  " ?*wsd_dir* "  have.clp        have0   "  ?id " meM )" crlf)
))



;File modified by Meena(Aug '09)
;Check this rule for "having" for the following sentences where we have different meanings for "having"
;We’re having the kids for the weekend.I was having difficulty in staying awake.
;We’re having our car repaired.She’s always having the builders in to do something or other.
;Added by Meena(12.10.09)
;(defrule have1
;(declare (salience 5000))
;(id-root ?id have)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id having)
;; we should put a list of all things animate (except human relations),inanimate and use the semantic relation
;(kriyA-object ?id ?id1)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id hE ))
;(assert (kriyA_id-subject_viBakwi ?id ))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp      have1   "  ?id "  hE )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-id-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp      have1   "  ?id " ke_pAsa )" crlf)
;)
;)



;I have a cow.
(defrule have2
(declare (salience 5000))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id have)
(id-root ?id1 cow|money|dog|rupee|computer|cat|house|shirts|servant|carpet|blanket|dollar|cycle|scooter)
; we should put a list of all things animate (except human relations),inanimate and use the semantic relation
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE ))
(assert (kriyA_id-subject_viBakwi ?id ke_pAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have2   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp      have2   "  ?id " ke_pAsa )" crlf)
)
)

(defrule have3
(declare (salience 4900))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id have)
(id-root ?id1 grandfather|grandmother|child|son|daughter|uncle|aunt|auntie|father|mother|brother|sister|husband|wife|friend|servant|maid|maid)
;we should put a list of all  human relations and use the semantic relation
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(assert (kriyA_id-subject_viBakwi ?id ke))
;(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have3   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp      have3   "  ?id "  ke )" crlf)
)
)
;karma=servants	hE<subj:ke>	0




;Tested (Meena 24.10.09)
;I have difficulty in understanding Mathematics . 
(defrule have4
(declare (salience 3300))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id have)
(id-word ?id1 headache|objection|difficulty|trouble|toothache|fever)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have4   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp      have4   "  ?id " ko )" crlf)
))


(defrule have5
(declare (salience 2700))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id have)
(id-word ?id1 nap|sleep|shower)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have5   "  ?id "  le )" crlf))
)


(defrule have6
(declare (salience 2500))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id have)
(id-word ?id1 walk)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have6   "  ?id "  le )" crlf))
)


(defrule have7
(declare (salience 2300))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id have)
(id-root ?id1 dream)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have7   "  ?id "  A )" crlf))
)



;Added by Meena(12.10.09)
;I am having my dinner.
(defrule have8
(declare (salience 2200))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id having)
(id-root ?id1 lunch|dinner|meal|supper|cake|biscuit)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp      have8   "  ?id "  KA )" crlf))
)



(defrule have9
(declare (salience 2200))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id have)
(id-root ?id1 lunch|dinner|meal|supper|cake|biscuit)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have9   "  ?id "  KA )" crlf))
)


(defrule have10
(declare (salience 1500))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id have)
(id-root ?id1 drink|water|milk|tea|coffee|beer|coke)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have10   "  ?id "  pI )" crlf))
)



(defrule have11
(declare (salience 900))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 breakfast|rest|bath|wash|talk)
(id-word ?id have)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have11   "  ?id "  kara )" crlf))
)




(defrule have12
(declare (salience 400))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id have)
(id-root =(+ ?id 1) his|her|my|our|their|your)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(assert (kriyA_id-subject_viBakwi ?id ke))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have12   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp      have12   "  ?id " ke  )" crlf)
)
)




(defrule have13
(declare (salience -200))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id have)
(id-word ?id1 opportunity)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(assert (kriyA_id-subject_viBakwi ?id ke_pAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have13   "  ?id "  ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp      have13   "  ?id " ke_pAsa )" crlf)
)
)




(defrule have14
(declare (salience -300))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id have)
(id-word ?id1 faith)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(assert (kriyA_id-subject_viBakwi ?id ke))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have14   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp      have14   "  ?id " ke )" crlf)
)
)




(defrule have15
(declare (salience -400))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id have)
(id-root =(- ?id 1) where|what|when)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have15   "  ?id "  hE )" crlf))
)




(defrule have16
(declare (salience -700))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id have)
(id-root ?id1 luck|class)
(kriyA-subject ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have16   "  ?id "  hE )" crlf))
)

(defrule have17
(declare (salience 5500))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id has)
(kriyA-subject ?id ?id1)
(id-root ?id1 town|city|party|assembly|country|university|bus|train)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(assert (kriyA_id-subject_viBakwi ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  have.clp        have17   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi  " ?*wsd_dir* "  have.clp        have17   "  ?id " meM )" crlf)
))




; Let us see how much more he can have. (Tit-Bits-1)
;default_sense && category=verb	pAsa_ho	0
;She has a computer.
(defrule have18
(declare (salience 5000))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id has)
(id-root ?id1 cow|money|dog|rupee|computer|cat|house|shirts|servant|blanket|carpet|dollar|cycle|scooter)
; we should put a list of all things animate (except human relations),inanimate and use the semantic relation
(kriyA-object ?id ?id1)
(kriyA-subject ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE ))
(assert (kriyA_id-subject_viBakwi ?id ke_pAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have18   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp    have18   "  ?id " ke_pAsa )" crlf)
)
)




(defrule have19
(declare (salience 4900))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id has)
(id-root ?id1 grandfather|grandmother|child|son|daughter|uncle|aunt|auntie|father|mother|brother|sister|husband|wife|friend)
;we should put a list of all  human relations and use the semantic relation
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(assert (kriyA_id-subject_viBakwi ?id ke))
;(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have19   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp    have19   "  ?id " ke ) " crlf)
)
)



(defrule have20
(declare (salience 3300))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id has)
(id-word ?id1 headache|objection|difficulty|trouble|toothache|fever)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have20   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp    have20   "  ?id " ko )" crlf))
)





(defrule have21
(declare (salience 2700))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id has)
(id-word ?id1 nap|sleep|shower)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have21   "  ?id "  le )" crlf))
)




(defrule have22
(declare (salience 2500))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id has)
(id-word ?id1 walk)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have22   "  ?id "  le )" crlf))
)




(defrule have23
(declare (salience 2300))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id has)
(id-root ?id1 dream)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have23   "  ?id "  A )" crlf))
)




(defrule have24
(declare (salience 2200))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id has)
(id-root ?id1 lunch|dinner|meal|supper|cake|biscuit)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have24   "  ?id "  KA )" crlf))
)




(defrule have25
(declare (salience 1500))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id has)
(id-root ?id1 drink|water|milk|tea|coffee|beer|coke)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have25   "  ?id "  pI )" crlf))
)




(defrule have26
(declare (salience 900))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 breakfast|rest|bath|wash|talk)
(id-word ?id has)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have26   "  ?id "  kara )" crlf))
)




(defrule have27
(declare (salience 400))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id has)
(id-root =(+ ?id 1) his|her|my|our|their|your)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(assert (kriyA_id-subject_viBakwi ?id ke))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have27   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp    have27   "  ?id " ke )" crlf)
)
)




(defrule have28
(declare (salience -200))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id has)
(id-word ?id1 opportunity)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(assert (kriyA_id-subject_viBakwi ?id ke_pAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have28   "  ?id "  ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp    have28   "  ?id " ke_pAsa )" crlf)
))


(defrule have29
(declare (salience -300))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id has)
(id-word ?id1 faith)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(assert (kriyA_id-subject_viBakwi ?id ke))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have29   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp    have29   "  ?id " ke )" crlf)
))




(defrule have30
(declare (salience -400))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id has)
(id-root =(- ?id 1) where|what|when)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have30  "  ?id "  hE )" crlf))
)




(defrule have31
(declare (salience -700))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id has)
(id-root ?id1 luck|class)
(kriyA-subject ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have31   "  ?id "  hE )" crlf))
)



(defrule have32
(declare (salience 5500))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id had)
(kriyA-subject ?id ?id1)
(kriyA-object ?id ?id2)
(id-root ?id1 town|city|party|assembly|country|university|bus|train)
;(id-word =(- ?id 1) town|city|party|assembly|country)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WA))
(assert (kriyA_id-subject_viBakwi ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  have.clp        have32   "  ?id "  WA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi  " ?*wsd_dir* "  have.clp        have32   "  ?id " meM )" crlf)
))





;I had a computer.
(defrule have33
(declare (salience 5000))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id had)
(id-root ?id1 cow|money|dog|rupee|computer|cat|house|shirts|blanket|carpet|dollar|cycle|scooter)
; we should put a list of all things animate (except human relations),inanimate and use the semantic relation
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WA ))
(assert (kriyA_id-subject_viBakwi ?id ke_pAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have33   "  ?id "  WA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp    have33   "  ?id " ke_pAsa )" crlf)
)
)




(defrule have34
(declare (salience -1000))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id had )
(id-root ?id2 grandfather|grandmother|child|son|daughter|wife|husband|uncle|aunt|auntie|brother|sister|servant|maid|friend)
;we should put a list of all  human relations and use the semantic relation
(kriyA-object ?id ?id2)
(viSeRya-det_viSeRaNa ?id2  ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WA))
(assert (kriyA_id-subject_viBakwi ?id ke))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have34   "  ?id "  WA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp      have34   "  ?id " ke )" crlf)
)
)




(defrule have35
(declare (salience -3600))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id had)
(id-word ?id1 headache|objection|difficulty|toothache|trouble|fever)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WA))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have35   "  ?id "  WA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp      have35   "  ?id " ko )" crlf)
)
)





(defrule have36
(declare (salience -4200))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id had)
(id-word ?id1 nap|sleep|shower)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have36   "  ?id "  le )" crlf))
;(assert (kriyA_id-subject_viBakwi ?id ne))
)




(defrule have37
(declare (salience -4500))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id had)
(id-word ?id1 walk)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have37   "  ?id "  le )" crlf))
;(assert (kriyA_id-subject_viBakwi ?id ne))
)



(defrule have38
(declare (salience -4600))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id had)
(id-word ?id1 dream)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id A))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have38   "  ?id "  A )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp      have38   "  ?id " ko )" crlf)
)
)

(defrule have39
(declare (salience -4700))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id had)
(id-root ?id1 lunch|dinner|meal|supper|cake|biscuit)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have39   "  ?id "  KA )" crlf))
;(assert (kriyA_id-subject_viBakwi ?id ne))
)


(defrule have40
(declare (salience -5600))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id had)
(id-root ?id1 drink|tea|coffee|milk|coke|juice|water|beer)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have40   "  ?id "  pI )" crlf))
;(assert (kriyA_id-subject_viBakwi ?id ne))
)



(defrule have41
(declare (salience -6300))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id had)
(id-word ?id1 breakfast|bath|rest|wash|talk)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have41   "  ?id "  kara )" crlf))
;(assert (kriyA_id-subject_viBakwi ?id ne))
)



(defrule have42
(declare (salience -6800))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id had)
(id-root =(+ ?id 1) his|her|my|our|your|their)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WA))
(assert (kriyA_id-subject_viBakwi ?id ke))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp 	have42   "  ?id "  WA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp      have42   "  ?id " ke )" crlf)
)
)




(defrule have43
(declare (salience -200))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id had)
(id-word ?id1 opportunity)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(assert (kriyA_id-subject_viBakwi ?id ke_pAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have43   "  ?id "  ho )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp    have43   "  ?id " ke_pAsa )" crlf)
)



(defrule have44
(declare (salience -300))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id had)
(id-word ?id1 faith)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(assert (kriyA_id-subject_viBakwi ?id ke))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have39   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp    have39   "  ?id " ke )" crlf))
)



(defrule have40
(declare (salience -400))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id had)
(id-root =(- ?id 1) where|what|when)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have40  "  ?id "  hE )" crlf))
)




(defrule have41
(declare (salience -700))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id had)
(id-root ?id1 luck|class)
(kriyA-subject ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    has41   "  ?id "  hE )" crlf))
)



;They have social prestige .
;The cows have four legs and a tail.
(defrule have47
(declare (salience -7900))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
;(assert (id-wsd_root_mng ?id ho))
(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have47   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp    have47   "  ?id "  ke )" crlf))
)

;(defrule have047
;(declare (salience -7900))
;(id-root ?id have)
;?mng <-(meaning_to_be_decided ?id)
;(id-root ?id1 prestige) 
;(kriyA-object ?id ?id1)
;;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id hE))
;(assert (kriyA_id-subject_viBakwi ?id kA))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have047   "  ?id "  hE )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp    have047   "  ?id "  kA )" crlf))
;)



;The cow has four legs and a tail.
(defrule have48
(declare (salience -7900))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id has)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
;(assert (kriyA_id-subject_viBakwi ?id ke))
(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have48   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp    have48   "  ?id " kA )" crlf))
)



;The cow had four legs and a tail.
(defrule have49
(declare (salience -7900))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id had)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WA))
(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have49   "  ?id "  WA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp    have49   "  ?id " kA )" crlf))
)




;The recent advertising campaign has had a marked effect on sales .
(defrule have50
(declare (salience -7900))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id had)
(kriyA-on_saMbanXI  ?id ?id2)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have50   "  ?id "  ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp    have50   "  ?id " kA )" crlf))
)


;I have doubts about inviting him .
(defrule have_obj_doubt
(declare (salience 0))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(id-root ?id1 doubt)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    have_obj_doubt   "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  have.clp    have_obj_doubt   "  ?id " ko )" crlf))
)



;Added by Meena(24.8.09)
;I want to have this and I want to have that.
(defrule to_have
(declare (salience -7900))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) to)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(assert (id-wsd_root_mng =(- ?id 1) -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  have.clp    to_have   "  ?id "  - )" crlf))
)


;---------------------------------------------------------------
;>2  have=honA1 {default}  , karwA meM 'kA'  ;She has three sons.
;                                             which can be owned)
;----------------------------------------------------------------------
;    V |	object		      |Semantic feature   |	tgt 
;------|-----------------------|-------------------|-------------------- 
;  have| breakfast,lunch,dinner| eatable	    	  | KAnA		
;      | supper, a meal,cake ..|                   |
;------|-----------------------|-------------------|-------------
;  have| water,tea,drink,beer..| drink	          | pInA
;------|-----------------------|-------------------|-------------	
;  have| good day,pleasant     | 		  | acCA_bIwanA
;      | journey,comfortable   |			  |{karwA:kA}
;      | flight, good time.... |		    	  |
;------|-----------------------|-------------------|-------------
;  have| a sleep,a nap,a shower| 		  | lenA
;------|-----------------------|-------------------|--------------
;  have| a dream               |                   | AnA  {karwA:ko}
;--------------|-------------------|----------
;  have| difficulty,trouble....| biological        | honA  {karwA:ko}
;      | fever, headache ....  | experience        |
;------|-----------------------|-------------------|-----------
;  have| (det) rest	      |	         	  | karanA
;      |a row,a fight,a chat   | any noun denoting |
;      | a conversation, a bath|    action         |
;      | a shave, a try        |                   |
;------|-----------------------|-------------------|-----------  
;  have| an operation,an       |                   | honA
;      | accident,a nervous    |                   | {karwA:kA}
;      | breakdown....         |                   |

;------|-----------------------|-------------------|------------
;  have| a baby  	      |		          | janma_xenA
;------|-----------------------|-------------------|--------


;"have","V","1.pAsa honA"
;I have a computer
;
;
;
;---------------------------------------------------------------
;>2  have=honA1 {default}  , karwA meM 'kA'  ;She has three sons.
;                                             which can be owned)
;----------------------------------------------------------------------
;    V |	object		      |Semantic feature   |	tgt 
;------|-----------------------|-------------------|-------------------- 
;  have| breakfast,lunch,dinner| eatable	    	  | KAnA		
;      | supper, a meal,cake ..|                   |
;------|-----------------------|-------------------|-------------
;  have| water,tea,drink,beer..| drink	          | pInA
;------|-----------------------|-------------------|-------------	
;  have| good day,pleasant     | 		  | acCA_bIwanA
;      | journey,comfortable   |			  |{karwA:kA}
;      | flight, good time.... |		    	  |
;------|-----------------------|-------------------|-------------
;  have| a sleep,a nap,a shower| 		  | lenA
;------|-----------------------|-------------------|--------------
;  have| a dream               |                   | AnA  {karwA:ko}
;------|-----------------------|-------------------|----------
;  have| difficulty,trouble....| biological        | honA  {karwA:ko}
;      | fever, headache ....  | experience        |
;------|-----------------------|-------------------|-----------
;  have| (det) rest	      |	         	  | karanA
;      |a row,a fight,a chat   | any noun denoting |
;      | a conversation, a bath|    action         |
;      | a shave, a try        |                   |
;------|-----------------------|-------------------|-----------  
;  have| an operation,an       |                   | honA
;      | accident,a nervous    |                   | {karwA:kA}
;      | breakdown....         |                   |
;------|-----------------------|-------------------|------------
;  have| a baby  	      |		          | janma_xenA
;------|-----------------------|-------------------|--------
;"have","V","1.pAsa honA"
;
;
(defrule have44
(declare (salience -7600))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pahana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " have.clp	have44  "  ?id "  " ?id1 "  pahana  )" crlf))
)
;This is a nice saree you have on.
;yaha sAdZI bahuwa acCI hE jo wumane pahanI hE



(defrule have45
(declare (salience -7700))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bevakUPa_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " have.clp	have45  "  ?id "  " ?id1 "  bevakUPa_banA  )" crlf))
)
;Is it true that you are having me on from the last two days?
;kyA yaha saca hE ki wuma piCale xo xinoM se muJe bevakUPa banA rahe ho ?



(defrule have46
(declare (salience -7800))
(id-root ?id have)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 axAlawa_meM_praswuwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " have.clp	have46  "  ?id "  " ?id1 "  axAlawa_meM_praswuwa_ho  )" crlf))
)
;He was had up for his divorce.
;vaha axAlawa meM walAka ke lie praswuwa huA
; NOTE: have.rls is also required, to account for have as a verb.
;As in:


