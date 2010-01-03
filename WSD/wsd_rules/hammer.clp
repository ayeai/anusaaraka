
(defrule hammer0
(declare (salience 5000))
(id-root ?id hammer)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id hammering )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id haWOdZA_pItane_kI_AvAja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  hammer.clp  	hammer0   "  ?id "  haWOdZA_pItane_kI_AvAja )" crlf))
)

;"hammering","N","1.haWOdZA pItane kI AvAja"
;padZosa meM ParSa KuxAI ke kAraNa"hammering"kI Xvani sunAI xe rahI WI.
;
;
(defrule hammer1
(declare (salience 4900))
(id-root ?id hammer)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 karawe_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hammer.clp	hammer1  "  ?id "  " ?id1 "  karawe_raha  )" crlf))
)

;Your punishment is that you'll hammer away at this until you get it solved.
;wumhArI sajZA yaha hE ki wuma ise waba waka karawe rahoge jaba waka yaha hala na ho jAe
(defrule hammer2
(declare (salience 4800))
(id-root ?id hammer)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hammer.clp	hammer2  "  ?id "  " ?id1 "  -  )" crlf))\
)

;
;
(defrule hammer3
(declare (salience 4700))
(id-root ?id hammer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id haWOdZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hammer.clp 	hammer3   "  ?id "  haWOdZA )" crlf))
)

;"hammer","N","1.haWOdZA"
;A blacksmith used a hammer to hit iron .
;lohAra lohe ko pItane ke lie haWOdZe kA prayoga karawA hE.
;
(defrule hammer4
(declare (salience 4600))
(id-root ?id hammer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id haWOdZe_se_Toka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hammer.clp 	hammer4   "  ?id "  haWOdZe_se_Toka )" crlf))
)

;"hammer","V","1.haWOdZe_se_TokanA"
;He hammered a nail in the wall for hanging a calendar .
;usane kalENdara tAzgane ke lie haWOdZe se xIvAra meM kIla TokI .
;
