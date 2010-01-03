
(defrule unbridle0
(declare (salience 5000))
(id-root ?id unbridle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id unbridled )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id niraMkuSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  unbridle.clp  	unbridle0   "  ?id "  niraMkuSa )" crlf))
)

;"unbridled","Adj","1.niraMkuSa"
;His  unbridled rage made him unpopular among his friends.
;
(defrule unbridle1
(declare (salience 4900))
(id-root ?id unbridle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagAma_hatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unbridle.clp 	unbridle1   "  ?id "  lagAma_hatA )" crlf))
)

;"unbridle","VT","1.lagAma_hatA/CodZa_xe/svawaMwra_kara"
;Be careful while unbridling the horse!
;
;