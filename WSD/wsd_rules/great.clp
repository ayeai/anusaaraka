
(defrule great0
(declare (salience 5000))
(id-root ?id great)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 movie)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  great.clp 	great0   "  ?id "  baDiyA )" crlf))
)

;Yesterday I saw the great movie.
(defrule great1
(declare (salience 4900))
(id-root ?id great)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id badZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  great.clp 	great1   "  ?id "  badZA )" crlf))
)

(defrule great2
(declare (salience 4800))
(id-root ?id great)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id badZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  great.clp 	great2   "  ?id "  badZA )" crlf))
)

(defrule great3
(declare (salience 4700))
(id-root ?id great)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id badZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  great.clp 	great3   "  ?id "  badZA )" crlf))
)

;"great","Adj","1.badZA"
;Gandhiji was a great human being.
;
;
