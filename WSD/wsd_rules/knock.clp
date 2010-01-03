
(defrule knock0
(declare (salience 5000))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ArAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock0  "  ?id "  " ?id1 "  ArAma_kara  )" crlf))
)

;I spent most of my time knocking about the house yesterday.
;kala mEMne Gara meM apanA aXikawara samaya ArAma karane meM biwA xiyA
(defrule knock1
(declare (salience 4900))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gira_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock1  "  ?id "  " ?id1 "  gira_jA  )" crlf))
)

;An old lady was knocked down as she crossed the road
;eka bUDZI Orawa sadZaka pAra karawe samaya gira gaI
(defrule knock2
(declare (salience 4800))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kImawa_meM_kamI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock2  "  ?id "  " ?id1 "  kImawa_meM_kamI_ho  )" crlf))
)

;It was an expensive ring when i bought it but now it's price has been knocked down.
;yaha azgUTI bahuwa mahaMgI WI jaba mEne ise KarIxA WA lekina aba isakI kImawa meM kamI A gaI hE
(defrule knock3
(declare (salience 4700))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 corI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock3  "  ?id "  " ?id1 "  corI_kara  )" crlf))
)

;He has knocked off that watch from the shop.
;usane vaha GadZI xukAna se curAI hE
;kImawa_meM_kamI_karanA	0
;The shopkeeper refused to knock off anymore.
;xukAnaxAra ne kImawa meM Ora aXika kamI karane se manA kara xiyA
;jalxI_se_pUrA_karanA	0
;She knocked off all the work before lunch.
;usane xopahara ke KAne se pahale apanA kAma jalxI se pUrA kara liyA
;mAra_xenA	0
;I have heard that the missing child has been knocked off.
;mEne sunA hE ki usa lApawA bacce ko mAra xiyA gayA hE
(defrule knock4
(declare (salience 4600))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAma_karanA_roka_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock4  "  ?id "  " ?id1 "  kAma_karanA_roka_xe  )" crlf))
)

;I don't knock off until six.
;mEM Ca: baje waka apanA kAma karanA nahIM rokawA
(defrule knock5
(declare (salience 4500))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acewa_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock5  "  ?id "  " ?id1 "  acewa_kara_xe  )" crlf))
)

;Don't take so much of sleeping pills,they'll knock you out.
;iwanI sArI nIMxa kI goliyAz mawa lo ,ye wumhe acewa kara xeMgIM
(defrule knock6
(declare (salience 4400))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 harA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock6  "  ?id "  " ?id1 "  harA_xe  )" crlf))
)

;I am very upset that they have knocked out our team.
;muJe bahuwa xuKa hE ki unhone hamArI tIma ko harA xiyA
(defrule knock7
(declare (salience 4300))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 takarA_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock7  "  ?id "  " ?id1 "  takarA_jA  )" crlf))
)

;I got knocked over by a bus when i was going home.
;jaba mEM Gara jA rahA WA waba eka basa se takarA gayA
(defrule knock8
(declare (salience 4200))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 WakA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock8  "  ?id "  " ?id1 "  WakA_xe  )" crlf))
)

;iwanA kAma mawa karo nahIM wo wuma apane Apa ko WakA xoge !
(defrule knock9
(declare (salience 4100))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 garBavawI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock9  "  ?id "  " ?id1 "  garBavawI_kara  )" crlf))
)

;Just tell me who has knocked you up?
;muJe yaha bawAo ki wumheM kisane garBavawI kiyA hE?
(defrule knock10
(declare (salience 4000))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ArAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock10  "  ?id "  " ?id1 "  ArAma_kara  )" crlf))
)

;I spent most of my time knocking about the house yesterday.
;kala mEMne Gara meM apanA aXikawara samaya ArAma karane meM biwA xiyA
(defrule knock11
(declare (salience 3900))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gira_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock11  "  ?id "  " ?id1 "  gira_jA  )" crlf))
)

;An old lady was knocked down as she crossed the road
;eka bUDZI Orawa sadZaka pAra karawe samaya gira gaI
(defrule knock12
(declare (salience 3800))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kImawa_meM_kamI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock12  "  ?id "  " ?id1 "  kImawa_meM_kamI_ho  )" crlf))
)

