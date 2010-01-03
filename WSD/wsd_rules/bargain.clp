
(defrule bargain0
(declare (salience 5000))
(id-root ?id bargain)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 prawyASA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bargain.clp	bargain0  "  ?id "  " ?id1 "  prawyASA_kara  )" crlf))
)

;The competition was more difficult than i had bargained for.
;prawiyogiwA merI prawyASA se kahIM aXika kaTina WI
(defrule bargain1
(declare (salience 4900))
(id-root ?id bargain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lena-xena))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bargain.clp 	bargain1   "  ?id "  lena-xena )" crlf))
)

;"bargain","N","1.lena-xena"
;We will give you a good discount as part of the bargain.
;
(defrule bargain2
(declare (salience 4800))
(id-root ?id bargain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mola-BAva_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bargain.clp 	bargain2   "  ?id "  mola-BAva_kara )" crlf))
)

;"bargain","V","1.mola-BAva_karanA"
;We have to bargain in order to buy something at less price.
;
