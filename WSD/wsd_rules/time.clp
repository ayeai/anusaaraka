
(defrule time0
(declare (salience 5000))
(id-root ?id time)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) ancient)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAla))
(assert (root_id-TAM-vachan ?id s))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  time.clp 	time0   "  ?id "  kAla )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-root_id-TAM-vachan   " ?*wsd_dir* "  time.clp      time0   "  ?id " s )" crlf))
)

(defrule time1
(declare (salience 4900))
(id-root ?id time)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) the)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAla))
(assert (root_id-TAM-vachan ?id s))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  time.clp 	time1   "  ?id "  kAla )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-root_id-TAM-vachan   " ?*wsd_dir* "  time.clp      time1   "  ?id "  s )" crlf))
)

(defrule time2
(declare (salience 4800))
(id-root ?id time)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  time.clp 	time2   "  ?id "  samaya )" crlf))
)

;At the time of evolution.
(defrule time3
(declare (salience 4700))
(id-root ?id time)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id times )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id guNA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  time.clp  	time3   "  ?id "  guNA )" crlf))
)

;"times","N","1.guNA"
;This room is two times bigger than the hall.
;
(defrule time4
(declare (salience 4600))
(id-root ?id time)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  time.clp 	time4   "  ?id "  samaya )" crlf))
)

;"time","N","1.samaya"
;This time he succeeded.
;--"2.vakwa{GadZI_meM}"
;Do you know what time it is?.
;--"3.kuCa_samaya_waka"
;He had a time holding back the tearso.
;--"4.avasara"
;University stay was a good time for us.
;--"5.yuga"
;How time is changing.
;--"6.koI_niSciwa_samaya"
;Childhood is the best time of life.
;--"7.samaya_kI_gaNanA_karane_kI_SElI"
;Geenwich time.
;--"8.kAla"
;The building will stand the time.
;
;
