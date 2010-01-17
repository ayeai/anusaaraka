
(defrule get0
(declare (salience 5000))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) have)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE_nahIM))
(assert (kriyA_id-subject_viBakwi ?id ke_pAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp 	get0   "  ?id "  hE_nahIM )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  get.clp       get0   "  ?id " ke_pAsa )" crlf)
)
)

(defrule get1
(declare (salience 4900))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) has)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE_nahIM))
(assert (kriyA_id-subject_viBakwi ?id ke_pAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp 	get1   "  ?id "  hE_nahIM )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  get.clp       get1   "  ?id " ke_pAsa )" crlf)
)
)

(defrule get2
(declare (salience 4800))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) had)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WA_nahIM))
(assert (kriyA_id-subject_viBakwi ?id ke_pAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp 	get2   "  ?id "  WA_nahIM )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  get.clp       get2   "  ?id " ke_pAsa )" crlf)
)
)

(defrule get3
(declare (salience 4700))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) is)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE_nahIM))
(assert (kriyA_id-subject_viBakwi ?id ke_pAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp 	get3   "  ?id "  hE_nahIM )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  get.clp       get3   "  ?id " ke_pAsa )" crlf)
)
)

(defrule get4
(declare (salience 4600))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 aPavAha_PEla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get4  "  ?id "  " ?id1 "  aPavAha_PEla  )" crlf))
)

;I don't know how the story got about that she'd got married.
;mEM nahIM jAnawA ki yaha aPavAha kEse PEla gaI ki usakI SAxI ho gaI
(defrule get5
(declare (salience 4500))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 across)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samaJA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get5  "  ?id "  " ?id1 "  samaJA  )" crlf))
)

;This is the mesage that we want to get across to the people.
;yahI vaha saMxeSa hE jo hama logoM ko samaJAnA cAhawe We
(defrule get6
(declare (salience 4400))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 after)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pICA_kara\pICe_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get6  "  ?id "  " ?id1 "  pICA_kara\pICe_jA  )" crlf))
)

;Get after her && tell her not to wait for us.
;usake pICe jAo Ora kaho ki hamArA iMwajZAra na kare
(defrule get7
(declare (salience 4300))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 ahead)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 saPala_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get7  "  ?id "  " ?id1 "  saPala_ho  )" crlf))
)




;It's tough for any woman to get ahead in politics.
;rAjanIwi meM saPala honA kisI BI Orawa ke lie bahuwa kaTina hE
(defrule get8
(declare (salience 4200))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 along)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Age_baDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get8  "  ?id "  " ?id1 "  Age_baDZa  )" crlf))
)

;I can't get along without some help.
;mEM binA maxaxa ke Age nahIM baDZa sakawA
(defrule get9
(declare (salience 4100))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 along)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acCe_saMbaMXa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get9  "  ?id "  " ?id1 "  acCe_saMbaMXa_ho  )" crlf))
)


;I get along very well with her.
;mere usake sAWa bahuwa acCe saMbaMXa hEM
(defrule get10
(declare (salience 4000))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 aPavAha_PEla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get10  "  ?id "  " ?id1 "  aPavAha_PEla  )" crlf))
)

;I don't know how the story got about that she'd got married.
;mEM nahIM jAnawA ki yaha aPavAha kEse PEla gaI ki usakI SAxI ho gaI
(defrule get11
(declare (salience 3900))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hala_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get11  "  ?id "  " ?id1 "  hala_nikAla  )" crlf))
)

;We don't see any way of getting around these difficulties.
;hama ina kaTinAiyoM se nikalane kA koI BI hala nahIM nikAla pA rahe hEM
(defrule get12
(declare (salience 3800))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 at)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AlocanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get12  "  ?id "  " ?id1 "  AlocanA_kara  )" crlf))
)

;His boss is always getting at him for arriving late.
;usakA bAsa hameSAM xerI se Ane para usakI AlocanA karawA hE
(defrule get13
(declare (salience 3700))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 at)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get13  "  ?id "  " ?id1 "  samaJa  )" crlf))
)

;What do you think she's getting at? I've no idea what she wants!
;wumhe kyA lagawA hE ki usane kyA samaJA hE?muJe nahIM pawA vaha kyA cAhawI hE!
(defrule get14
(declare (salience 3600))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pakadZa_meM_na_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get14  "  ?id "  " ?id1 "  pakadZa_meM_na_A  )" crlf))
)

