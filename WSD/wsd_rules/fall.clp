
(defrule fall0
(declare (salience 5000))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fallen )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id parAjiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fall.clp  	fall0   "  ?id "  parAjiwa )" crlf))
)

;"fallen","Adj","1.parAjiwa"
;The fallen team had to leave the stadium.
; 
;"fall guy","N","1.balI_kA_bakarA"
;He was beaten by someone else but I became the fallen guy.
;
;
(defrule fall1
(declare (salience 4900))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 apart)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 tukadZoM_meM_tUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall1  "  ?id "  " ?id1 "  tukadZoM_meM_tUta  )" crlf))
)

;As she picked the cracked vase,it fell apart in her hands.
;jEse hI usane xarAra padZe PUlaxAna ko uTAyA vaha tukadZoM meM tUta gayA
(defrule fall2
(declare (salience 4800))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICe_hata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall2  "  ?id "  " ?id1 "  pICe_hata  )" crlf))
)

;The army fell back after losing the battle.
;ladZAI hArane para senA pICe hata gaI
(defrule fall3
(declare (salience 4700))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 behind)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 piCadZa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall3  "  ?id "  " ?id1 "  piCadZa_jA  )" crlf))
)

;He is falling behind in his homework.
;vaha apane gqhakArya meM pICe CUta rahA hE
(defrule fall4
(declare (salience 4600))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XoKA_KA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall4  "  ?id "  " ?id1 "  XoKA_KA  )" crlf))
)

;He told me that he's a millionaire && i fell for it.
;usane muJe bawAyA ki vo eka karodZapawi hE Ora mEM XoKA KA gayA
(defrule fall5
(declare (salience 4500))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mugXa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall5  "  ?id "  " ?id1 "  mugXa_ho  )" crlf))
)

;She has fallen for your brother.
;vaha wumhAre BAI para mugXa hE
(defrule fall6
(declare (salience 4400))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sahamawa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall6  "  ?id "  " ?id1 "  sahamawa_ho  )" crlf))
)

;She falls in with my advice.
;vaha merI salAha se sahamawa hE
(defrule fall7
(declare (salience 4300))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AkramaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall7  "  ?id "  " ?id1 "  AkramaNa_kara  )" crlf))
)

;He fell on the old man && beat him.
;usane bUDZe AxamI pe AkramaNa kiyA Ora use mArane lagA
(defrule fall8
(declare (salience 4200))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 JagadZA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall8  "  ?id "  " ?id1 "  JagadZA_kara  )" crlf))
)

;She fell out with her brother.
;usane apane BAI se JagadZA kiyA
(defrule fall9
(declare (salience 4100))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 apart)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 tUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall9  "  ?id "  " ?id1 "  tUta  )" crlf))
)

(defrule fall10
(declare (salience 4000))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 apart)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 tUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall10  "  ?id "  " ?id1 "  tUta  )" crlf))
)

(defrule fall11
(declare (salience 3900))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gira_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall11  "  ?id "  " ?id1 "  gira_padZa  )" crlf))
)

(defrule fall12
(declare (salience 3800))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gira_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall12  "  ?id "  " ?id1 "  gira_padZa  )" crlf))
)

(defrule fall13
(declare (salience 3700))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICe_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall13  "  ?id "  " ?id1 "  pICe_ho  )" crlf))
)

(defrule fall14
(declare (salience 3600))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICe_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall14  "  ?id "  " ?id1 "  pICe_ho  )" crlf))
)

(defrule fall15
(declare (salience 3500))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 behind)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICe_raha_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall15  "  ?id "  " ?id1 "  pICe_raha_jA  )" crlf))
)

(defrule fall16
(declare (salience 3400))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 behind)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICe_raha_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall16  "  ?id "  " ?id1 "  pICe_raha_jA  )" crlf))
)

(defrule fall17
(declare (salience 3300))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nIce_gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall17  "  ?id "  " ?id1 "  nIce_gira  )" crlf))
)

(defrule fall18
(declare (salience 3200))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nIce_gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall18  "  ?id "  " ?id1 "  nIce_gira  )" crlf))
)

(defrule fall19
(declare (salience 3100))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 meM_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall19  "  ?id "  " ?id1 "  meM_ho_jA  )" crlf))
)

