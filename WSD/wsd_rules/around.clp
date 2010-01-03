
(defrule around0
(declare (salience 5000))
(id-root ?id around)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) is|are|be|was|were|been|am)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AsapAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  around.clp 	around0   "  ?id "  AsapAsa )" crlf))
)

(defrule around1
(declare (salience 4900))
(id-root ?id around)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) area|region|location|part|expanse|surface area)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM_iXara_uXara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  around.clp 	around1   "  ?id "  meM_iXara_uXara )" crlf))
)

(defrule around2
(declare (salience 4800))
(id-root ?id around)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) integer|whole number|number)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagaBaga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  around.clp 	around2   "  ?id "  lagaBaga )" crlf))
)

(defrule around3
(declare (salience 4700))
(id-root ?id around)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagaBaga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  around.clp 	around3   "  ?id "  lagaBaga )" crlf))
)

;"around","Adv","1.lagaBaga"
;There are around 20,000 people in the stadium today.
;--"2.cAro_ora"
;The children were running around in the garden.
;--"3.GerevAlA"
;The town was 100 kilometers around.
;
(defrule around4
(declare (salience 4600))
(id-root ?id around)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id particle)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hara_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  around.clp 	around4   "  ?id "  hara_ora )" crlf))
)

;"around","Part","1.hara_ora"
;He looked around.
;Someone will show you around.
;--"2.iXara_uXara"
;There were insects scampering around.
;--"3.kuCa_nahIM_karawe_hue"
;Several people were sitting around looking at the passers by.
;--"4.mOjUxa_honA"
;There were more fish around in the tzar's reign.
;--"5.Asa_pAsa"
;There is no one around.
;--"6.pICe_kI_ora"
;He turned around && ran back to the station for his bag.
;
(defrule around5
(declare (salience 4500))
(id-root ?id around)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_iXara_uXara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  around.clp 	around5   "  ?id "  ke_iXara_uXara )" crlf))
)

;"around","Prep","1.iXara_uXara"
;A large number of people were running around the place.
;Books were lying around the room.
;--"2.cAroM_ora"
;He had tied a cloth around his waist.
;--"3.Asa_pAsa"
;I saw him around the garden in the afternoon.
;--"4.GUma_kara"
;The thief ran into a man as he turned around the corner.
;
