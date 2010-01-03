
(defrule annoy0
(declare (salience 5000))
(id-root ?id annoy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pareSAna_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  annoy.clp 	annoy0   "  ?id "  pareSAna_ho )" crlf))
)

;I was annoyed when they abused me.
(defrule annoy1
(declare (salience 4900))
(id-root ?id annoy)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pareSAna_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  annoy.clp 	annoy1   "  ?id "  pareSAna_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  annoy.clp     annoy1   "  ?id "  ko )"  crlf)
)
)

;"annoy","V","1.pareSAna_karanA"
(defrule annoy2
(declare (salience 4800))
(id-root ?id annoy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pareSAna_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  annoy.clp 	annoy2   "  ?id "  pareSAna_ho )" crlf))
)

;default_sense && category=verb	ciDZA	0
;"annoy","VT","1.ciDZAnA/sawAnA"
;I was annoyed when they abused me.
;
