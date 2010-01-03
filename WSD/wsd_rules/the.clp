;(jiwanA-wulnAwmaka_viSeRaNa    1    2)
;(uwanA-wulnAwmaka_viSeRaNa    6    7)
;this rule was changed by Meena
;the rules "the0" and "the1" are modified by Sukhada on date: 09-08-09 for sentences like: "The better it is , the more people will use it." And hopefully this will work for other sentences also.
(defrule the0
(declare (salience 5000))
(id-root ?id the)
?mng <-(meaning_to_be_decided ?id)
(jiwanA-wulnAwmaka_viSeRaNa  ?id   ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jiwanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  the.clp 	the0   "  ?id "  jiwanA )" crlf))
)

(defrule the1
(declare (salience 5000))
(id-root ?id the)
?mng <-(meaning_to_be_decided ?id)
(uwanA-wulnAwmaka_viSeRaNa  ?id  ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  the.clp 	the1   "  ?id "  uwanA )" crlf))
)


;(defrule the0
;(declare (salience 5000))
;(id-root ?id the)
;?mng <-(meaning_to_be_decided ?id)
;;(id-cat_coarse =(+ ?id 1)  adverb_comp)
;(id-word =(+ ?id 1) more|less)
;(jiwanA-wulnAwmaka_viSeRaNa  ?id  =(+ ?id 1))
;(id-word 1 ?id)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id jiwanA))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  the.clp    the0   "  ?id "  jiwanA )" crlf))
;)

;(defrule the1
;(declare (salience 4900))
;(id-root ?id the)
;?mng <-(meaning_to_be_decided ?id)
;;(id-cat_coarse =(+ ?id 1)  adjective_comp)
;(id-word =(+ ?id 1) more|less)
;(uwanA-wulnAwmaka_viSeRaNa  ?id  =(+ ?id 1))
;;(id-word 1 ?id)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id uwanA))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  the.clp    the1   "  ?id "  uwanA )" crlf))
;)



(defrule the2
(declare (salience 4800))
(id-root ?id the)
?mng <-(meaning_to_be_decided ?id)
(id-cat =(+ ?id 1)  adjective_comparative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  the.clp 	the2   "  ?id "  uwanA )" crlf))
)

;The faster it is, the more they will like it.
; Added by Amba
(defrule the3
(declare (salience 4700))
(id-root ?id the)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) is)
(id-word =(- ?id 2) this)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vahI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  the.clp 	the3   "  ?id "  vahI )" crlf))
)

(defrule the4
(declare (salience 4600))
(id-root ?id the)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) most)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  the.clp 	the4   "  ?id "  - )" crlf))
)

;That is the most I can do to help you.
(defrule the5
(declare (salience 4500))
(id-root ?id the)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) is)
(id-word  =(- ?id 2) that)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vahI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  the.clp 	the5   "  ?id "  vahI )" crlf))
)

;following_word=only	vaha-	0
; He may sleep on the only bed (there is).
; the only  mOjUxa akelA/ vaha- akelA
(defrule the6
(declare (salience 4400))
(id-root ?id the)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) way)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  the.clp 	the6   "  ?id "  vaha )" crlf))
)

(defrule the7
(declare (salience 4900)) 
(id-root ?id the)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id - ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  the.clp 	the7   "  ?id "  -  )" crlf))
)

;always the is not 'vaha'. More conditins need to be imposed on it.
;default_sense && category=det	vaha	0
;"the","Art","1.vaha"
;This is the picture which we saw yesterday.
;The girl is playing in the garden.
;
;

 (defrule the_relc
(declare (salience 4910))
(id-root 1 the)
(viSeRya-det_viSeRaNa  ?vi 1)
(kriyA-subject  ?kriyA ?vi)
(muKya_vAkya-sApekRa_upavAkya  ?kriya ?)
?mng <-(meaning_to_be_decided 1)
=>
(retract ?mng)
(assert (id-wsd_root_mng 1 vaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  the.clp    the_relc    1  vaha  )" crlf))
)
;The boy who you called yesterday has arrived 
;Added by sukhada
 
