
(defrule cover0
(declare (salience 5000))
(id-root ?id cover)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cover.clp	cover0  "  ?id "  " ?id1 "  AdZa  )" crlf))
)

(defrule cover1
(declare (salience 4900))
(id-root ?id cover)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cover.clp	cover1  "  ?id "  " ?id1 "  AdZa  )" crlf))
)

(defrule cover2
(declare (salience 4800))
(id-root ?id cover)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Dazka_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cover.clp	cover2  "  ?id "  " ?id1 "  Dazka_le  )" crlf))
)

(defrule cover3
(declare (salience 4700))
(id-root ?id cover)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Dazka_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " cover.clp	cover3  "  ?id "  " ?id1 "  Dazka_le  )" crlf))
)

(defrule cover4
(declare (salience 4600))
(id-root ?id cover)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AvaraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cover.clp 	cover4   "  ?id "  AvaraNa )" crlf))
)

(defrule cover5
(declare (salience 4500))
(id-root ?id cover)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAviRta_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cover.clp 	cover5   "  ?id "  samAviRta_kara )" crlf))
)

;default_sense && category=verb	AcCAxiwa_karanA/DAzka	0
;"cover","VT","1.AcCAxiwa_karanA/DAzkanA"
;She covered her face with her hands.
;--"2.CipanA"
;The grass covered the grave.
;--"3.paryApwa_honA"
;The grant doesn't cover my salary.
;--"4.waya_karanA"
;The caravan covered almost 100 miles each day.
;--"5.xabA_xenA"
;The President covered the fact that he bugged the offices in the White House
;--"6.nukasAna_BaranA"
;The insurance won't cover the colossal loss of property.  
;--"7.kisI_ke_sWAna_para_kArya_karanA"
;She is covering for our secretary who is ill.
;
;
;LEVEL 
;
;
;
;               cover  sUwra (nibanXa)
;               ----- 
; 
;
;
;`cover' Sabxa ke viviXa prayoga--
;-------------------------
; 
;"cover","N","1.Dakkana"  
;             ---- < AcCAxana karanevAlA
;The computer was covered with a plastic cover.
;--"2.bacAva/SaraNa" 
;            ---- < kisI ke surakRArUpI AcCAxana meM honA 
;The desert didnot give any cover to the troops.
;
;--"3.liPZAPZA"  
;           ----- < AcCAxana karanevAlA
;He forgot to past a postage stamp on the cover.
;--"4.cAxara"  
;            ------ < AcCAxana ke kAma meM AnevAlA 
;He pulled the cover over his head && went off to sleep.
;--"5.puTTA" 
;              ----- < AcCAxana karanevAlA
;The notebook had a brown cover.
;--"6.surakRA_rASI"  
;              ----- < surakRArUpI AcCAxana 
;He took a policy that gives extra cover against theft.
;
;"cover","VT","1.AcCAxiwa_karanA/DAzkanA" 
;She covered her face with her hands.
;--"2.CipanA"   
;    ----- < kisI vaswu kA AcCAxana ke rUpa meM prayoga kara usake ota meM honA
;The grass covered the grave.
;--"3.paryApwa_honA"  
;           ----- < binA kisI kamI yA avaSiRtawA ke AcCAxana-yogya honA 
;The grant doesn't cover my salary.
;--"4.waya_karanA" 
;             ----- < yAwrA xvArA va anya kisI sAXana xvArA AcCAxiwa karanA 
;The caravan covered almost 100 miles each day.
;---"5.xabA_xenA"  
;             ---- < vicArapUrvaka yA balapUrvaka AcCAxiwa kara xenA
;The President covered the fact that he bugged the offices in the White House
;--"6.nukasAna_BaranA"  
;             ----- < kI huI hAni kA AcCAxana karanA 
;The insurance won't cover the colossal loss of property.
;--"7.kisI_ke_sWAna_para_kArya_karanA" 
;              ---- < kisI kI rikwawA kA AcCAxana karanA 
;She is covering for our secretary who is ill.
;---------------------------------------------------------
;
;sUwra-vivaraNa--
;  `cover' ke jiwane BI viviXa prayoga hinxI meM howe hEM . saBI ko `AcCaxana' kriyA
;ke viswAra ke rUpa meM xeKA jA sakawA hE . nIce viviXa prayogoM ke sAWa xI gayI
;tippaNiyoM se yaha bAwa saralawayA samaJI jA sakawI hE . parivarwiwa prawiBAsiwa honevAlA
;prawyeka paxa spaRtarUpa se AcCAxana kriyA se sambaxXa hE .
;
;sUwra : kavara[AcCAxana`]
;---------------
;