;He gets away with murder.
;vaha kawla karane para BI pakadZa meM nahIM AyA
(defrule get15
(declare (salience 3500))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 dAka_se_Beja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get15  "  ?id "  " ?id1 "  dAka_se_Beja  )" crlf))
)

;You must get this letter away today itself.
;wumheM yaha citTI Aja hI dAka se Beja xenI cAhie
(defrule get16
(declare (salience 3400))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CutakArA_pA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get16  "  ?id "  " ?id1 "  CutakArA_pA  )" crlf))
)

;The thieves got away from the police.
;coroM ne pulisa se CutakArA pA liyA
(defrule get17
(declare (salience 3300))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baxalA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get17  "  ?id "  " ?id1 "  baxalA_le  )" crlf))
)

;One day i'll get back at this insult.
;eka xina mEM isa beijjawI kA baxalA lUzgA
(defrule get18
(declare (salience 3200))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 by)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAma_calA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get18  "  ?id "  " ?id1 "  kAma_calA  )" crlf))
)

;Although this money is not sufficient but i'll get by it.
;hAlAMki yaha pEsA kAPI nahIM hE paraMwu mEM isase kAma calA lUMgA
(defrule get19
(declare (salience 3100))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Suru_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get19  "  ?id "  " ?id1 "  Suru_kara  )" crlf))
)

;I find it difficult to get down to doing my work after the vacations.
;CuttiyoM ke bAxa kAma Suru karane meM muJe pareSAnI howI hE
(defrule get20
(declare (salience 3000))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uxAsa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get20  "  ?id "  " ?id1 "  uxAsa_kara  )" crlf))
)

;The miserable weather in winter really gets me down.
;sarxiyoM kA yaha KZarAba mOsama muJe uxAsa kara xewA hE
(defrule get21
(declare (salience 2900))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nigala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get21  "  ?id "  " ?id1 "  nigala  )" crlf))
)

;Her throat was so swollen that she couldn't get anything down.
;usakA galA iwanA sUjA huA WA ki vaha kuCa BI nahIM nigala pA rahI WI
(defrule get22
(declare (salience 2800))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 liKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get22  "  ?id "  " ?id1 "  liKa  )" crlf))
)

;Did you get down everything he said?
;kyA wumane saba kuCa liKa liyA jo usane kahA?
(defrule get23
(declare (salience 2700))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
;(id-word  =(+ ?id 1) in)
;(id-word =(+ ?id 2) with)
(kriyA-upasarga ?id ?id1)      
;(kriyA-object ?id ?)           (commented by Meena)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 miwrawA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get23  "  ?id "  " ?id1 "  miwrawA_kara  )" crlf))
)

;He's always ready to get in with the right person.
;vaha sahI AxamI se miwrawA karane meM hameSAM wEyAra rahawA hE


;This rule get24 was also modified by Meena on 16.10.08 to avoid the clash with other senses.The statement no 6 was added and the statements 8 & 9 were commented.

;I finally managed to get a word in.
;AKirakAra mEne vo Sabxa kaha hI xiyA

(defrule get24
(declare (salience 2600))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(test (> ?id1 ?id))
(id-cat_coarse ?id verb)
;(kriyA-upasarga ?id ?id1)
;(kriyA-object ?id ?)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaha_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp 	get24   "  ?id "  kaha_xe )" crlf))
)

(defrule get25
(declare (salience 2500))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AvaSyakawA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get25  "  ?id "  " ?id1 "  AvaSyakawA_ho  )" crlf))
)

;There is a problem in the wire-we have to get an electrician in.
;wAra meM kuCa KarAbI hE,hameM eka bijalI vAle kI AvaSyakawA hE
(defrule get26
(declare (salience 2400))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pahana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get26  "  ?id "  " ?id1 "  pahana  )" crlf))
)

;It's very difficult to get into this tight shirt.
;isa waMga kamIjZa ko pahananA bahuwa kaTina hE
(defrule get27
(declare (salience 2300))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 padZa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get27  "  ?id "  " ?id1 "  padZa_jA  )" crlf))
)

