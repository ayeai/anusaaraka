
(defrule are_en_tam0
(declare (salience 5000))
(id-TAM ?id are_en)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 born)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id are_en yA_hE))
(assert (root_id-TAM-vachan ?id are_en p))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  are_en_tam.clp  	are_en_tam0  "  ?id "  yA_hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-root_id-TAM-vachan  " ?*wsd_dir* "  are_en_tam.clp    are_en_tam0  "  ?id " are_en p )" crlf))
(assert (id-tam_type ?id passive))
)

;They are born in Patna.
(defrule are_en_tam1
(declare (salience 4900))
(id-TAM ?id are_en)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 need)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id are_en hE))
(assert (root_id-TAM-vachan ?id are_en p))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  are_en_tam.clp  	are_en_tam1  "  ?id "  hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-root_id-TAM-vachan  " ?*wsd_dir* "  are_en_tam.clp    are_en_tam1  "  ?id " are_en p )" crlf))
(assert (id-tam_type ?id passive))
)

(defrule are_en_tam2
(declare (salience 4800))
(id-TAM ?id are_en)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id are_en yA_gayA_hE))
(assert (root_id-TAM-vachan ?id are_en p))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  are_en_tam.clp  	are_en_tam2  "  ?id "  yA_gayA_hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-root_id-TAM-vachan  " ?*wsd_dir* "  are_en_tam.clp    are_en_tam2  "  ?id " are_en p )" crlf))
(assert (id-tam_type ?id passive))
)

