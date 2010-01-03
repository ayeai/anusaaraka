
(defrule were_en_tam0
(declare (salience 5000))
(id-TAM ?id were_en)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 born)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id were_en yA_WA))
(assert (root_id-TAM-vachan ?id were_en p))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  were_en_tam.clp  	were_en_tam0  "  ?id "  yA_WA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-root_id-TAM-vachan  " ?*wsd_dir* "  were_en_tam.clp   were_en_tam0  "  ?id " were_en p )" crlf))
(assert (id-tam_type ?id passive))
)

;They were born in Patna.
(defrule were_en_tam1
(declare (salience 4900))
(id-TAM ?id were_en)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1  know)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id were_en yA_jAwA_WA))
(assert (root_id-TAM-vachan ?id were_en p))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  were_en_tam.clp  	were_en_tam1  "  ?id "  yA_jAwA_WA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-root_id-TAM-vachan  " ?*wsd_dir* "  were_en_tam.clp   were_en_tam1  "  ?id " were_en p )" crlf))
(assert (id-tam_type ?id passive))
)

; Protoplasm were known as the physical basis for life.
;The fruit was eaten.
(defrule were_en_tam2
(declare (salience 4850))
(id-TAM ?id were_en)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id ask)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id were_en yA_gayA_WA))
(assert (root_id-TAM-vachan ?id were_en p))
(assert (kriyA_id-subject_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  were_en_tam.clp  	were_en_tam2  "  ?id "  yA_gayA_WA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-root_id-TAM-vachan  " ?*wsd_dir* "  were_en_tam.clp   were_en_tam2  "  ?id " were_en p )" crlf))
(assert (id-tam_type ?id passive))
)

(defrule were_en_tam3
(declare (salience 4800))
(id-TAM ?id were_en)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id were_en yA_gayA_WA))
(assert (root_id-TAM-vachan ?id were_en p))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  were_en_tam.clp   were_en_tam3  "  ?id "  yA_gayA_WA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-root_id-TAM-vachan  " ?*wsd_dir* "  were_en_tam.clp   were_en_tam3  "  ?id " were_en p )" crlf))
(assert (id-tam_type ?id passive))
)


