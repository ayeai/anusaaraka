
(defrule young0
(declare (salience 5000))
(id-root ?id young)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id youngest)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sabase_CotA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  young.clp  	young0   "  ?id "  sabase_CotA )" crlf))
)

;
(defrule young1
(declare (salience 4900))
(id-root ?id young)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id younger)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id CotA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  young.clp  	young1   "  ?id "  CotA )" crlf))
)

;"younger","Adj","1.CotA"
;Her younger sister is smart.
;
;
(defrule young2
(declare (salience 4800))
(id-root ?id young)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) own)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baccA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  young.clp 	young2   "  ?id "  baccA )" crlf))
)

;they do not look after their own young
(defrule young3
(declare (salience 4700))
(id-root ?id young)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 woman)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ---))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  young.clp 	young3   "  ?id "  --- )" crlf))
)

; young woman
(defrule young4
(declare (salience 4600))
(id-root ?id young)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 very)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CotA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  young.clp 	young4   "  ?id "  CotA )" crlf))
)

(defrule young5
(declare (salience 4500))
(id-root ?id young)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waruNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  young.clp 	young5   "  ?id "  waruNa )" crlf))
)

(defrule young6
(declare (salience 4400))
(id-root ?id young)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baccA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  young.clp 	young6   "  ?id "  baccA )" crlf))
)

;"young","N","1.baccA"
;She is too young for marriage.
;
;
