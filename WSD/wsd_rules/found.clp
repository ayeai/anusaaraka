

;Added by Meena(5.9.09)
;The town was founded by English settlers in 1790 . 
(defrule found0
(declare (salience 4000))
(id-root ?id found)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id founded)
(kriyA-subject ?id ?id1)
(id-root ?id1 college|institution|organisation|club|school|city|town|company|country)
(kriyA-in_saMbanXI  ?id ?id2)
(kriyA-by_saMbanXI  ?id ?id3)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWApiwa_kara))
(assert (id-wsd_root ?id found))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  found.clp      found0   "  ?id "  sWApiwa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  found.clp      found0   "  ?id "  found )" crlf)
)
)



;Added by Meena(7.9.09)
;Her family founded the college in 1895 . 
(defrule found1
(declare (salience 3500))
(id-root ?id found)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id founded)
(kriyA-object ?id ?id1)
(id-root ?id1 college|institution|organisation|club|school|city|town|company|country)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWApanA_kara))
(assert (id-wsd_root ?id found))
;(assert (kriyA_id-subject_viBakwi ?id ne))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  found.clp      found1  "  ?id "  sWApanA_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  found.clp      found1   "  ?id "  found )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  found.clp      found1   "  ?id "  ne )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  found.clp      found1   "  ?id "  kA )" crlf)
)
)

;Added by Meena(7.9.09)
;The marriage was founded on love and mutual respect .
(defrule found2
(declare (salience 3000))
;(id-root ?id find)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id founded )
(kriyA-subject ?id ?id1)
(kriyA-on_saMbanXI ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AXAriwa))
(assert (id-wsd_root ?id found))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  found.clp      found2   "  ?id "  AXAriwa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  found.clp      found2   "  ?id "  found )" crlf)
)
)



;Added by Meena(5.9.09)
;Detectives found no mark on the body.
(defrule found3
(declare (salience 3000))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id found )
(kriyA-subject ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pA))
(assert (id-wsd_root ?id find))
(assert (id-E_tam ?id ed))
;(assert (id-H_vib_mng ?id yA))
;(assert (kriyA_id-subject_viBakwi ?id ne))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  found.clp      found3   "  ?id "  pA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  found.clp      found3   "  ?id "  find )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-E_tam   " ?*wsd_dir* "  found.clp      found3   "  ?id "  ed )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng    " ?*wsd_dir* "  found.clp      found3   "  ?id "  yA )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  found.clp      found3   "  ?id "  ne )" crlf)
)
)