;You'll get into a trouble if you don't do this work.
;yaxi wuma yaha kAma nahIM karoge wo musIbawa meM padZa jAoge 
;PP_null_off && transitivity=TR && category=verb	SArIrika_saMbaMXa_sWApiwa_kara	0
(defrule get28
(declare (salience 2200))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 bicycle)
(viSeRya-off-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uwara))
(assert (kriyA_id-object_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get28  "  ?id "  " ?id1 "  uwara  )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  get.clp       get28   "  ?id " se )" crlf)
)


;He'd got off with a girl at the party.
;usane pArtI meM eka ladZakI ke sAWa SArIrika saMbaMXa sWApiwa kiyA
(defrule get29
(declare (salience 2100))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get29  "  ?id "  " ?id1 "  uwAra  )" crlf))
)

;I'll not get off these shoes.
;mEM ye jUwe nahIM uwArUzgA
;PP_null_off && transitivity=TR && category=verb	baxala	0
;Can we get off this subject?
;kyA hama yaha viRaya baxala sakawe hEM?
(defrule get30
(declare (salience 2000))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AlocanA_karawe_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get30  "  ?id "  " ?id1 "  AlocanA_karawe_raha  )" crlf))
)

;You're always getting on at me!
;wuma hameMSAM merI AlocanA karawe rahawe ho
(defrule get31
(declare (salience 1900))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 saMparka_sWApiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get31  "  ?id "  " ?id1 "  saMparka_sWApiwa_kara  )" crlf))
)

;Did you get on to the passport office?
;kyA wumane pAsaporta APisa se saMparka sWApiwa kiyA?
(defrule get32
(declare (salience 1800))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Age_baDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get32  "  ?id "  " ?id1 "  Age_baDZa  )" crlf))
)

;I can't get on without some help.
;mEM binA maxaxa ke Age nahIM baDZa sakawA
(defrule get33
(declare (salience 1700))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mEwrIpUrNa_saMbaMXa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get33  "  ?id "  " ?id1 "  mEwrIpUrNa_saMbaMXa_ho  )" crlf))
)

;We get on very well together.
;hama xonoM meM mEwrIpUrNa saMbaMXa hEM
(defrule get34
(declare (salience 1600))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bUDZe_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get34  "  ?id "  " ?id1 "  bUDZe_ho  )" crlf))
)

;How old is Sam?He must be getting on.
;sEma kI umra kyA hE ?vaha BI bUDZA ho rahA hogA
(defrule get35
(declare (salience 1500))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get35  "  ?id "  " ?id1 "  bAhara_nikAla  )" crlf))
)

;How can i get him out of this situation?
;mEM use isa sWiwi se kEse bAhara nikAla sakawA hUz?
(defrule get36
(declare (salience 1400))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 aPavAha_PEla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get36  "  ?id "  " ?id1 "  aPavAha_PEla  )" crlf))
)

;I don't know how the story got out that she'd got married.
;mEM nahIM jAnawA ki yaha aPavAha kEse PEla gaI ki usakI SAxI ho gaI
(defrule get37
(declare (salience 1300))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kaha_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get37  "  ?id "  " ?id1 "  kaha_xe  )" crlf))
)
;I finally managed to get the word out
;AKirakAra mEne vo Sabxa kaha hI xiyA
(defrule get38
(declare (salience 1200))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  get.clp 	get38   "  ?id " "?id1" CApa )" crlf)
)
)

;We'll have to get this newspaper out before next week.
;hameM yaha aKZabAra agale haPwe se pahale CApanA hogA
(defrule get39
(declare (salience 1100))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get39  "  ?id "  " ?id1 "  CApa  )" crlf))
)

;We'll have to get this newspaper out before next week.
;hameM yaha aKZabAra agale haPwe se pahale CApanA hogA
(defrule get40
(declare (salience 1000))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 TIka_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get40  "  ?id "  " ?id1 "  TIka_ho  )" crlf))
)

;He has got over his fever now.
;usakA buKZAra aba TIka ho gayA hE
(defrule get41
(declare (salience 900))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samaJA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get41  "  ?id "  " ?id1 "  samaJA  )" crlf))
)

;This is the mesage that we want to get over to the people.
;yahI vaha saMxeSa hE jo hama logoM ko samaJAnA cAhawe We
(defrule get42
(declare (salience 800))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 round)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samaJA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get42  "  ?id "  " ?id1 "  samaJA  )" crlf))
)

