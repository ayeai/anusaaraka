(defrule afford
(id-root ?id afford)
?mng<-(meaning_to_be_decided ?id)
=>
 (retract ?mng)
 (assert (id-wsd_root_mng ?id Karca_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  afford.clp    buy0   "  ?id "  KarIxakara_mAla_ikatTA_kara )" crlf))
)

