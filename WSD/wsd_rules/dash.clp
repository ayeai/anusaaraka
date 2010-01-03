;"dashing","Adj","1.sAhasI"
;A dashing hero
;
;
(defrule dash0
(declare (salience 5000))
(id-root ?id dash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wejZI_se_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dash.clp	dash0  "  ?id "  " ?id1 "  wejZI_se_jA  )" crlf))
)

;You dashed off after the show && i couldn't meet you.
;wuma kAryakrama ke bAxa wejZI se cale gae Ora mEM wumase mila nahIM pAI
(defrule dash1
(declare (salience 4900))
(id-root ?id dash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kisI_kArya_ko_binA_aXika_mehanawa_kie_jalxI_se_nipatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " dash.clp	dash1  "  ?id "  " ?id1 "  kisI_kArya_ko_binA_aXika_mehanawa_kie_jalxI_se_nipatA  )" crlf))
)

;He dashed off his latest novel in three weeks.
;usane apanA nayA nAvala binA aXika mehanawa kie jalxI se wIna haPwoM meM hI
(defrule dash2
(declare (salience 4800))
(id-root ?id dash)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id dashing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sAhasI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  dash.clp  	dash2   "  ?id "  sAhasI )" crlf))
)

(defrule dash3
(declare (salience 4700))
(id-root ?id dash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PurwI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dash.clp 	dash3   "  ?id "  PurwI )" crlf))
)

;"dash","N","1.PurwI"    
;He wooed her with the confident dash of a cavalry officer
;--"2.Japata"
;He made a dash for the door
;--"3.saMGarRa"
;He is preparing for the 100-yard dash
;
(defrule dash4
(declare (salience 4600))
(id-root ?id dash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dash.clp 	dash4   "  ?id "  xe_mAra )" crlf))
)

;"dash","VI","1.xe_mAranA"
;He dashed the plate against the wall
;Her comments dashed his ambitions && hopes
;--"2.hawowsAhiwa_honA"
;Dashed by the refusal
;--"3.wejZI_se_xOdZanA"
;She dashed into the yard
;