;I know she is not agree with me at the moment but i'll get round her.
;mEM jAnawA hUz ki vo aBI muJase sahamawa nahIM hE lekina mEM use samaJA lUzgA
(defrule get43
(declare (salience 700))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get43  "  ?id "  " ?id1 "  bAwa_kara  )" crlf))
)

;I couldn't get through (to my friend) yesterday.
;mEM kala apane xoswa se bAwa nahIM kara sakA
(defrule get44
(declare (salience 600))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pAsa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get44  "  ?id "  " ?id1 "  pAsa_ho  )" crlf))
)

;I can't get through in this exam!
;mEM isa parIkRA meM pAsa nahIM ho sakawA
(defrule get45
(declare (salience 500))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samaJA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get45  "  ?id "  " ?id1 "  samaJA  )" crlf))
)

;I can't get through to him that drinking (alcohal) is bad for his health.
;mEM use nahIM samaJA sakawA ki (SarAba) pInA usakI sehawa ke lie hAnikAraka hE
(defrule get46
(declare (salience 400))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KZawma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get46  "  ?id "  " ?id1 "  KZawma_kara  )" crlf))
)
;I got through a whole glass of milk
;mEne xUXa kA pUrA gilAsa pI kara KZawma kara xiyA
(defrule get47
(declare (salience 300))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KZawma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  get.clp 	get47   "  ?id "  "?id1 " KZawma_kara )" crlf)
)
)

;I got through a whole glass of milk
;mEne xUXa kA pUrA gilAsa pI kara KZawma kara xiyA
(defrule get48
(declare (salience 200))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get48  "  ?id "  " ?id1 "  pahuzca  )" crlf))
)

;Which question did you get up to in the test? 
;wuma parIkRA meM kOna se praSna para pahuzce We ?
(defrule get49
(declare (salience 100))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wejZa_ho\baDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get49  "  ?id "  " ?id1 "  wejZa_ho\baDZa  )" crlf))
)

;The wind is getting up,it seems there is going to be a storm.
;havA wejZa ho rahI hE,lagawA hE ki wUPAna Ane vAlA hE
(defrule get50
(declare (salience 0))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vyavasWA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get50  "  ?id "  " ?id1 "  vyavasWA_kara  )" crlf))
)

;We must get up a party for his farewell.
;hameM usakI vixAI ke lie pArtI kI vyavasWA karanI cAhie
(defrule get51
(declare (salience -100))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PEla_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get51  "  ?id "  " ?id1 "  PEla_jA  )" crlf))
)

(defrule get52
(declare (salience -200))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PEla_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get52  "  ?id "  " ?id1 "  PEla_jA  )" crlf))
)

(defrule get53
(declare (salience -300))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 along)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAma_calA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get53  "  ?id "  " ?id1 "  kAma_calA  )" crlf))
)

(defrule get54
(declare (salience -400))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 along)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAma_calA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get54  "  ?id "  " ?id1 "  kAma_calA  )" crlf))
)

(defrule get55
(declare (salience -500))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BAga_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get55  "  ?id "  " ?id1 "  BAga_jA  )" crlf))
)

(defrule get56
(declare (salience -600))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BAga_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get56  "  ?id "  " ?id1 "  BAga_jA  )" crlf))
)

(defrule get57
(declare (salience -700))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 lOta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get57  "  ?id "  " ?id1 "  lOta  )" crlf))
)

(defrule get58
(declare (salience -800))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 lOta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get58  "  ?id "  " ?id1 "  lOta  )" crlf))
)

(defrule get59
(declare (salience -900))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 behind)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 piCadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get59  "  ?id "  " ?id1 "  piCadZa  )" crlf))
)

(defrule get60
(declare (salience -1000))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 behind)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 piCadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get60  "  ?id "  " ?id1 "  piCadZa  )" crlf))
)

(defrule get61
(declare (salience -1100))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 by)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acCA_mAna_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get61  "  ?id "  " ?id1 "  acCA_mAna_le  )" crlf))
)

(defrule get62
(declare (salience -1200))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 by)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acCA_mAna_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get62  "  ?id "  " ?id1 "  acCA_mAna_le  )" crlf))
)

(defrule get63
(declare (salience -1300))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get63  "  ?id "  " ?id1 "  uwara  )" crlf))
)