;It was an expensive ring when i bought it but now it's price has been knocked down.
;yaha azgUTI bahuwa mahaMgI WI jaba mEne ise KarIxA WA lekina aba isakI kImawa meM kamI A gaI hE
(defrule knock13
(declare (salience 3700))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 corI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock13  "  ?id "  " ?id1 "  corI_kara  )" crlf))
)

;He has knocked off that watch from the shop.
;usane vaha GadZI xukAna se curAI hE
;kImawa_meM_kamI_karanA	0
;The shopkeeper refused to knock off anymore.
;xukAnaxAra ne kImawa meM Ora aXika kamI karane se manA kara xiyA
;jalxI_se_pUrA_karanA	0
;She knocked off all the work before lunch.
;usane xopahara ke KAne se pahale apanA kAma jalxI se pUrA kara liyA
;mAra_xenA	0
;I have heard that the missing child has been knocked off.
;mEne sunA hE ki usa lApawA bacce ko mAra xiyA gayA hE
(defrule knock14
(declare (salience 3600))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAma_karanA_roka_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock14  "  ?id "  " ?id1 "  kAma_karanA_roka_xe  )" crlf))
)

;I don't knock off until six.
;mEM Ca: baje waka apanA kAma karanA nahIM rokawA
(defrule knock15
(declare (salience 3500))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acewa_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock15  "  ?id "  " ?id1 "  acewa_kara_xe  )" crlf))
)

;Don't take so much of sleeping pills,they'll knock you out.
;iwanI sArI nIMxa kI goliyAz mawa lo ,ye wumhe acewa kara xeMgIM
(defrule knock16
(declare (salience 3400))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 harA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock16  "  ?id "  " ?id1 "  harA_xe  )" crlf))
)

;I am very upset that they have knocked out our team.
;muJe bahuwa xuKa hE ki unhone hamArI tIma ko harA xiyA
(defrule knock17
(declare (salience 3300))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 takarA_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock17  "  ?id "  " ?id1 "  takarA_jA  )" crlf))
)

;I got knocked over by a bus when i was going home.
;jaba mEM Gara jA rahA WA waba eka basa se takarA gayA
(defrule knock18
(declare (salience 3200))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 WakA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock18  "  ?id "  " ?id1 "  WakA_xe  )" crlf))
)

;iwanA kAma mawa karo nahIM wo wuma apane Apa ko WakA xoge !
(defrule knock19
(declare (salience 3100))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 garBavawI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock19  "  ?id "  " ?id1 "  garBavawI_kara  )" crlf))
)

;Just tell me who has knocked you up?
;muJe yaha bawAo ki wumheM kisane garBavawI kiyA hE?
(defrule knock20
(declare (salience 3000))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 girA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock20  "  ?id "  " ?id1 "  girA_xe  )" crlf))
)

(defrule knock21
(declare (salience 2900))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 girA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock21  "  ?id "  " ?id1 "  girA_xe  )" crlf))
)

(defrule knock22
(declare (salience 2800))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samApwa_karo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock22  "  ?id "  " ?id1 "  samApwa_karo  )" crlf))
)

(defrule knock23
(declare (salience 2700))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samApwa_karo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock23  "  ?id "  " ?id1 "  samApwa_karo  )" crlf))
)

(defrule knock24
(declare (salience 2600))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nIce_girA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock24  "  ?id "  " ?id1 "  nIce_girA  )" crlf))
)

(defrule knock25
(declare (salience 2500))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nIce_girA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knock.clp	knock25  "  ?id "  " ?id1 "  nIce_girA  )" crlf))
)

(defrule knock26
(declare (salience 2400))
(id-root ?id knock)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xaswaka_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  knock.clp 	knock26   "  ?id "  xaswaka_xe )" crlf))
)

;default_sense && category=verb	xaswaka xe	0
;"knock","V","1.xaswaka xenA"
;Somebody is knocking on the door.
;--"2.Tokara lagAnA"
;He knocked the glass clear across the room.
;
;
