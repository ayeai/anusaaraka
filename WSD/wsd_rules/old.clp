
(defrule old0
(declare (salience 5000))
(id-root ?id old)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 man)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vqxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  old.clp 	old0   "  ?id "  vqxXa )" crlf))
)

(defrule old1
(declare (salience 4900))
(id-root ?id old)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 queen)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vqxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  old.clp 	old1   "  ?id "  vqxXa )" crlf))
)

(defrule old2
(declare (salience 4800))
(id-root ?id old)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 people)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vqxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  old.clp 	old2   "  ?id "  vqxXa )" crlf))
)

(defrule old3
(declare (salience 4700))
(id-root ?id old)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 couple)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vqxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  old.clp 	old3   "  ?id "  vqxXa )" crlf))
)

(defrule old4
(declare (salience 4600))
(id-root ?id old)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 crocodile)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vqxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  old.clp 	old4   "  ?id "  vqxXa )" crlf))
)

(defrule old5
(declare (salience 4500))
(id-root ?id old)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id purAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  old.clp 	old5   "  ?id "  purAnA )" crlf))
)

(defrule old6
(declare (salience 4400))
(id-root ?id old)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id purAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  old.clp 	old6   "  ?id "  purAnA )" crlf))
)

;"old","Adj","1.purAnA"
;She was wearing an old dress.
;--"2.vqxXa"
;The old man had to walk a long way to catch the bus.
;
;
