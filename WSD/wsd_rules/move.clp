
(defrule move0
(declare (salience 5000))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id moving )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id hqxaya_sparSI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  move.clp  	move0   "  ?id "  hqxaya_sparSI )" crlf))
)

;"moving","Adj","1.hqxaya sparSI"
;The teacher gave a moving talk during her fare well.
;
;
(defrule move1
(declare (salience 4900))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Gara_baxala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move1  "  ?id "  " ?id1 "  Gara_baxala  )" crlf))
)

;This house is so compact that we are moving in for other.
;
(defrule move2
(declare (salience 4800))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move2  "  ?id "  " ?id1 "  cala  )" crlf))
)

(defrule move3
(declare (salience 4700))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move3  "  ?id "  " ?id1 "  cala  )" crlf))
)

(defrule move4
(declare (salience 4600))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 along)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Age_baDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move4  "  ?id "  " ?id1 "  Age_baDZa  )" crlf))
)

(defrule move5
(declare (salience 4500))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 along)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Age_baDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move5  "  ?id "  " ?id1 "  Age_baDZa  )" crlf))
)

(defrule move6
(declare (salience 4400))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sWAnAMwara_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move6  "  ?id "  " ?id1 "  sWAnAMwara_kara  )" crlf))
)

(defrule move7
(declare (salience 4300))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sWAnAMwara_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move7  "  ?id "  " ?id1 "  sWAnAMwara_kara  )" crlf))
)

(defrule move8
(declare (salience 4200))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 praswAva_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move8  "  ?id "  " ?id1 "  praswAva_raKa  )" crlf))
)

(defrule move9
(declare (salience 4100))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 praswAva_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move9  "  ?id "  " ?id1 "  praswAva_raKa  )" crlf))
)

(defrule move10
(declare (salience 4000))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 me_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move10  "  ?id "  " ?id1 "  me_A  )" crlf))
)

(defrule move11
(declare (salience 3900))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 me_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move11  "  ?id "  " ?id1 "  me_A  )" crlf))
)

(defrule move12
(declare (salience 3800))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 yAwrA_SurU_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move12  "  ?id "  " ?id1 "  yAwrA_SurU_kara  )" crlf))
)

(defrule move13
(declare (salience 3700))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 yAwrA_SurU_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move13  "  ?id "  " ?id1 "  yAwrA_SurU_kara  )" crlf))
)

(defrule move14
(declare (salience 3600))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 viRaya_parivarwana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move14  "  ?id "  " ?id1 "  viRaya_parivarwana_kara  )" crlf))
)

(defrule move15
(declare (salience 3500))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 viRaya_parivarwana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move15  "  ?id "  " ?id1 "  viRaya_parivarwana_kara  )" crlf))
)

(defrule move16
(declare (salience 3400))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 purAnA_Gara_CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move16  "  ?id "  " ?id1 "  purAnA_Gara_CodZa_xe  )" crlf))
)

(defrule move17
(declare (salience 3300))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 purAnA_Gara_CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move17  "  ?id "  " ?id1 "  purAnA_Gara_CodZa_xe  )" crlf))
)

(defrule move18
(declare (salience 3200))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sWana_baxal))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move18  "  ?id "  " ?id1 "  sWana_baxal  )" crlf))
)

(defrule move19
(declare (salience 3100))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sWana_baxal))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move19  "  ?id "  " ?id1 "  sWana_baxal  )" crlf))
)

(defrule move20
(declare (salience 3000))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sWAna_baxala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move20  "  ?id "  " ?id1 "  sWAna_baxala  )" crlf))
)

(defrule move21
(declare (salience 2900))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sWAna_baxala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move21  "  ?id "  " ?id1 "  sWAna_baxala  )" crlf))
)

(defrule move22
(declare (salience 2800))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sWAna_baxala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move22  "  ?id "  " ?id1 "  sWAna_baxala  )" crlf))
)

(defrule move23
(declare (salience 2700))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sWAna_baxala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " move.clp	move23  "  ?id "  " ?id1 "  sWAna_baxala  )" crlf))
)

(defrule move24
(declare (salience 2600))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 machine)
(kriyA-subject ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  move.clp 	move24   "  ?id "  cala )" crlf))
)

(defrule move25
(declare (salience 2500))
(id-root ?id move)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  move.clp 	move25   "  ?id "  cala )" crlf))
)

;default_sense && category=verb	calanA/hila	0
;"move","V","1.calanA/hilanA"
;Please move a while further.
;
;
