
(defrule even0
(declare (salience 5000))
(id-root ?id even)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id evening )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id SAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  even.clp  	even0   "  ?id "  SAma )" crlf))
)

;"evening","N","1.saMXyA/SAma"
;I go for a walk every evening. 
;
;
(defrule even1
(declare (salience 4900))
(id-root ?id even)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 barAbara_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " even.clp	even1  "  ?id "  " ?id1 "  barAbara_kara  )" crlf))
)


(defrule even2
(declare (salience 4700))
(id-root ?id even)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 barAbara_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " even.clp	even2  "  ?id "  " ?id1 "  barAbara_ho  )" crlf))
)


;Added by human
(defrule even3
(declare (salience 4500))
(id-root ?id even)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) more)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  even.clp 	even3   "  ?id "  Ora )" crlf))
)

(defrule even4
(declare (salience 4400))
(id-root ?id even)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) if)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wo_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  even.clp 	even4   "  ?id "  wo_BI )" crlf))
)


;Meaning changed from wo_BI to yaxyapi and hence print statement too(Meena:18.8.09)
(defrule even5
(declare (salience 4300))
(id-root ?id even)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) though)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yaxyapi))
;(assert (id-wsd_root_mng ?id wo_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  even.clp   even5   "  ?id "  yaxyapi )" crlf))
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  even.clp 	even5   "  ?id "  wo_BI )" crlf))
)

(defrule even6
(declare (salience 4200))
(id-root ?id even)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) when)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wo_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  even.clp 	even6   "  ?id "  wo_BI )" crlf))
)

;I shall continue to work from 6 a.m. till midnight, even if it kills me.
;She checks her text messages when you least expect her to, even when she's driving.
;Even though she has a degree in business administration, all her business ventures have failed.
(defrule even7
(declare (salience 4100))
(id-root ?id even)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa ?id1 ?id)
;(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BI))
;(assert (id-wsd_root_mng ?id 0_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  even.clp 	even7   "  ?id "  0_BI )" crlf))
)

(defrule even8
(declare (salience 4000))
(id-root ?id even)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samawala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  even.clp 	even8   "  ?id "  samawala )" crlf))
)

(defrule even9
(declare (salience 3700))
(id-root ?id even)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barAbara_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  even.clp 	even9   "  ?id "  barAbara_kara )" crlf))
)

;default_sense && category=verb	barAbara_kara	0
;"even","VT","1.barAbara_karanA"
;Even out the surface
;
;
;LEVEL 
;Headword : even
;
;Examples --
;
;"even","adv","1.BI"
;She sleeps even in the office.
;vaha APisa meM BI sowI hE.
;--"2.Ora BI"
;Her condition was even worse.
;usakI hAlawa Ora BI KarAba WI.
;--"3.jisa samaya"
;Even as we watched, the whole building collapsed.
;jisa samaya hama xeKane lage pUrI imArawa gira padZI.
;hamAre xeKawe xeKawe pUrI imArawa gira gayI.
;--"4.kaBI..BI"
;She never even opened the letter.
;usane kaBI pawra KolA BI nahIM 
;--"5.waka kA BI"
;She didn't answer even my letter. 
;usane mere pawra waka kA BI javAba nahIM xiyA.
;
;"even","adj","1.samawala"  
;The field is not even.
;mExAna samawala nahIM hE. 
;--"2.eka sA/eka rUpa"
;Her stiches weren't very even.
;usakI sticesa eka sI nahIM WI.
;--"3.SAnwa"
;She is an even tempered lady.
;vaha eka SAnwa svaBAva kI swrI hE.<--eka se svaBAva kI <--kroXa kA uwAra caDZAva na honA<--samawala
;
;--"4.sama"
;These nos.4,6,8,10,etc.are even numbers && can be divided by two.
;ye nambaras 4,6,8,10,Axi sama nambaras hEM Ora xo se viBAjiwa kiye jA sakawe hEM
;
;"even","V","1.barAbara karanA/ho jAnA"
;Martina evened the score just after half-time.
;mAratInA ne wuraMwa AXe samaya ke bAxa aMka barAbara kara liye.<--eka sA ho jAnA <--eka swara para A jAnA <-- sama ho jAnA
;                                         
;nota:--uparokwa liKe 'even'Sabxa ke viBinna viSeRaNa,evaM kriyA ke arWoM Ora vAkyoM    ko XyAna se xeKane para yaha kaha sakawe hEM ki isakA eka arWa wo 'eka-sA' yA 'sama' kA hE.yaha BAva isake viSeRaNa evaM kriyA prayogoM se spaRta hE. kinwu 'Adv' prayoga meM isakA arWa aXikawara 'BI' hE. 
;
;  awaH isakA sUwra bana sakawA hE.
;
;sUwra : samawala/BI 