(defrule get64
(declare (salience -1400))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get64  "  ?id "  " ?id1 "  uwara  )" crlf))
)

(defrule get65
(declare (salience -1500))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Gusa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get65  "  ?id "  " ?id1 "  Gusa  )" crlf))
)


;He was not in when I got there , so it was a completely wasted journey .
(defrule get66
(declare (salience -1600))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 in)
;(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-subject ?id  =(- ?id 1))
=>
(retract ?mng)
;(assert (id-wsd_root_mng ?id Gusa))
(assert (id-wsd_root_mng ?id pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp 	get66   "  ?id "  pahuzca )" crlf))
)

(defrule get67
(declare (salience -1700))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 inside)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 anxara_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get67  "  ?id "  " ?id1 "  anxara_jA  )" crlf))
)

(defrule get68
(declare (salience -1800))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 inside)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 anxara_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get68  "  ?id "  " ?id1 "  anxara_jA  )" crlf))
)

(defrule get69
(declare (salience -1900))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 praveSa_kara))
(assert (kriyA_id-object_viBakwi ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get69  "  ?id "  " ?id1 "  praveSa_kara  )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  get.clp       get69   "  ?id " meM )" crlf)
)


(defrule get70
(declare (salience -2000))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 praveSa_kara))
(assert (kriyA_id-object_viBakwi ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get70  "  ?id "  " ?id1 "  praveSa_kara  )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  get.clp       get70   "  ?id " meM )" crlf)
)


(defrule get71
(declare (salience -2100))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uwara))
(assert (kriyA_id-object_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get71  "  ?id "  " ?id1 "  uwara  )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  get.clp       get71   "  ?id " se) " crlf)
)


(defrule get72
(declare (salience -2200))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uwara))
(assert (kriyA_id-object_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get72  "  ?id "  " ?id1 "  uwara  )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  get.clp       get72   "   ?id "  se )" crlf)
)


(defrule get73
(declare (salience -2300))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pragawi_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get73  "  ?id "  " ?id1 "  pragawi_kara  )" crlf))
)

(defrule get74
(declare (salience -2400))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pragawi_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get74  "  ?id "  " ?id1 "  pragawi_kara  )" crlf))
)

(defrule get75
(declare (salience -2500))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pawA_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get75  "  ?id "  " ?id1 "  pawA_cala  )" crlf))
)

(defrule get76
(declare (salience -2600))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pawA_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get76  "  ?id "  " ?id1 "  pawA_cala  )" crlf))
)

(defrule get77
(declare (salience -2700))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BUla_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get77  "  ?id "  " ?id1 "  BUla_jA  )" crlf))
)

(defrule get78
(declare (salience -2800))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BUla_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get78  "  ?id "  " ?id1 "  BUla_jA  )" crlf))
)

(defrule get79
(declare (salience -2900))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 rid)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CutakArA_pA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get79  "  ?id "  " ?id1 "  CutakArA_pA  )" crlf))
)

(defrule get80
(declare (salience -3000))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 rid)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CutakArA_pA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get80  "  ?id "  " ?id1 "  CutakArA_pA  )" crlf))
)

(defrule get81
(declare (salience -3100))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pUrA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get81  "  ?id "  " ?id1 "  pUrA_kara  )" crlf))
)

(defrule get82
(declare (salience -3200))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pUrA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get82  "  ?id "  " ?id1 "  pUrA_kara  )" crlf))
)

(defrule get83
(declare (salience -3300))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get83  "  ?id "  " ?id1 "  pahuzca  )" crlf))
)

(defrule get84
(declare (salience -3400))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get84  "  ?id "  " ?id1 "  pahuzca  )" crlf))
)

(defrule get85
(declare (salience -3500))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 together)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ekawra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get85  "  ?id "  " ?id1 "  ekawra_kara  )" crlf))
)

(defrule get86
(declare (salience -3600))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 together)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ekawra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get86  "  ?id "  " ?id1 "  ekawra_kara  )" crlf))
)

(defrule get87
(declare (salience -3700))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get87  "  ?id "  " ?id1 "  uTa  )" crlf))
)

(defrule get88
(declare (salience -3800))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get88  "  ?id "  " ?id1 "  uTa  )" crlf))
)

