
(defrule keep0
(declare (salience 5000))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id keeping )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id nigarAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  keep.clp  	keep0   "  ?id "  nigarAnI )" crlf))
)

;given_word=keeping && word_category=noun	$xeKareKa)

;"keeping","N","1.xeKareKa"
;She has her jewellary in the bank's keeping.
;--"2.aXikAra
;He left the book in her keeping.
;--"3.sAmaMjasya
;His clothes were not in keeping with the occasion.
;
;
(defrule keep1
(declare (salience 4900))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CipA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep1  "  ?id "  " ?id1 "  CipA  )" crlf))
)

;I suspected she was keeping something back.
;muJe saMxeha WA ki vo kuCa CipA rahI hE
(defrule keep2
(declare (salience 4800))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bacAe_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep2  "  ?id "  " ?id1 "  bacAe_raKa  )" crlf))
)

;Have you kept something back for your future?
;kyA wumane apane BaviRya ke lie kuCa bacAkara raKA hE?
(defrule keep3
(declare (salience 4700))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 niyaMwraNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep3  "  ?id "  " ?id1 "  niyaMwraNa_kara  )" crlf))
)

;They are taking steps to keep down the population of their village.
;ve apane gAzva kI janasaMKyA niyaMwraNa ke lie bahuwa se kaxama uTA rahe hEM
(defrule keep4
(declare (salience 4600))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hajZama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep4  "  ?id "  " ?id1 "  hajZama_kara  )" crlf))
)

;She is unable to keep anything down except water.
;vaha pAnI ke alAvA kuCa BI hajZama nahIM kara pA rahI hE
(defrule keep5
(declare (salience 4500))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 from)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 roka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep5  "  ?id "  " ?id1 "  roka  )" crlf))
)

;Is there anything you are keeping from me?
;kyA kuCa EsA hE jo wumhe muJe bawAne se roka rahA hE?
(defrule keep6
(declare (salience 4400))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acCe_saMbaMXa_banAe_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep6  "  ?id "  " ?id1 "  acCe_saMbaMXa_banAe_raKa  )" crlf))
)

;It's always good to keep in with police,you never know when you are going to need them!
;yaha hameMSAM acCA rahawA hE ki wuma pulisa se acCe saMbaMXa banAe raKo ,jAne kaba unakI jarUrawa padZa jAe !
(defrule keep7
(declare (salience 4300))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jAne_se_roka_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep7  "  ?id "  " ?id1 "  jAne_se_roka_xe  )" crlf))
)

;You can't keep me in like this?
;wuma muJe isa waraha jAne se roka nahIM sakawe ho?
(defrule keep8
(declare (salience 4200))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bacAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep8  "  ?id "  " ?id1 "  bacAva  )" crlf))
)

;She wore a hat to keep the sun off.
;usane XUpa se bacane ke lie topI pahanI
(defrule keep9
(declare (salience 4100))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_nikala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep9  "  ?id "  " ?id1 "  bAhara_nikala  )" crlf))
)

;Try to keep out of this problem && don't get upset!
;isa kaTinAI se bAhara nikalane kI koSiSa karo Ora pareSAna mawa raho !
(defrule keep10
(declare (salience 4000))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 anxara_Ane_ke_lie_manA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep10  "  ?id "  " ?id1 "  anxara_Ane_ke_lie_manA_kara  )" crlf))
)

;Keep out! This building is not safe.
;anxara mawa Ao !yaha imArawa surakRiwa nahIM hE
(defrule keep11
(declare (salience 3900))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 roka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep11  "  ?id "  " ?id1 "  roka  )" crlf))
)

;This shawl keeps me out the cold.
;yaha SAla muJe TaNda se bacAwI hE
(defrule keep12
(declare (salience 3800))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep12  "  ?id "  " ?id1 "  raha  )" crlf))
)

;Keep to the side of the road to avoid accident.
;xurGatanA se bacane ke lie sadZaka ke kone meM calo
(defrule keep13
(declare (salience 3700))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acCI_sWiwi_meM_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep13  "  ?id "  " ?id1 "  acCI_sWiwi_meM_raha  )" crlf))
)

;I think that this relation will not keep up anymore.
;muJe lagawA hE ki yaha saMbaMXa aba Ora aXika acCI sWiwi meM nahIM raha pAegA
(defrule keep14
(declare (salience 3600))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sAWa_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep14  "  ?id "  " ?id1 "  sAWa_cala  )" crlf))
)

;Don't run! Otherwise i won't be able to keep up with you.
;BAgo mawa! nahIM wo mEM wumhAre sAWa nahIM cala pAUzgA
(defrule keep15
(declare (salience 3500))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 accounts)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hisAba_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep15  "  ?id "  " ?id1 "  hisAba_raKa  )" crlf))
)

(defrule keep16
(declare (salience 3400))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 accounts)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hisAba_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep16  "  ?id "  " ?id1 "  hisAba_raKa  )" crlf))
)

