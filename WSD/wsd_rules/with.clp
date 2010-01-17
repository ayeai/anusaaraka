;FILE MODIFIED BY MEENA (31.8.09)

;Modified by Meena(31.8.09) ;added (subject-conjunction ?id1  ?id)
;The speed with which it moves is not much.
(defrule with0
(declare (salience 6000))
(id-root ?id with)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) which)
(subject-conjunction ?id1  ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  with.clp    with0   "  ?id "  se )" crlf))
)


;Modified by Meena(28.8.09)
;Do not talk with a driver
;He eats lunch with her.
;If John was with Lisa last night, who went to the movie with Diane.
;He eats rice with soup.
(defrule with1
(declare (salience 5000))
(id-root ?id with)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?id1 ?id2)
;(id-cat =(+ ?id 1) proper_noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_sAWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  with.clp 	with1   "  ?id "  ke_sAWa )" crlf))
)


;Added by Meena(15.9.09)
;He has a horse with a white mark on its head.
;A boy with long hair saved the girl.
(defrule with2
(declare (salience 5000))
(id-root ?id with)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-with_saMbanXI  ?id1 ?id2)(viSeRya-with_saMbanXI  ?id1 ?id2))
(id-root ?id2 mark|hair|border|eye)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  with.clp 	with2   "  ?id "  vAlA )" crlf))
)



;No need for this rule, as with0 should be able to deal with this situation(Meena) 
(defrule with3
(declare (salience 4900))
(id-root ?id with)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) animate)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_sAWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  with.clp 	with3   "  ?id "  ke_sAWa )" crlf))
)




;No need for this rule, as with0 should be able to deal with this situation(Meena)
(defrule with4
(declare (salience 4800))
(id-root ?id with)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) my|me|him|her|them|it|us|you|your|his|their|whom|that); added that in the list -- by manju
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_sAWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  with.clp 	with4   "  ?id "  ke_sAWa )" crlf))
)

;He ate rice with her.




;Modified by Meena(28.8.09); we need to have a list of things like spoon...etc in the database ,it is not possible to include all the things in the list in the rule itself. 
;Some people write with their left hand.
;He writes a letter with a pencil.
;He ate rice with a spoon

;You must outline the important sentences with a marker .
(defrule with5
(declare (salience 5000))
(id-root ?id with)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?id1 ?id2)
;(id-word =(+ ?id 1)  ~animate)
(or(id-root ?id2 newspaper|spoon|pencil|pen|hand|telescope|flower|money|idol|marker);Added 'marker' to the list by Sheetal;(05-01-10);You must outline the important sentences with a marker .
(id-root ?id2 love|beauty|speed))
;(or(viSeRya-det_viSeRaNa ?id2  ?id3)(viSeRya-viSeRana ?id2 ?id3))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  with.clp 	with5   "  ?id "  se )" crlf))
)

;Added by Meena(15.9.09)
;He was about six feet tall, with no distinguishing marks.
(defrule with6
(declare (salience 5000))
(id-root ?id with)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?id1 ?id2)
(id-word =(+ ?id 1) no)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id binA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  with.clp       with6   "  ?id "  binA )" crlf))
)


(defrule with7
(declare (salience 4600))
(id-root ?id with)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) say|fill)
(id-word =(+ ?id 1) emotion)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  with.clp 	with7   "  ?id "  se )" crlf))
)

(defrule with8
(declare (salience 4500))
(id-root ?id with)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) part)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  with.clp 	with8   "  ?id "  se )" crlf))
)

(defrule with9
(declare (salience 4400))
(id-root ?id with)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) think)
(id-word =(+ ?id 1) dignity)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_sAWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  with.clp 	with7   "  ?id "  ke_sAWa )" crlf))
)

(defrule with10
(declare (salience 4300))
(id-root ?id with)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) live)
(id-word =(+ ?id 1) animate)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_sAWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  with.clp 	with10   "  ?id "  ke_sAWa )" crlf))
)

(defrule with11
(declare (salience 4200))
(id-root ?id with)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) change)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_sAWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  with.clp 	with11   "  ?id "  ke_sAWa )" crlf))
)


(defrule with12
(declare (salience 4100))
(id-root ?id with)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) being)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_sAWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  with.clp 	with12   "  ?id "  ke_sAWa )" crlf))
)

;There is nothing wrong with being popular.



(defrule with13
(declare (salience -3900))
(id-root ?id with)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  with.clp 	with13   "  ?id "  se )" crlf))
)

;default_sense && category=preposition	ke_sAWa	0
;"with","Prep","1.ke_sAWa"
;Are you coming with us?.
;He is living with his aunt.
;The labour was with the Union leader on this issue.
;Maturity comes with age.
;The shadow travels with the sun.
;--"2.se"
;We watched the venus with a telescope.
;Decorate the car with fresh flowers.
;His next match is with the Korean player.
;The temperatures dropped to below zero && we were numb with cold.
;--"3.ke_pAsa"
;She left the books with her friend.
;Is my book with you?
;--"4.ke_bAvajUxa"
;With all her faults he loved her.
;--"5.vAlA"
;She was wearing a blue saree with a pink border.
;
(defrule with14
(declare (salience -9800))
(id-root ?id with)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  with.clp 	with14   "  ?id "  se )" crlf))
)

;With this money I can buy ..


;Disambiguation rules for With
;
;Case 1: 
;        If    'with' relates a NOUN with another NOUN,
;        then   with  vAlA
;
;Case 2: 
;        If     'with' relates a NOUN with a VERB, 
;        then
;
;           Case a:
;                  if the NOUN is an INSTRUMENT
;                  then with  se
;
;           Case b:
;                  if the NOUN is a SAHA-KAARAKA
;                  then with  ke_sAWa
;
;
;Examples:
;Case 1:
;         a man with a blue shirt
;         a student with long curly hairs
;Case 2:
; Case a:
;         Ram ate with spoon.
;         He cut an apple with a knife.
; Case b:
;         Ram went with Hari.
;         She came with her brother.
