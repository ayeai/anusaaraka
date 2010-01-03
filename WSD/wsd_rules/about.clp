
(defrule about0
(declare (salience 5000))
(id-root ?id about)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) have)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagaBaga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  about.clp 	about0   "  ?id "  lagaBaga )" crlf))
)

(defrule about1
(declare (salience 4900))
(id-root ?id about)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) has)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagaBaga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  about.clp 	about1   "  ?id "  lagaBaga )" crlf))
)

(defrule about2
(declare (salience 4800))
(id-root ?id about)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) had)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagaBaga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  about.clp 	about2   "  ?id "  lagaBaga )" crlf))
)

; I have about 100 Rs.
(defrule about3
(declare (salience 4700))
(id-root ?id about)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) accept|acknowledge|add|admit|agree|allege|announce|answer|argue|arrange|assert|assume|assure|believe|boast|check|claim|comment|complain|concede|conclude|confirm|consider|contend|convince|decide|demonstrate|deny|determine|discover|dispute|doubt|dream|elicit|ensure|estimate|expect|explain|fear|feel|figure|find|foresee|forget|gather|guarantee|guess|hear|hold|hope|imagine|imply|indicate|inform|insist|judge|know|learn|maintain|mean|mention|note|notice|notify|object|observe|perceive|persuade|pledge|pray|predict|pretend|promise|prophesy|prove|read|realize|reason|reassure|recall|reckon|record|reflect|remark|remember|repeat|reply|report|require|resolve|reveal|say|see|sense|show|state|suggest|suppose|swear|teach|tell|think|threaten|understand|vow|warn|wish|worry|write)
(id-word =(+ ?id 1) what|when|where|why|how|who)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id isa_ke_bAre_meM_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  about.clp 	about3   "  ?id "  isa_ke_bAre_meM_ki )" crlf))
)

; He told us about who killed whom.
(defrule about4
(declare (salience 4600))
(id-root ?id about)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) what|when|where|why|how|who)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id usa_ke_bAre_meM_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  about.clp 	about4   "  ?id "  usa_ke_bAre_meM_ki )" crlf))
)

; He was thinking about who got killed in the accident.
(defrule about5
(declare (salience 4500))
(id-root ?id about)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) cardinal)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagaBaga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  about.clp 	about5   "  ?id "  lagaBaga )" crlf))
)

(defrule about6
(declare (salience 4400))
(id-root ?id about)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) integer|whole number|number)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagaBaga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  about.clp 	about6   "  ?id "  lagaBaga )" crlf))
)

(defrule about7
(declare (salience 4300))
(id-root ?id about)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) cardinal)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagaBaga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  about.clp 	about7   "  ?id "  lagaBaga )" crlf))
)

(defrule about8
(declare (salience 4200))
(id-root ?id about)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAro_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  about.clp 	about8   "  ?id "  cAro_ora )" crlf))
)

;"about","Adv","1.cAro_ora"
;The boys were climbing about on the rocks.
;--"2.iXara_uXara"
;Boys were sitting about in the park.
;--"3.lagaBaga"
;She is about to finish her homework.
;--"4.bahuwa_ho_gayA"
;I've had about enough of your complaining.
;
(defrule about9
(declare (salience 4100))
(id-root ?id about)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_bAre_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  about.clp 	about9   "  ?id "  ke_bAre_meM )" crlf))
)

;"about","Prep","1.ke_bAre_meM"
;I read a book about cricket.
;--"2.Asa_pAsa"
;I dropped the pen somewhere about here.
;
