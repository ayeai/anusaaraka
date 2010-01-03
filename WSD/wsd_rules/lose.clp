
(defrule lose0
(declare (salience 5000))
(id-root ?id lose)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vaMciwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " lose.clp	lose0  "  ?id "  " ?id1 "  vaMciwa_ho  )" crlf))
)

;Children who are handicapped lose out to play.
;apAhija bacce Kelane se vaMciwa raha jAwe hEM
(defrule lose1
(declare (salience 4900))
(id-root ?id lose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lose.clp 	lose1   "  ?id "  Ko )" crlf))
)

;default_sense && category=verb	Ko xe	0
;"lose","V","1.Ko xenA"
;He lost his pen.
;His protests were lost in the noise.
;--"2.gazvA xenA"
;He lost a leg in the accident.
;--"3.mita jAnA"
;He has lost his confidence.
;--"4.hAra jAnA"
;They lost the series by 2-0.
;--"5.barabAxa honA"
;Twenty minutes were lost due to the drizzle.
;--"6.pICe ho jAnA"
;My watch loses two minutes every twenty-four hours.
;
;LEVEL 
;Headword : lose
;
;Examples --
;
;"lose","V","1.Ko xenA"
;He lost his pen.
;usane apanA pena Ko xiyA.
;He has lost his confidence.
;usane apanA AwmaviSvAsa Ko xiyA.
;His protests were lost in the noise.
;Sora meM usakA viroXa Ko gayA.
;Twenty minutes were lost due to the drizzle.
;bOCAra ke kAraNa bIsa minata Ko gaye.
;--"2.gazvA_xenA"
;He lost a leg in the accident.
;xurGatanA meM usane eka pAzva gazvA xiyA.
;We lost 30 minutes in the traffic jam.
;trEPika jAma meM hamane wIsa minata gazvA xiye.
;He lost his job because of his foul temper.
;apane kroXI svaBAva ke kAraNa usane apanI nOkarI gazvA xI.
;--"3.kama_honA"
;Rita has lost about 2 kg weight in the past two months.  
;piCale xo mahInoM meM rIwA kA lagaBaga 2 kilo vajZana kama huA hE.
;--"4.pICe ho jAnA"
;My watch loses two minutes every twenty-four hours.
;hara cObIsa GaNte meM merI GadZI 2 minata pICe ho jAwI hE.
;--"5.hAra jAnA"
;They lost the series by 2-0.
;ve 2-0 se SqMKalA hAra gaye.
;
;ukwa uxAharaNoM se 'lose' Sabxa ke xo arWa spaRtawaH uBara kara Awe hEM 
;'KonA' Ora 'hAranA'. SeRa arWa 'gazvA_xenA','kama_honA' Ora 'pICe_rahanA' 
;'KonA' se sambanXiwa lagawe hEM. ina saBI meM mUlawaH kuCa na kuCa Kone kA BAva hE.
;yaxi XyAna se xeKeM wo 'hArane' meM BI 'kuCa KowA' hE. isa xqRti se 'hAranA' BI
;'Kone' ke arWasUwra kI eka kadZI hE. awaH isakA anwarnihiwa sUwra kuCa isaprakAra se banegA  -
;
;anwarnihiwa sUwra ;
;
;KonA - Kone se kuCa kama ho jAnA -pICe raha jAnA -hAranA
;
;isakA sUwra hogA -
;
;sUwra : KonA^hAranA
