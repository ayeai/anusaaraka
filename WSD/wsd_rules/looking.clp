
(defrule looking0
(declare (salience 5000))
(id-root ?id looking)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 at)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ko_xeKawe_hue))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " looking.clp	looking0  "  ?id "  " ?id1 "  ko_xeKawe_hue  )" crlf))
)

(defrule looking1
(declare (salience 4900))
(id-root ?id looking)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 at)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ko_xeKawe_hue))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " looking.clp	looking1  "  ?id "  " ?id1 "  ko_xeKawe_hue  )" crlf))
)

