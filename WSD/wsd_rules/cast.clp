
(defrule cast0
(declare (salience 5000))
(id-root ?id cast)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id casting )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sAxace_meM_DalI_vaswU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  cast.clp  	cast0   "  ?id "  sAxace_meM_DalI_vaswU )" crlf))
)

;given_word=casting && category=noun	$DalAI)

;"casting","N","1.DalAI"
;The casting of metals is done in Ramu's shop.
;--"2.kalAkAroM_kA_cunAva"
;I didn't like the casting in that movie.
;
;
(defrule cast1
(declare (salience 4900))
(id-root ?id cast)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cast.clp	cast1  "  ?id "  " ?id1 "  CodZa_xe  )" crlf))
)

;He has cast off all his bad habits.
;usane apanI sArI burI AxaweM CodZa xIM
(defrule cast2
(declare (salience 4800))
(id-root ?id cast)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cast.clp	cast2  "  ?id "  " ?id1 "  uwAra  )" crlf))
)

;He cast off his jacket && plunged into the water.
;usane apanI jEketa uwArI Ora pAnI meM dubakI lagA xI
(defrule cast3
(declare (salience 4700))
(id-root ?id cast)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Pazxe_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cast.clp	cast3  "  ?id "  " ?id1 "  Pazxe_dAla  )" crlf))
)

;
;
(defrule cast4
(declare (salience 4600))
(id-root ?id cast)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 anacAhI_bAwoM_ko_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cast.clp	cast4  "  ?id "  " ?id1 "  anacAhI_bAwoM_ko_uTA  )" crlf))
)

;
;
(defrule cast5
(declare (salience 4500))
(id-root ?id cast)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 aside)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wyAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cast.clp	cast5  "  ?id "  " ?id1 "  wyAga  )" crlf))
)

(defrule cast6
(declare (salience 4400))
(id-root ?id cast)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 aside)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wyAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cast.clp	cast6  "  ?id "  " ?id1 "  wyAga  )" crlf))
)

(defrule cast7
(declare (salience 4300))
(id-root ?id cast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAwra_sUcI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cast.clp 	cast7   "  ?id "  pAwra_sUcI )" crlf))
)

(defrule cast8
(declare (salience 4200))
(id-root ?id cast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cast.clp 	cast8   "  ?id "  dAla )" crlf))
)

;"cast","V","1.dAlanA"
;Only citizens of 18years && above can cast vote.
;--"2.nAtaka_kelie_cunanA"
;He was casted as Hamlet in the play.
;--"3.AkAra_xenA/banAnA"
;The statue of the poet was cast in silver.
;
;LEVEL 
;Headword : cast
;
;Examples --
;
;1. Don't cast that fishing net. It is torn.
;usa maCalI pakadZane kI jAla ko mawa dAlo. vaha PatI huI hE.   
;
;2. The trees cast their shadows on the still pond.
;pedZoM ne apanI paraCAiyAz usa sWira kuMda para dAlI.
;
;3. Let us cast our votes impartially.
;hama apane mawa niRpakRa BAva se dAla xe.
;
;4. They have cast her in the role of Juliet.
;unhoMne use jUliyata kI BUmikA meM dAlA hE.
;
;5. Hope that this play has a good cast. 
;umIxa hE ki isa nAtaka meM acCe pAwra dAle gae hEM.
;
;6. Snakes cast their skin.
;sAzpa apanI KAla (dAlawe)PeMkawe hEM.
;
;7. We bought the statue cast in brass.
;hamane pIwala meM DAlI huI murwi KarIxI.
;
;8. Pour the hot iron into the cast. 
;garama lohe ko sAzce meM uzdela xo.
;
;9. Cast the clay in the mould before it dries up.
;mittI sUKa jAe usase pahale use sAzce meM DZAla xo.
;
;uparaliKiwa vAkyoM meM "cast" Sabxa ke alaga-alaga saMxarBoM meM jo arWa A raheM hEM, ve uparI wOra se Binna xiKawe hEM, kinwu mUlawaH una saBI arWoM meM sambanXa hEM.
;
;vAkya 1 se vAkya 6 meM "cast" Sabxa kA arWa "dAlanA" EsA A rahA hE.
;kinwu vAkya 4 Ora 5 meM dAlane ke arWa meM viRiSta prakAra se dAle jAne kA BAva prakata ho rahA hE Ora vaha BAva hE DZAlane kA. jEse ki vAkya 4 meM kisI ko kisI BUmikA meM DZAlane kI bAwa ho rahI hE Ora vAkya 5 meM kisI BUmikA meM DZAle gae nAtaka ke pAwroM kI bAwa ho rahI hE. 
;
;vAkya 7 se 9 meM "cast" ke arWa spaRtawaH, DAlane se sambanZXiwa hEM. vAkya 7 meM "cast"  Sabxa, kA prayoga DZAlI gaI vaswu ke lie kiyA gayA hE. jaba ki vAkya 8 meM "cast" Sabxa kA prayoga sAzce, arWAwa vaha pAwra jisameM kuCa DZAlA jAwA hE, ke lie kiyA gayA hE Ora vAkya 9 meM "cast" Sabxa kA kriyA ki waraha prayoga kiyA gayA hE.
;
;wo aba hama "cast" Sabxa ke lie sUwra kuCa isa prakAra xe sakawe hEM :
; 
;anwarnihiwa sUwra ;
;dAlanA - DAlanA[DAlane_kI_kriyA] - DAlane_kA_pAwra - DAla_kara_wEyAra_kI_huI_vaswu
;
;sUwra : dAlanA^DAlanA[>sAzcA+]
;
;"cast","V","dAlanA-DAlanA"
;"cast","N","sAzcA-pAwra"
