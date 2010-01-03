;FILE MODIFIED ON 26.8.09 (MEENA)


(defrule hire0
(declare (salience 5000))
(id-root ?id hire)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kirAyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hire.clp 	hire0   "  ?id "  kirAyA )" crlf))
)

;"hire","N","1.kirAyA/BAdZA"
;aprela mAha se naye rela mAlaBAdZA 'hire'(kirAyA/BAdZA ) lAgU ho jAyagA.



;Added by Meena(26.8.09)
;He is being hired by another company .
(defrule hire1
(declare (salience 5000))
(id-root ?id hire)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 ?)
(kriyA-subject ?id ?id1)
(kriyA-by_saMbanXI ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAma_xiyA))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hire.clp    hire1   "  ?id "  kAma_xiyA_jA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  hire.clp    hire1   "  ?id " ko )" crlf))
)


(defrule hire2
(declare (salience 4900))
(id-root ?id hire)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id majaxUrI_para_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hire.clp 	hire2   "  ?id "  majaxUrI_para_raKa )" crlf))
)

;"hire","V","1.majaxUrI_para_raKanA/kirAye_para_lenA"
;usane vaha rikSA 'hire'(kirAye para) liyA huA hE.
;