(defrule keep17
(declare (salience 3300))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 at)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 lage_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep17  "  ?id "  " ?id1 "  lage_raha  )" crlf))
)

(defrule keep18
(declare (salience 3200))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 at)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 lage_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep18  "  ?id "  " ?id1 "  lage_raha  )" crlf))
)

(defrule keep19
(declare (salience 3100))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xUra_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep19  "  ?id "  " ?id1 "  xUra_raKa  )" crlf))
)

(defrule keep20
(declare (salience 3000))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xUra_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep20  "  ?id "  " ?id1 "  xUra_raKa  )" crlf))
)

(defrule keep21
(declare (salience 2900))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xUra_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep21  "  ?id "  " ?id1 "  xUra_raKa  )" crlf))
)

(defrule keep22
(declare (salience 2800))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xUra_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep22  "  ?id "  " ?id1 "  xUra_raKa  )" crlf))
)

(defrule keep23
(declare (salience 2700))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CupAkara_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep23  "  ?id "  " ?id1 "  CupAkara_raKa  )" crlf))
)

(defrule keep24
(declare (salience 2600))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CupAkara_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep24  "  ?id "  " ?id1 "  CupAkara_raKa  )" crlf))
)

(defrule keep25
(declare (salience 2500))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 company)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sAWa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep25  "  ?id "  " ?id1 "  sAWa_xe  )" crlf))
)

(defrule keep26
(declare (salience 2400))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 company)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sAWa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep26  "  ?id "  " ?id1 "  sAWa_xe  )" crlf))
)

(defrule keep27
(declare (salience 2300))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Jukakara_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep27  "  ?id "  " ?id1 "  Jukakara_raKa  )" crlf))
)

(defrule keep28
(declare (salience 2200))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Jukakara_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep28  "  ?id "  " ?id1 "  Jukakara_raKa  )" crlf))
)

(defrule keep29
(declare (salience 2100))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xUra_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep29  "  ?id "  " ?id1 "  xUra_raKa  )" crlf))
)

(defrule keep30
(declare (salience 2000))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xUra_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep30  "  ?id "  " ?id1 "  xUra_raKa  )" crlf))
)

(defrule keep31
(declare (salience 1900))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jZArI_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep31  "  ?id "  " ?id1 "  jZArI_raKa  )" crlf))
)

(defrule keep32
(declare (salience 1800))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jZArI_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep32  "  ?id "  " ?id1 "  jZArI_raKa  )" crlf))
)

(defrule keep33
(declare (salience 1700))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xUra_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep33  "  ?id "  " ?id1 "  xUra_raKa  )" crlf))
)

(defrule keep34
(declare (salience 1600))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xUra_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep34  "  ?id "  " ?id1 "  xUra_raKa  )" crlf))
)

(defrule keep35
(declare (salience 1500))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 rAswe_para_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep35  "  ?id "  " ?id1 "  rAswe_para_raKa  )" crlf))
)

(defrule keep36
(declare (salience 1400))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 rAswe_para_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep36  "  ?id "  " ?id1 "  rAswe_para_raKa  )" crlf))
)

(defrule keep37
(declare (salience 1300))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Jukakara_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep37  "  ?id "  " ?id1 "  Jukakara_raha  )" crlf))
)

(defrule keep38
(declare (salience 1200))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Jukakara_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep38  "  ?id "  " ?id1 "  Jukakara_raha  )" crlf))
)

(defrule keep39
(declare (salience 1100))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xUra_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep39  "  ?id "  " ?id1 "  xUra_raha  )" crlf))
)

(defrule keep40
(declare (salience 1000))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xUra_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep40  "  ?id "  " ?id1 "  xUra_raha  )" crlf))
)

(defrule keep41
(declare (salience 900))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jZArI_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep41  "  ?id "  " ?id1 "  jZArI_raha  )" crlf))
)

(defrule keep42
(declare (salience 800))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jZArI_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep42  "  ?id "  " ?id1 "  jZArI_raha  )" crlf))
)

(defrule keep43
(declare (salience 700))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xUra_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep43  "  ?id "  " ?id1 "  xUra_raha  )" crlf))
)

(defrule keep44
(declare (salience 600))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xUra_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep44  "  ?id "  " ?id1 "  xUra_raha  )" crlf))
)

(defrule keep45
(declare (salience 500))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 rAswe_para_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep45  "  ?id "  " ?id1 "  rAswe_para_raha  )" crlf))
)

(defrule keep46
(declare (salience 400))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 rAswe_para_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep46  "  ?id "  " ?id1 "  rAswe_para_raha  )" crlf))
)

(defrule keep47
(declare (salience 300))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 under)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xabAkara_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep47  "  ?id "  " ?id1 "  xabAkara_raKa  )" crlf))
)

