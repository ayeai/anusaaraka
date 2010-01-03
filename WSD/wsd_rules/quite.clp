
(defrule quite0
(declare (salience 5000))
(id-root ?id quite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niwAnwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quite.clp 	quite0   "  ?id "  niwAnwa )" crlf))
)

;"quite","Adj","1.niwAnwa"
(defrule quite1
(declare (salience 4900))
(id-root ?id quite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sacamuca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quite.clp 	quite1   "  ?id "  sacamuca )" crlf))
)

;default_sense && category=adverb	kAPI_haxa_waka	0
;"quite","Adv","1.kAPI_haxa_waka"
;He writes quite well.
;You're quite right.
;--"2.pUrI_wOra_se"
;Are you quite sure?  
;--"3.sacamuca_hI"
;The food was quite delicious.
;--"4.TIka_hE_!"
;They should talk about it like two adults. `Quite?'.
;
(defrule quite2
(declare (salience 4800))
(id-root ?id quite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAPI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quite.clp 	quite2   "  ?id "  kAPI )" crlf))
)

;"quite","Det","1.kAPI"
;The new actress is quite a beauty.
;It was quite a sudden change.
;It is quite small a house.
;