(defrule get89
(declare (salience -3900))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 dark)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp 	get89   "  ?id "  ho )" crlf))
)

(defrule get90
(declare (salience -4000))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 late)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp 	get90   "  ?id "  ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  get.clp       get90   "  ?id " ko )" crlf)
)
)

(defrule get91
(declare (salience -4100))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) dark )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp 	get91   "  ?id "  ho )" crlf))
)

(defrule get92
(declare (salience -4200))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 upset)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp 	get92   "  ?id "  ho )" crlf))
)

(defrule get93
(declare (salience -4300))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) upset )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp 	get93   "  ?id "  ho )" crlf))
)

(defrule get94
(declare (salience -4400))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 home)
(kriyA-object ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp 	get94   "  ?id "  pahuzca )" crlf))
)

(defrule get95
(declare (salience -1500))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id1 noun)
;(id-word ?id1 letter|book)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp 	get95   "  ?id "  prApwa_kara )" crlf))
)

(defrule get96
(declare (salience -4600))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 freedom)
(kriyA-object ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp 	get96   "  ?id "  pA )" crlf))
)

(defrule get97
(declare (salience -4700))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) me|us|him|her|them)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp 	get97   "  ?id "  lA_xe )" crlf))
)

(defrule get98
(declare (salience -4800))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get98  "  ?id "  " ?id1 "  uTa  )" crlf))
)

(defrule get99
(declare (salience -4900))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get99  "  ?id "  " ?id1 "  uTa  )" crlf))
)

(defrule get100
(declare (salience -5000))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BAga_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get100  "  ?id "  " ?id1 "  BAga_jA  )" crlf))
)

(defrule get101
(declare (salience -5100))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BAga_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get101  "  ?id "  " ?id1 "  BAga_jA  )" crlf))
)

(defrule get102
(declare (salience -5200))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 GUsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get102  "  ?id "  " ?id1 "  GUsa  )" crlf))
)

(defrule get103
(declare (salience -5300))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 GUsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get103  "  ?id "  " ?id1 "  GUsa  )" crlf))
)

(defrule get104
(declare (salience -5400))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 GUsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get104  "  ?id "  " ?id1 "  GUsa  )" crlf))
)

(defrule get105
(declare (salience -5500))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 GUsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get105  "  ?id "  " ?id1 "  GUsa  )" crlf))
)

(defrule get106
(declare (salience -5600))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 rukAvatoM_ke_bAvajUxa_pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get106  "  ?id "  " ?id1 "  rukAvatoM_ke_bAvajUxa_pahuzca  )" crlf))
)

(defrule get107
(declare (salience -5700))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 rukAvatoM_ke_bAvajUxa_pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get107  "  ?id "  " ?id1 "  rukAvatoM_ke_bAvajUxa_pahuzca  )" crlf))
)

(defrule get108
(declare (salience -5800))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uwara))
(assert (kriyA_id-object_viBakwi ?id para_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get108  "  ?id "  " ?id1 "  uwara  )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  get.clp       get108   "  ?id "  para_se )" crlf)
)


(defrule get109
(declare (salience -5900))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uwara))
(assert (kriyA_id-object_viBakwi ?id para_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get109  "  ?id "  " ?id1 "  uwara  )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  get.clp       get109   "  ?id "  para_se )" crlf)
)


(defrule get110
(declare (salience -6000))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get110  "  ?id "  " ?id1 "  bAhara_ho_jA  )" crlf))
)

(defrule get111
(declare (salience -6100))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " get.clp	get111  "  ?id "  " ?id1 "  bAhara_ho_jA  )" crlf))
)

(defrule get112
(declare (salience -6200))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp 	get112   "  ?id "  prApwa_kara )" crlf))
)


;Added by sheetal(29-12-2009).
(defrule get113
(declare (salience 4950))
(id-root ?id get)
?mng <-(meaning_to_be_decided ?id)
(id-root =(+ ?id 1) wet)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  get.clp      get113   "  ?id "  ho )" crlf))
)
;Do not get wet in the rain .


;default_sense && category=verb	mila	0
;"get","V","1.milanA"
;I get my salary on the 7th of every month.
;--"2.pahuzcanA"
;Please get to the airport before noon.
;--"3.samaJanA"
;Are you getting my point?
;--"4.rAjI_karanA"
;I will get him to speak to you.
;
;
