
(defrule in0
(declare (salience 5000))
(id-root ?id in)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) faith)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  in.clp 	in0   "  ?id "  para )" crlf))
)

;I have faith in him.
(defrule in1
(declare (salience 4900))
(id-root ?id in)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) in)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  in.clp 	in1   "  ?id "  - )" crlf))
)




;Modified by Meena(29.10.09)
;I will have dinner at seven o'clock in the evening . 
(defrule in2
(declare (salience 4800))
(id-root ?id in)
?mng <-(meaning_to_be_decided ?id)
;(id-word =(+ ?id 1) evening|noon|afternoon)
(id-word =(+ ?id 2) evening|noon|afternoon)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  in.clp 	in2   "  ?id "  ko )" crlf))
)




(defrule in3
(declare (salience 4700))
(id-root ?id in)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) chair)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  in.clp 	in3   "  ?id "  para )" crlf))
)

(defrule in4
(declare (salience 4600))
(id-root ?id in)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) go|slip|drag|pull|push)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMxara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  in.clp 	in4   "  ?id "  aMxara )" crlf))
)

(defrule in5
(declare (salience 4500))
(id-root ?id in)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  in.clp 	in5   "  ?id "  iMca )" crlf))
)

;"in","Abbr:inch","1.iMca"
;He is 4 ft 2 inches tall.
;
(defrule in6
(declare (salience 4400))
(id-root ?id in)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anxara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  in.clp 	in6   "  ?id "  anxara )" crlf))
)

;"in","Adv","1.anxara"
;He walked in at the right moment.




;Added by Meena(29.10.09)
;I will have tea in the morning. 
(defrule in7
(declare (salience 1100))
(id-root ?id in)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 2) morning)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  in.clp        in7   "  ?id "  - )" crlf))
)




;Salience reduced by Meena(29.10.09)
(defrule in8
;(declare (salience 4300))
(declare (salience 1000))
(id-root ?id in)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  in.clp 	in8   "  ?id "  meM )" crlf))
)



;"in","Prep","1.meM"
;They were born in the same year 1984.
;--"2.se"
;He is blind in one eye.
;--"3.kA"
;He is the most famous person in town.
;
;"Prep","1.meM"
;They were born in the year 1984.
;ve 1984 meM janme.
;--"2. meM_kA"
;He is the most famous person in town.
;vaha isa Sahra kA sabase prasixXa  vyakwi hE.
;
;"Adv","1.anxara"
;He walked in at the right moment.
;vaha sahI samaya meM aMxara AyA.
;
;"Abbr:inch","1.iMca"
;He is 4 ft 2 inches tall.
;vaha 4 PIta 2 incesa uzcA hE.
