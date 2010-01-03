
(defrule break0
(declare (salience 5000))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vixroha_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break0  "  ?id "  " ?id1 "  vixroha_kara  )" crlf))
)

;She broke away from her family && moved to America.
;apane parivAra se vixroha karake vaha amarIkA calI gaI
(defrule break1
(declare (salience 4900))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KarAba_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break1  "  ?id "  " ?id1 "  KarAba_ho_jA  )" crlf))
)

(defrule break2
(declare (salience 4800))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KarAba_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break2  "  ?id "  " ?id1 "  KarAba_ho_jA  )" crlf))
)

(defrule break3
(declare (salience 4700))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jIwa_lenA_yA_tUta_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break3  "  ?id "  " ?id1 "  jIwa_lenA_yA_tUta_jA  )" crlf))
)

(defrule break4
(declare (salience 4600))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jIwa_lenA_yA_tUta_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break4  "  ?id "  " ?id1 "  jIwa_lenA_yA_tUta_jA  )" crlf))
)

(defrule break5
(declare (salience 4500))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 praveSa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break5  "  ?id "  " ?id1 "  praveSa_kara  )" crlf))
)

(defrule break6
(declare (salience 4400))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 praveSa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break6  "  ?id "  " ?id1 "  praveSa_kara  )" crlf))
)

(defrule break7
(declare (salience 4300))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jabaraxaswI_Gusa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break7  "  ?id "  " ?id1 "  jabaraxaswI_Gusa_jA  )" crlf))
)

(defrule break8
(declare (salience 4200))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jabaraxaswI_Gusa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break8  "  ?id "  " ?id1 "  jabaraxaswI_Gusa_jA  )" crlf))
)

(defrule break9
(declare (salience 4100))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acAnaka_ruka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break9  "  ?id "  " ?id1 "  acAnaka_ruka  )" crlf))
)

(defrule break10
(declare (salience 4000))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acAnaka_ruka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break10  "  ?id "  " ?id1 "  acAnaka_ruka  )" crlf))
)

(defrule break11
(declare (salience 3900))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 open)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wodZa_kara_Kola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break11  "  ?id "  " ?id1 "  wodZa_kara_Kola  )" crlf))
)

(defrule break12
(declare (salience 3800))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 open)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wodZa_kara_Kola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break12  "  ?id "  " ?id1 "  wodZa_kara_Kola  )" crlf))
)

(defrule break13
(declare (salience 3700))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 yakAyaka_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break13  "  ?id "  " ?id1 "  yakAyaka_ho  )" crlf))
)

(defrule break14
(declare (salience 3600))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 yakAyaka_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break14  "  ?id "  " ?id1 "  yakAyaka_ho  )" crlf))
)

(defrule break15
(declare (salience 3500))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 seal)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mohara_wodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break15  "  ?id "  " ?id1 "  mohara_wodZa  )" crlf))
)

(defrule break16
(declare (salience 3400))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 seal)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mohara_wodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break16  "  ?id "  " ?id1 "  mohara_wodZa  )" crlf))
)

(defrule break17
(declare (salience 3300))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samApwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break17  "  ?id "  " ?id1 "  samApwi  )" crlf))
)

(defrule break18
(declare (salience 3200))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samApwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break18  "  ?id "  " ?id1 "  samApwi  )" crlf))
)

(defrule break19
(declare (salience 3100))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break19  "  ?id "  " ?id1 "  wodZa  )" crlf))
)

(defrule break20
(declare (salience 3000))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 tUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break20  "  ?id "  " ?id1 "  tUta  )" crlf))
)

(defrule break21
(declare (salience 2900))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break21  "  ?id "  " ?id1 "  wodZa  )" crlf))
)

(defrule break22
(declare (salience 2800))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 tUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break22  "  ?id "  " ?id1 "  tUta  )" crlf))
)

(defrule break23
(declare (salience 2700))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sambanXa_samApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break23  "  ?id "  " ?id1 "  sambanXa_samApwa_kara  )" crlf))
)

(defrule break24
(declare (salience 2600))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sambanXa_samApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break24  "  ?id "  " ?id1 "  sambanXa_samApwa_kara  )" crlf))
)

(defrule break25
(declare (salience 2500))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id breaking )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id tUta_PUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  break.clp  	break25   "  ?id "  tUta_PUta )" crlf))
)

