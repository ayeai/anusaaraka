;Added by sheetal(5-10-09)
(defrule had_not_en_tam0
(declare (salience 5000))
(id-TAM ?id had_not_en)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id see)
=>
(retract ?mng)
(assert (id-preceeding_part_of_verb ?id nahIM))
(assert (id-E_tam-H_tam_mng ?id had_not_en yA_WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  had_not_en_tam.clp   had_not_en_tam0  "  ?id "  yA_WA )" crlf))
)
;He had not seen him since that graduation day .