(defrule keep48
(declare (salience 200))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 under)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xabAkara_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep48  "  ?id "  " ?id1 "  xabAkara_raKa  )" crlf))
)

(defrule keep49
(declare (salience 100))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jZArI_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep49  "  ?id "  " ?id1 "  jZArI_raha  )" crlf))
)

(defrule keep50
(declare (salience 0))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jZArI_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep50  "  ?id "  " ?id1 "  jZArI_raha  )" crlf))
)

(defrule keep51
(declare (salience -100))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 ahead)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep51  "  ?id "  " ?id1 "  raha  )" crlf))
)

(defrule keep52
(declare (salience -200))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirvAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  keep.clp 	keep52   "  ?id "  nirvAha )" crlf))
)

(defrule keep53
(declare (salience -300))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jZArI_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep53  "  ?id "  " ?id1 "  jZArI_raha  )" crlf))
)

(defrule keep54
(declare (salience -400))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jZArI_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " keep.clp	keep54  "  ?id "  " ?id1 "  jZArI_raha  )" crlf))
)

(defrule keep55
(declare (salience -500))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 quiet)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  keep.clp 	keep55   "  ?id "  raha )" crlf))
)

;The children kept quiet.
(defrule keep56
(declare (salience -600))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  keep.clp 	keep56   "  ?id "  raKa )" crlf))
(assert (kriyA_id-object2_viBakwi ?id ko))
)

;They kept him busy
;They kept the books on the table.
(defrule keep57
(declare (salience -700))
(id-root ?id keep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  keep.clp 	keep57   "  ?id "  raha )" crlf))
)

;They kept silent.
;default_sense && category=verb	raKa	0
;"keep","VT","1.raKanA"
;He keeps his books well arranged.
;--"2.hisAba_raKanA"
;Keep a diary.
;Keep accounts.
;--"3.niBAnA"
;Keep appointment.
;Keep treaty.
;Keep bargain.
;--"4.nirvAha_karanA"
;He earns enough to keep himself && his family.
;--"5.wabiyawa_honA"
;How are you keeping?
;He is keeping well.
;
;
;LEVEL 
;Headword : keep
;
;Examples --
;
;"keep","VT","1.raKanA"
;He keeps his books well arranged.
;vaha apanI kiwAbeM vyavasWiwa rUpa meM raKawA hE.
;Keep a diary.
;dAyarI raKA karo
;Keep accounts.
;hisAba raKA karo
;--"3.niBAnA"
;Keep appointment.
;apOiMtamEMta niBAnA  <--- raKanA
;Keep treaty.
;saMXi niBAnA           <-- raKanA
;--"4.nirvAha_karanA"
;He earns enough to keep himself && his family.
;vaha apanA Ora apane parivAra kA nirvAha karane lAyaka kamA lewA hE. <-- svayaM ko raKane lAyaka
;--"5.svAsWya_honA"
;How are you keeping?
;ApakA svAsWya kEsA hE ?  <-- (svasWa bane) rahanA
;He is keeping well.
;vaha svasWa_hE.
;
;"keep","AuxV","1.rahanA/jZArI_raKanA"
;When a child learns walking, he keeps walking.
;jaba baccA pExala calanA sIKawA hE wo vaha pExala calawA hI rahawA hE.
;You have to keep trying till you find a solution for your problem.
;jaba waka wumheM apanI samasyA kA samAXAna na mile wumhe prayAsa karawe rahanA padZegA.
;
;"keep","N","1.nirvAha"
;He has to earn his keep.
;usako apane nirvAha ke liye XanArjana karanA padZawA hE. <-- jIvana banAe raKanA
;--"2.xeKareKa"
;Children live in their parent's keep.
;bacce apane mAwA-piwA kI xeKareKa meM rahawe hEM. <-- mAwA-piwA raKawe hEM
;--"3.raKZEla"
;She was his keep.
;vaha usakI raKEla WI. <-- jisako raKA gayA vaha
;
;vyAKyA --
;
;Upara xiye uxAharaNoM se 'keep' kA mUla arWa 'raKanA' nikalawA hE. yaha kriyArWa hE. raKanA sakarmaka hE Ora isakA akarmaka rUpa 'rahanA' bana jAwA hE. kriyA ke saBI uxAharaNoM meM 'raKanA' se arWa samaJa meM A jAwA hE. sahAyaka kriyA meM BI 'rahanA' vAlA arWa hE. saMjFA meM BI 'raKanA' se sambanXiwa kArakoM se arWa nikala rahe hEM. awaH isakA mUla arWa 'raKanA' hI
;mAnA jA sakawA hE.
;
;anwarnihiwa sUwra ;
;
;                           raKanA`-- rahanA
;                            |
;            |---------------|-----------------|
;            |               |                 |
;         jisako raKA jAe vaha  raKanA (saMjFA)      raKane kI kriyA karanA
;           (karma - viSiRta)  |                 |
;            |              nirvAha              xeKareKa
;           raKEla                        
;
;
;sUwra : raKanA`  