(defrule fall20
(declare (salience 3000))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 meM_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall20  "  ?id "  " ?id1 "  meM_ho_jA  )" crlf))
)

(defrule fall21
(declare (salience 2900))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 meM_Pazsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall21  "  ?id "  " ?id1 "  meM_Pazsa  )" crlf))
)

(defrule fall22
(declare (salience 2800))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 meM_Pazsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall22  "  ?id "  " ?id1 "  meM_Pazsa  )" crlf))
)

(defrule fall23
(declare (salience 2700))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 se_gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall23  "  ?id "  " ?id1 "  se_gira  )" crlf))
)

(defrule fall24
(declare (salience 2600))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 se_gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall24  "  ?id "  " ?id1 "  se_gira  )" crlf))
)

(defrule fall25
(declare (salience 2500))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 lada))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall25  "  ?id "  " ?id1 "  lada  )" crlf))
)

(defrule fall26
(declare (salience 2400))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 lada))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall26  "  ?id "  " ?id1 "  lada  )" crlf))
)

(defrule fall27
(declare (salience 2300))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) over )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fall.clp 	fall27   "  ?id "  gira )" crlf))
)

;If PP is used, it eats up the vibhakti, hence changed to following_word=over
(defrule fall28
(declare (salience 2200))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 asaPala_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall28  "  ?id "  " ?id1 "  asaPala_ho  )" crlf))
)

(defrule fall29
(declare (salience 2100))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 asaPala_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall29  "  ?id "  " ?id1 "  asaPala_ho  )" crlf))
)

(defrule fall30
(declare (salience 2000))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 upon)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AkramaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall30  "  ?id "  " ?id1 "  AkramaNa_kara  )" crlf))
)

(defrule fall31
(declare (salience 1900))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 upon)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AkramaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall31  "  ?id "  " ?id1 "  AkramaNa_kara  )" crlf))
)

(defrule fall32
(declare (salience 1800))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id girAvata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fall.clp 	fall32   "  ?id "  girAvata )" crlf))
)

(defrule fall33
(declare (salience 1700))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 SurU_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall33  "  ?id "  " ?id1 "  SurU_kara  )" crlf))
)

(defrule fall34
(declare (salience 1600))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 SurU_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall34  "  ?id "  " ?id1 "  SurU_kara  )" crlf))
)

(defrule fall35
(declare (salience 1500))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nIce_gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall35  "  ?id "  " ?id1 "  nIce_gira  )" crlf))
)

(defrule fall36
(declare (salience 1400))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nIce_gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall36  "  ?id "  " ?id1 "  nIce_gira  )" crlf))
)

(defrule fall37
(declare (salience 1300))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fall.clp 	fall37   "  ?id "  gira )" crlf))
)