(defrule break26
(declare (salience 2400))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avakASa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  break.clp 	break26   "  ?id "  avakASa )" crlf))
)

(defrule break27
(declare (salience 2300))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 aMxara_GUsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break27  "  ?id "  " ?id1 "  aMxara_GUsa  )" crlf))
)

(defrule break28
(declare (salience 2200))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 aMxara_GUsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break28  "  ?id "  " ?id1 "  aMxara_GUsa  )" crlf))
)

;karma=window && category=verb	balAw_Gusa_jA	10.1812455437902
(defrule break29
(declare (salience 2100))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 day)
(kriyA-subject ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  break.clp 	break29   "  ?id "  uga )" crlf))
)

;The day broke.
;karwA=window && category=verb	balAw_Gusa_jA	7.86838182467634
;karwA=Thieves && category=verb	balAw_Gusa_jA	5.91972064224914
;karma=stalemate && category=verb	wodZa	5.80914299031403
;karwA=Raiders && category=verb	balAw_Gusa_jA	4.78749174278205
;karwA=storm && category=verb	balAw_Gusa_jA	2.87247726801961
;viSeRaNa=loose && category=verb	balAw_Gusa_jA	1.20397280432594
;karwA=scuffle && category=verb	balAw_Gusa_jA	1.17882862252491
;that_clause_-_- && category=verb	balAw_Gusa_jA	-2.35137525716348
(defrule break30
(declare (salience 2000))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  break.clp 	break30   "  ?id "  wodZa )" crlf))
)

(defrule break31
(declare (salience 1900))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  break.clp 	break31   "  ?id "  tUta )" crlf))
)

(defrule break32
(declare (salience 1800))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  break.clp 	break32   "  ?id "  tUta )" crlf))
)

