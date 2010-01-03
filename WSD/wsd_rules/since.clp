
(defrule since0
(declare (salience 5000))
(id-root ?id since)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) yesterday)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  since.clp 	since0   "  ?id "  se )" crlf))
)

(defrule since1
(declare (salience 4900))
(id-root ?id since)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) today)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  since.clp 	since1   "  ?id "  se )" crlf))
)

(defrule since2
(declare (salience 4800))
(id-root ?id since)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) tomorrow)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  since.clp 	since2   "  ?id "  se )" crlf))
)

(defrule since3
(declare (salience 4700))
(id-root ?id since)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waba_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  since.clp 	since3   "  ?id "  waba_se )" crlf))
)

;"since","Adv","1.waba_se"
(defrule since4
(declare (salience 4600))
(id-root ?id since)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id conjunction)
(subject-conjunction  =(+ ?id 1) ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kyoMki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  since.clp   since4   "  ?id "  kyoMki )" crlf))
)


;"since","Conj","1.cUzki"
(defrule since5
(declare (salience 4500))
(id-root ?id since)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jaba_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  since.clp 	since5   "  ?id "  jaba_se )" crlf))
)

;"since","Prep","1.jaba[waba]_se"

;Added by sheetal(5-10-09)
(defrule since6
(declare (salience 4550))
(id-root ?id since)
?mng <-(meaning_to_be_decided ?id)
(kriyA-since_saMbanXI ? ?id1)
(id-word ?id1 day)
;(link_name-lnode-rnode Jp ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  since.clp     since6   "  ?id "  se )" crlf))
)
;Added kriyA-since_saMbanXI relation instead of link-name "jp"
;He had not seen him since that graduation day .