;default_sense && category=verb	gira	0
;"fall","VI","1.giranA"
;The bicycle will fall if it is not kept properly.
;The temperature fell after last night's rain.
;--"2.honA"
;Holi falls in the month of March.
;--"3.lAlaca_meM_AnA"
;He fell for the gifts offered by the shop.
;--"4.padZanA"
;The Prince's eyes fell on the poor girl.
;The sunlight fell towards the west.
;I fell in bad company when I was in my teens.
;
;LEVEL 
;
;
;                `fall' sUwra (nibanXa)
;
;`fall' Sabxa ke viviXa prayoga--
;------------------------  
;
;"fall","N","1.pawana"
;               ---- < giranA
;The fall of the currupt system is certain.
;
;"fall","VI","1.giranA"
;The bicycle will fall if it is not kept properly.
;The temperature fell after last night's rain.
;--"2.honA"
;              ---- < kinhIM ke bIca padanA (honA) < padanA < giranA
;Holi falls in the month of March.
;--"3.lAlaca_meM_AnA"
;              ---- < kisI BAva viSeRa meM AnA(padanA) < padanA < giranA
;He fell for the gifts offered by the shop.
;--"4.padZanA"
;              ---- < giranA 
;The Prince's eyes fell on the poor girl.
;The sunlight fell towards the west.
;I fell in bad company when I was in my teens.
;-----------------------------------------------------
;
;sUwra : pawana[<giranA`]
;-----------
;
;     `fall' Sabxa ke upariliKiwa viviXa prayogoM meM `girane kA BAva' sAmAnya hE .
;hinxI BARA meM BI girane ke BAva kA viviXa rUpoM meM prayoga howA hE . yahAz Upara 
;xiye viBinna prayogoM ke arWa-viswAra ke viRaya meM WodA viSleRaNa AvaSyaka hogA . 
;
;-- `pawana' meM girane kA BAva spaRta hE . jaba koI (vyakwi va samAja, kuCa BI) apanI 
;avasWA-viSeRa (vEcArika va BOwika) se nIce AwA(girawA) hE wo isa waraha kA prayoga 
;howA hE . Upara se nIce girA hI jAwA hE . 
; 
;--  girane kA sAmAnyIkaraNa `padane' kA honA Ama hE . hinxI meM BI isakA prayoga 
;sAmAnya hE . xqRti kA giranA yA xqRti kA padanA . yahAz yaha socA jA sakawA hE ki jaba
;padane ke BAva kA prayoga kiyA jAwA hE wo kisI ke Upara(upariBAga) para usa kriyA ko 
;socA jAwA hE . 
;
;-- padane kA sAmAnyIkaraNa `honA' . kisI upariBAga para padanA, arWAw kisI upariBAga
;para honA . isase kahIM BI huA jAne kA BAva . isI ke prayoga- hone ke arWa meM Upara ke
;`wyOhAra viSeRa' ke hone arWa meM . hinxI meM isa waraha kA prayoga- mArca ke anwa 
;meM holI kA wyOhAra padawA hE . 
;
;--  `lAlaca meM AnA' arWAw lAlaca meM giranA hI hE . lAlaca nimna mAnA jAwA hE . kisI
;Uzce BAvaviSeRa se nIce girane kA BAva JalakawA hE .
;
;
(defrule fall38
(declare (salience 1200))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fell )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pahAdZI_ilAkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fall.clp  	fall38   "  ?id "  pahAdZI_ilAkA )" crlf))
)

;"fell","N","1.9pahAdZI_ilAkA{uwwarI_iMgalEMda_kA}"
;Lakeland fells.
;
(defrule fall39
(declare (salience 1100))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 apart)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 tukadZoM_meM_tUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall39  "  ?id "  " ?id1 "  tukadZoM_meM_tUta  )" crlf))
)

;As she picked the cracked vase,it fell apart in her hands.
;jEse hI usane xarAra padZe PUlaxAna ko uTAyA vaha tukadZoM meM tUta gayA
(defrule fall40
(declare (salience 1000))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICe_hata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall40  "  ?id "  " ?id1 "  pICe_hata  )" crlf))
)

;The army fell back after losing the battle.
;ladZAI hArane para senA pICe hata gaI
(defrule fall41
(declare (salience 900))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 behind)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 piCadZa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall41  "  ?id "  " ?id1 "  piCadZa_jA  )" crlf))
)

;He is falling behind in his homework.
;vaha apane gqhakArya meM pICe CUta rahA hE
(defrule fall42
(declare (salience 800))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XoKA_KA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall42  "  ?id "  " ?id1 "  XoKA_KA  )" crlf))
)

;He told me that he's a millionaire && i fell for it.
;usane muJe bawAyA ki vo eka karodZapawi hE Ora mEM XoKA KA gayA
(defrule fall43
(declare (salience 700))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mugXa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall43  "  ?id "  " ?id1 "  mugXa_ho  )" crlf))
)

;She has fallen for your brother.
;vaha wumhAre BAI para mugXa hE
(defrule fall44
(declare (salience 600))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sahamawa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall44  "  ?id "  " ?id1 "  sahamawa_ho  )" crlf))
)

;She falls in with my advice.
;vaha merI salAha se sahamawa hE
(defrule fall45
(declare (salience 500))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AkramaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall45  "  ?id "  " ?id1 "  AkramaNa_kara  )" crlf))
)

;He fell on the old man && beat him.
;usane bUDZe AxamI pe AkramaNa kiyA Ora use mArane lagA
(defrule fall46
(declare (salience 400))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 JagadZA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall46  "  ?id "  " ?id1 "  JagadZA_kara  )" crlf))
)

;She fell out with her brother.
;usane apane BAI se JagadZA kiyA
(defrule fall47
(declare (salience 300))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 apart)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 tUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall47  "  ?id "  " ?id1 "  tUta  )" crlf))
)

(defrule fall48
(declare (salience 200))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 apart)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 tUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall48  "  ?id "  " ?id1 "  tUta  )" crlf))
)

(defrule fall49
(declare (salience 100))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gira_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall49  "  ?id "  " ?id1 "  gira_padZa  )" crlf))
)

(defrule fall50
(declare (salience 0))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gira_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall50  "  ?id "  " ?id1 "  gira_padZa  )" crlf))
)

(defrule fall51
(declare (salience -100))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICe_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall51  "  ?id "  " ?id1 "  pICe_ho  )" crlf))
)

(defrule fall52
(declare (salience -200))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICe_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall52  "  ?id "  " ?id1 "  pICe_ho  )" crlf))
)

(defrule fall53
(declare (salience -300))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 behind)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICe_raha_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall53  "  ?id "  " ?id1 "  pICe_raha_jA  )" crlf))
)

(defrule fall54
(declare (salience -400))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 behind)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICe_raha_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall54  "  ?id "  " ?id1 "  pICe_raha_jA  )" crlf))
)

(defrule fall55
(declare (salience -500))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nIce_gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall55  "  ?id "  " ?id1 "  nIce_gira  )" crlf))
)

(defrule fall56
(declare (salience -600))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nIce_gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall56  "  ?id "  " ?id1 "  nIce_gira  )" crlf))
)

(defrule fall57
(declare (salience -700))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 meM_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall57  "  ?id "  " ?id1 "  meM_ho_jA  )" crlf))
)

(defrule fall58
(declare (salience -800))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 meM_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall58  "  ?id "  " ?id1 "  meM_ho_jA  )" crlf))
)

(defrule fall59
(declare (salience -900))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 meM_Pazsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall59  "  ?id "  " ?id1 "  meM_Pazsa  )" crlf))
)

(defrule fall60
(declare (salience -1000))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 meM_Pazsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall60  "  ?id "  " ?id1 "  meM_Pazsa  )" crlf))
)

(defrule fall61
(declare (salience -1100))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 se_gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall61  "  ?id "  " ?id1 "  se_gira  )" crlf))
)

(defrule fall62
(declare (salience -1200))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 se_gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall62  "  ?id "  " ?id1 "  se_gira  )" crlf))
)

(defrule fall63
(declare (salience -1300))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 lada))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall63  "  ?id "  " ?id1 "  lada  )" crlf))
)

(defrule fall64
(declare (salience -1400))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 lada))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall64  "  ?id "  " ?id1 "  lada  )" crlf))
)

(defrule fall65
(declare (salience -1500))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) over )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fall.clp 	fall65   "  ?id "  gira )" crlf))
)

;If PP is used, it eats up the vibhakti, hence changed to following_word=over
(defrule fall66
(declare (salience -1600))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 asaPala_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall66  "  ?id "  " ?id1 "  asaPala_ho  )" crlf))
)

(defrule fall67
(declare (salience -1700))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 asaPala_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall67  "  ?id "  " ?id1 "  asaPala_ho  )" crlf))
)

(defrule fall68
(declare (salience -1800))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 upon)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AkramaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall68  "  ?id "  " ?id1 "  AkramaNa_kara  )" crlf))
)

(defrule fall69
(declare (salience -1900))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 upon)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AkramaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall69  "  ?id "  " ?id1 "  AkramaNa_kara  )" crlf))
)

(defrule fall70
(declare (salience -2000))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fell )
(id-cat_coarse ?id verb )
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kAta_girA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fall.clp  	fall70   "  ?id "  kAta_girA )" crlf))
)

(defrule fall71
(declare (salience -2100))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fell )
(id-cat_coarse ?id verb )
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id gira))
(assert (id-H_vib_mng ?id yA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fall.clp  	fall71   "  ?id "  gira )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  fall.clp       fall71   "  ?id "  yA )" crlf))
)

(defrule fall72
(declare (salience -2200))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fell )
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id gira))
(assert (id-H_vib_mng ?id yA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fall.clp  	fall72   "  ?id "  gira )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  fall.clp       fall72   "  ?id " yA )" crlf))
)

;"fell","V","1.kAta_girAnA"
(defrule fall73
(declare (salience -2300))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id girAvata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fall.clp 	fall73   "  ?id "  girAvata )" crlf))
)

(defrule fall74
(declare (salience -2400))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 SurU_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall74  "  ?id "  " ?id1 "  SurU_kara  )" crlf))
)

(defrule fall75
(declare (salience -2500))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 SurU_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall75  "  ?id "  " ?id1 "  SurU_kara  )" crlf))
)

(defrule fall76
(declare (salience -2600))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nIce_gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall76  "  ?id "  " ?id1 "  nIce_gira  )" crlf))
)

(defrule fall77
(declare (salience -2700))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nIce_gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fall.clp	fall77  "  ?id "  " ?id1 "  nIce_gira  )" crlf))
)

(defrule fall78
(declare (salience -2800))
(id-root ?id fall)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gira))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fall.clp 	fall78   "  ?id "  gira )" crlf))
)

;default_sense && category=verb	gira	0
;"fall","VI","1.giranA"
;The bicycle will fall if it is not kept properly.
;The temperature fell after last night's rain.
;--"2.honA"
;Holi falls in the month of March.
;--"3.lAlaca_meM_AnA"
;He fell for the gifts offered by the shop.
;--"4.padZanA"
;The Prince's eyes fell on the poor girl.
;The sunlight fell towards the west.
;I fell in bad company when I was in my teens.
;
;LEVEL 
;
;
;                `fall' sUwra (nibanXa)
;
;`fall' Sabxa ke viviXa prayoga--
;------------------------  
;
;"fall","N","1.pawana"
;               ---- < giranA
;The fall of the currupt system is certain.
;
;"fall","VI","1.giranA"
;The bicycle will fall if it is not kept properly.
;The temperature fell after last night's rain.
;--"2.honA"
;              ---- < kinhIM ke bIca padanA (honA) < padanA < giranA
;Holi falls in the month of March.
;--"3.lAlaca_meM_AnA"
;              ---- < kisI BAva viSeRa meM AnA(padanA) < padanA < giranA
;He fell for the gifts offered by the shop.
;--"4.padZanA"
;              ---- < giranA 
;The Prince's eyes fell on the poor girl.
;The sunlight fell towards the west.
;I fell in bad company when I was in my teens.
;-----------------------------------------------------
;
;sUwra : pawana[<giranA`]
;-----------
;
;     `fall' Sabxa ke upariliKiwa viviXa prayogoM meM `girane kA BAva' sAmAnya hE .
;hinxI BARA meM BI girane ke BAva kA viviXa rUpoM meM prayoga howA hE . yahAz Upara 
;xiye viBinna prayogoM ke arWa-viswAra ke viRaya meM WodA viSleRaNa AvaSyaka hogA . 
;
;-- `pawana' meM girane kA BAva spaRta hE . jaba koI (vyakwi va samAja, kuCa BI) apanI 
;avasWA-viSeRa (vEcArika va BOwika) se nIce AwA(girawA) hE wo isa waraha kA prayoga 
;howA hE . Upara se nIce girA hI jAwA hE . 
; 
;--  girane kA sAmAnyIkaraNa `padane' kA honA Ama hE . hinxI meM BI isakA prayoga 
;sAmAnya hE . xqRti kA giranA yA xqRti kA padanA . yahAz yaha socA jA sakawA hE ki jaba
;padane ke BAva kA prayoga kiyA jAwA hE wo kisI ke Upara(upariBAga) para usa kriyA ko 
;socA jAwA hE . 
;
;-- padane kA sAmAnyIkaraNa `honA' . kisI upariBAga para padanA, arWAw kisI upariBAga
;para honA . isase kahIM BI huA jAne kA BAva . isI ke prayoga- hone ke arWa meM Upara ke
;`wyOhAra viSeRa' ke hone arWa meM . hinxI meM isa waraha kA prayoga- mArca ke anwa 
;meM holI kA wyOhAra padawA hE . 
;
;--  `lAlaca meM AnA' arWAw lAlaca meM giranA hI hE . lAlaca nimna mAnA jAwA hE . kisI
;Uzce BAvaviSeRa se nIce girane kA BAva JalakawA hE .
;
;
