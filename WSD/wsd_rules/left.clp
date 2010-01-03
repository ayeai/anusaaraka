;File modified by Meena (22.8.09)


(defrule left0
(declare (salience 5000))
(id-root ?id left)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id left)
(viSeRya-viSeRaNa ?id1 ?id)
;(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bAzyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  left.clp  	left0   "  ?id "  bAzyA )" crlf))
)




(defrule left1
(declare (salience 4900))
(id-root ?id left)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAzyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  left.clp 	left1   "  ?id "  bAzyA )" crlf))
)



(defrule left2
(declare (salience 4800))
(id-root ?id left)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAzyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  left.clp 	left2   "  ?id "  bAzyA )" crlf))
)



;He left in the morning
(defrule left3
(declare (salience 4100))
(id-root ?id leave)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id left )
(kriyA-subject ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id calA_jA))
(assert (id-wsd_root ?id leave))
(assert (id-H_vib_mng ?id yA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  left.clp    left3   "  ?id "   calA_jA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng   " ?*wsd_dir* "  left.clp    left3   "  ?id "  yA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  left.clp    left3   "  ?id " leave)" crlf))
)



;Added by Meena (22.08.09)
;He left all his money to the orphanage.
(defrule left4
(declare (salience 4200))
(id-root ?id leave)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CodZa))
(assert (id-wsd_root ?id leave))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  left.clp      left4   "  ?id "  CodZa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  left.clp      left4   "  ?id " leave )" crlf))
)



;The train left on time.
(defrule left5
(declare (salience 4200))
(id-root ?id leave)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 train|bus)
(kriyA-subject ?id ?id1)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CUta))
(assert (id-wsd_root ?id leave))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  left.clp      left5   "  ?id "  CUta )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  left.clp      left5   "  ?id " leave )" crlf))
)




;"left","Adj","1.bAzyA"
;Some people write with their left hand. 
;--"2.vAma paMWa"
;The left parties.
;
;