;default_sense && category=verb	BaMga_kara	0
;"break","VT","1.BaMga_karanA"
;Break the loaf of bread
;The book dealer would not break the set
;--"2.bala_wodZanA"
;The horse was tough to break
;If the new teacher won't break, we'll add some stress
;Break a circuit
;--"3.kama_karanA"
;Break cigarette smoking
;--"4.PUtanA"
;Break into tears
;--"5.calanA"
;Things have been breaking pretty well for us in the past few months
;--"6.wodZanA"
;My daughter's fancy wedding is going to break me!
;Break a branch from a tree
;For a hero loves the world till it breaks him
;--"7.PatanA"
;His voice is breaking--he should no longer sing in the choir
;--"8.PodZanA"
;Break an alibi
;Break the code
;
;
;LEVEL 
;Headword  : break
;
;Examples --
;
;"break","V",wodanA"
;Break a branch from the tree
;peda se eka SAKA woda xo
;--"2.PUtanA"
;She broke into tears after hearing the news 
;Kabara sunawe hI usake AzsU PUta padZe
;--"3.nikalanA"  <--wodanA
;Day was beginning to break
;xina nikalanA SurU huA
;--"4.niyamoM ko wodanA( na pAlanA)"
;When he came into power he broke all the rules
;aXikAra meM Awe hI usane sAre niyamoM ko woda dAlA
;--"5.(AvAjZa)PatanA" <--xarAra_padanA
;He is not in the choir as his voice is breaking
;usakI AvAjZa Patane ke kAraNa vaha gAyaka xala meM nahIM hE
; --"6.vrawa_samApwa_karanA"<--wodanA
;She broke the fast
;usane vrawa samApwa kiyA.
;
;"break","N","1.xarAra"  
;They hoped to avoid a break in  relations 
;ve  sambanXa meM xarAra se bacane kI ASA kI
;--"2.CuttI"<--woda
;We took a ten minute break
;hama xasa minata kI CuttI lI
;--"3.anwara"<--woda
;The game is at the break point
;Kela aba jIwa ke anwara hE
;
;vyAKyA  --
;uparyukwa kriyA 3. vAkya meM xina azXere ko xUra karake 
;nikalawA hE vAkya 6. meM "wodanA" kA wAwparya yaha hE",anaSana samApwa karanA"vrawa samApwa karane kA niRkarRa hE 
;saMjFA vAkya 3.meM Kela jIwane kA uxAharaNa jahAz prawixvanxvI geMxa PeMkawe hI krIdaka jIwane kA mOkA milawA hE
;
;sUwra : wodZa` 
;
;
;
(defrule break33
(declare (salience 1700))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id broken )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
;(assert (id-wsd_word_mng ?id tUtA_PUtA))
(assert (id-wsd_root_mng ?id tUta))
(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  break.clp  	break33   "  ?id "  tUtA_PUtA )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  break.clp   break33   "  ?id "  tUta )" crlf))
)
;Broken windows need to be replaced 

(defrule break34
(declare (salience 1600))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vixroha_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break34  "  ?id "  " ?id1 "  vixroha_kara  )" crlf))
)

;She broke away from her family && moved to America.
;apane parivAra se vixroha karake vaha amarIkA calI gaI
(defrule break35
(declare (salience 1500))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KarAba_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break35  "  ?id "  " ?id1 "  KarAba_ho_jA  )" crlf))
)

(defrule break36
(declare (salience 1400))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KarAba_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break36  "  ?id "  " ?id1 "  KarAba_ho_jA  )" crlf))
)

(defrule break37
(declare (salience 1300))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jIwa_lenA_yA_tUta_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break37  "  ?id "  " ?id1 "  jIwa_lenA_yA_tUta_jA  )" crlf))
)

(defrule break38
(declare (salience 1200))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jIwa_lenA_yA_tUta_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break38  "  ?id "  " ?id1 "  jIwa_lenA_yA_tUta_jA  )" crlf))
)

(defrule break39
(declare (salience 1100))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 praveSa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break39  "  ?id "  " ?id1 "  praveSa_kara  )" crlf))
)

(defrule break40
(declare (salience 1000))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 praveSa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break40  "  ?id "  " ?id1 "  praveSa_kara  )" crlf))
)

(defrule break41
(declare (salience 900))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jabaraxaswI_Gusa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break41  "  ?id "  " ?id1 "  jabaraxaswI_Gusa_jA  )" crlf))
)

(defrule break42
(declare (salience 800))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jabaraxaswI_Gusa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break42  "  ?id "  " ?id1 "  jabaraxaswI_Gusa_jA  )" crlf))
)

(defrule break43
(declare (salience 700))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acAnaka_ruka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break43  "  ?id "  " ?id1 "  acAnaka_ruka  )" crlf))
)

(defrule break44
(declare (salience 600))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 acAnaka_ruka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break44  "  ?id "  " ?id1 "  acAnaka_ruka  )" crlf))
)

(defrule break45
(declare (salience 500))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 open)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wodZa_kara_Kola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break45  "  ?id "  " ?id1 "  wodZa_kara_Kola  )" crlf))
)

(defrule break46
(declare (salience 400))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 open)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wodZa_kara_Kola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break46  "  ?id "  " ?id1 "  wodZa_kara_Kola  )" crlf))
)

(defrule break47
(declare (salience 300))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 yakAyaka_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break47  "  ?id "  " ?id1 "  yakAyaka_ho  )" crlf))
)

(defrule break48
(declare (salience 200))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 yakAyaka_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break48  "  ?id "  " ?id1 "  yakAyaka_ho  )" crlf))
)

(defrule break49
(declare (salience 100))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 seal)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mohara_wodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break49  "  ?id "  " ?id1 "  mohara_wodZa  )" crlf))
)

(defrule break50
(declare (salience 0))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 seal)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mohara_wodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break50  "  ?id "  " ?id1 "  mohara_wodZa  )" crlf))
)

(defrule break51
(declare (salience -100))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samApwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break51  "  ?id "  " ?id1 "  samApwi  )" crlf))
)

(defrule break52
(declare (salience -200))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samApwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break52  "  ?id "  " ?id1 "  samApwi  )" crlf))
)

(defrule break53
(declare (salience -300))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break53  "  ?id "  " ?id1 "  wodZa  )" crlf))
)

(defrule break54
(declare (salience -400))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 tUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break54  "  ?id "  " ?id1 "  tUta  )" crlf))
)

(defrule break55
(declare (salience -500))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break55  "  ?id "  " ?id1 "  wodZa  )" crlf))
)

(defrule break56
(declare (salience -600))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 tUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break56  "  ?id "  " ?id1 "  tUta  )" crlf))
)

(defrule break57
(declare (salience -700))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sambanXa_samApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break57  "  ?id "  " ?id1 "  sambanXa_samApwa_kara  )" crlf))
)

(defrule break58
(declare (salience -800))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sambanXa_samApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break58  "  ?id "  " ?id1 "  sambanXa_samApwa_kara  )" crlf))
)

(defrule break59
(declare (salience -900))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avakASa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  break.clp 	break59   "  ?id "  avakASa )" crlf))
)

(defrule break60
(declare (salience -1000))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 aMxara_GUsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break60  "  ?id "  " ?id1 "  aMxara_GUsa  )" crlf))
)

(defrule break61
(declare (salience -1100))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 aMxara_GUsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " break.clp	break61  "  ?id "  " ?id1 "  aMxara_GUsa  )" crlf))
)

;karma=window && category=verb	balAw_Gusa_jA	10.1812455437902
(defrule break62
(declare (salience -1200))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 day)
(kriyA-subject ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  break.clp 	break62   "  ?id "  uga )" crlf))
)

;The day broke.
;karwA=window && category=verb	balAw_Gusa_jA	7.86838182467634
;karwA=Thieves && category=verb	balAw_Gusa_jA	5.91972064224914
;karma=stalemate && category=verb	wodZa	5.80914299031403
;karwA=Raiders && category=verb	balAw_Gusa_jA	4.78749174278205
;karwA=storm && category=verb	balAw_Gusa_jA	2.87247726801961
;viSeRaNa=loose && category=verb	balAw_Gusa_jA	1.20397280432594
;karwA=scuffle && category=verb	balAw_Gusa_jA	1.17882862252491
;that_clause_-_- && category=verb	balAw_Gusa_jA	-2.35137525716348
(defrule break63
(declare (salience -1300))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  break.clp 	break63   "  ?id "  wodZa )" crlf))
)

(defrule break64
(declare (salience -1400))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  break.clp 	break64   "  ?id "  tUta )" crlf))
)

(defrule break65
(declare (salience -1500))
(id-root ?id break)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  break.clp 	break65   "  ?id "  tUta )" crlf))
)

;default_sense && category=verb	BaMga_kara	0
;"break","VT","1.BaMga_karanA"
;Break the loaf of bread
;The book dealer would not break the set
;--"2.bala_wodZanA"
;The horse was tough to break
;If the new teacher won't break, we'll add some stress
;Break a circuit
;--"3.kama_karanA"
;Break cigarette smoking
;--"4.PUtanA"
;Break into tears
;--"5.calanA"
;Things have been breaking pretty well for us in the past few months
;--"6.wodZanA"
;My daughter's fancy wedding is going to break me!
;Break a branch from a tree
;For a hero loves the world till it breaks him
;--"7.PatanA"
;His voice is breaking--he should no longer sing in the choir
;--"8.PodZanA"
;Break an alibi
;Break the code
;
;
;LEVEL 
;Headword  : break
;
;Examples --
;
;"break","V",wodanA"
;Break a branch from the tree
;peda se eka SAKA woda xo
;--"2.PUtanA"
;She broke into tears after hearing the news 
;Kabara sunawe hI usake AzsU PUta padZe
;--"3.nikalanA"  <--wodanA
;Day was beginning to break
;xina nikalanA SurU huA
;--"4.niyamoM ko wodanA( na pAlanA)"
;When he came into power he broke all the rules
;aXikAra meM Awe hI usane sAre niyamoM ko woda dAlA
;--"5.(AvAjZa)PatanA" <--xarAra_padanA
;He is not in the choir as his voice is breaking
;usakI AvAjZa Patane ke kAraNa vaha gAyaka xala meM nahIM hE
; --"6.vrawa_samApwa_karanA"<--wodanA
;She broke the fast
;usane vrawa samApwa kiyA.
;
;"break","N","1.xarAra"  
;They hoped to avoid a break in  relations 
;ve  sambanXa meM xarAra se bacane kI ASA kI
;--"2.CuttI"<--woda
;We took a ten minute break
;hama xasa minata kI CuttI lI
;--"3.anwara"<--woda
;The game is at the break point
;Kela aba jIwa ke anwara hE
;
;vyAKyA  --
;uparyukwa kriyA 3. vAkya meM xina azXere ko xUra karake 
;nikalawA hE vAkya 6. meM "wodanA" kA wAwparya yaha hE",anaSana samApwa karanA"vrawa samApwa karane kA niRkarRa hE 
;saMjFA vAkya 3.meM Kela jIwane kA uxAharaNa jahAz prawixvanxvI geMxa PeMkawe hI krIdaka jIwane kA mOkA milawA hE
;
;sUwra : wodZa` 
;
;
;
;
;
;
;
;
;
;
;
;
