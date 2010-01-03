;Added by Meena(23.11.09)
;She is apparently an excellent pianist .
(defrule apparently0
(declare (salience 5000))
(id-root ?id apparently)
?mng <-(meaning_to_be_decided ?id)
;(id-word ?id apparently)
(kriyA-kriyA_viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id spaRtarUpa_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  store.clp     store0   "  ?id "  spaRtarUpa_se )" crlf))
)

