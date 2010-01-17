
;Added by Meena(13.11.09)
;He is always right.
;Which one is right for me ?
;I thought it is right to resign .
;He took the right decision.
(defrule right00
(declare (salience 5700))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id2 decision|way|time|place)
(or(subject-subject_samAnAXikaraNa  ?id1 ?id)(viSeRya-viSeRaNa ?id2 ?id)(samAsa ?id2 ?id))  ;we have taken both the relations (viSeRya-viSeRaNa ...) (samAsa ..)
;for id and id2 because of the 1st wrong parse of the link parser. 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  right.clp      right00   "  ?id "  TIka )" crlf)
)
)

;Added by Meena(25.11.09)
;He is always right.
;Which one is right for me ?
;I thought it is right to resign .
(defrule right01
(declare (salience 5700))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
;(or(subject-subject_samAnAXikaraNa  ?id1 ?id)(viSeRya-viSeRaNa ?id2 ?id)(samAsa ?id2 ?id))  ;we have taken both the relations (viSeRya-viSeRaNa ...) (samAsa ..)
;for id and id2 because of the 1st wrong parse of the link parser. 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  right.clp      right01   "  ?id "  TIka )" crlf)
)
)




;Added by Meena(13.11.09)
;She is fighting for her right.
;Every one  has a right to education.
;
(defrule right02
(declare (salience 5000))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-det_viSeRaNa ?id ?id1)(viSeRya-RaRTI_viSeRaNa ?id ?id1)(kriyA-object ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXikAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  right.clp      right02   "  ?id "  aXikAra )" crlf)
)
)



;Added by Meena(13.11.09)
;He writes with his right hand.
;Go straight and take a right turn . 
(defrule right03
(declare (salience 5000))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-on_saMbanXI ?id2 ?id)(kriyA-to_saMbanXI ?id2 ?id)(viSeRya-viSeRaNa ?id1 ?id)(samAsa ?id1 ?id)(kriyA-kriyA_viSeRaNa  ?id1 ?id)); ;we have taken both the relations (viSeRya-viSeRaNa ...) (samAsa ..) for id and id2 because of the 1st wrong parse of the link parser.  
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAzyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  right.clp      right03   "  ?id "  xAzyA )" crlf)
)
)


;Added by human
(defrule right0
(declare (salience 5000))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id rights)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id aXikAra))
(assert (root_id-TAM-vachan ?id s))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  right.clp  	right0   "  ?id "  aXikAra )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-root_id-TAM-vachan  " ?*wsd_dir* "  right.clp      right0   "  ?id " s )" crlf))
)

(defrule right1
(declare (salience 4900))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) to|of )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXikAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  right.clp 	right1   "  ?id "  aXikAra )" crlf))
)


(defrule right2
(declare (salience 4700))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) after|before )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  right.clp 	right2   "  ?id "  TIka )" crlf))
)




;Salience reduced by Meena(13.11.09)
(defrule right3
(declare (salience 0))
;(declare (salience 4500))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXikAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  right.clp 	right3   "  ?id "  aXikAra )" crlf))
)

;"right","N","1.aXikAra"
;You have no right to stop me from going to bombay.
;--"2.sahI"
;The children should be able to distinguish between right && wrong.
;
;viSeRya=answers && category=adjective	TIka	0
(defrule right4
(declare (salience 4400))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) answer)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  right.clp 	right4   "  ?id "  TIka )" crlf))
)

(defrule right5
(declare (salience 4300))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(id-root =(+ ?id 1) decision|person|people|time) ;Added 'time' to the list by Veena Bagga (01-01-2010)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  right.clp 	right5   "  ?id "  sahI )" crlf))
)


(defrule right6
(declare (salience 4000))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(id-root =(+ ?id 1) club|restaurant|place)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  right.clp 	right6   "  ?id "  uciwa )" crlf))
)





(defrule right7
(declare (salience 3300))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) is|are|do|was|were)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  right.clp 	right7   "  ?id "  TIka )" crlf))
)




(defrule right8
(declare (salience 3200))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 2) be)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  right.clp 	right8   "  ?id "  sahI )" crlf))
)

(defrule right9
(declare (salience 3100))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) about|to|by )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  right.clp 	right9   "  ?id "  TIka )" crlf))
)

;last_word && category=adjective	TIka	0
(defrule right10
(declare (salience 2800))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective )
(id-cat_coarse =(+ ?id 1) noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  right.clp 	right10   "  ?id "  TIka )" crlf))
)

(defrule right11
(declare (salience 2700))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 distance)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  sahI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  right.clp 	right11   "  ?id "   sahI )" crlf))
)




;Salience reduced by Meena(14.11.09)
(defrule right12
(declare (salience 0))
;(declare (salience 2600))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAzyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  right.clp 	right12   "  ?id "  xAzyA )" crlf))
)

;"right","Adj","1.xAzyA"
;Place the books on the right side of the spects.
;--"2.sahI"
;He is the right person for the job.
;
;given_word=rightly && category=adverb	$TIka_TIka)


(defrule right13
(declare (salience -100))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAzyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  right.clp     right13   "  ?id "  xAzyA )" crlf))
)



;Salienceireduced by Meena(14.11.09)
(defrule right14
(declare (salience 0))
;(declare (salience 2500))
(id-root ?id right)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  right.clp 	right14   "  ?id "  TIka )" crlf))
)


;"right","Adv","1.TIka"
;Nothing seems to be going right for him nowadays.
;--"2.wuranwa"
;Please wait here for me, I will be right back.
;
;LEVEL 
;
;
;Headword : right
;
;Examples --
;
;"right","N","1.sahI"
;You should know the difference between right && wrong. 
;sahI Ora galawa meM kyA Paraka hE wumhe mAlUma honA cAhiye.
;
;"2.aXikAra" 
;What right have you got to blame me?
;wumhe kyA aXikAra hE muJe xoSI TaharAne kA ?
;
;"3.nyAya/iMsAPa"
;The property belongs to her as of right.
;nyAya ke wOra para jAyaxAxa usakI hE <--nyAyAnusAra <--sahI honA
;
;"4.xAhinA aMga yA BAga" 
;You follow the first turning on the right. 
;wuma xAzyI waraPa praWama modZa kA anusaraNa karo. <--sIXA <--sahI
;
;"right","V","1.TIka ho jAnA(yA KadZA) kara xenA 
;The calf stumbled then miraculously righted itself 
;baCadZA gira gayA lekina camawkArI DZaMga se apane Apa KadZA ho gAyA. <--sahI ho gayA hE 
;
;"2.sahI karanA"
;The fault will probably right itsself,if you give it time. 
;yaxi wuma ise samaya xo,wo galawI SAyaxa svayaM suXara jAegI.
;
;"right","Adj","1.xAzyA"
;Place the books on the right side of the spects.
;kiwAboM ko caSme ke xAzyI waraPa raKa xo.
;--"2.sahI"
;He is the right person for the job.
;vaha bilkula sahI AxamI hE usa kArya ke liye.
;
;"right","Adv","1.TIka"
;The wind was right in our faces. 
;havA TIka hamAre ceharoM para laga rahI WI <--sahI
;--"2.wuranwa
;Please wait here for me, I will be right back.
;kqpayA merA yahAz inwajAra karo,mEM wuranwa vApasa AwA hUz. <--sIXe  
;
;
;sUwra : sahI-aXikAra
;
