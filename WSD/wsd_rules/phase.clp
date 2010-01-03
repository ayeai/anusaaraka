
(defrule phase0
(declare (salience 5000))
(id-root ?id phase)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kramaSaH_samApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " phase.clp	phase0  "  ?id "  " ?id1 "  kramaSaH_samApwa_kara  )" crlf))
)

(defrule phase1
(declare (salience 4900))
(id-root ?id phase)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kramaSaH_samApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " phase.clp	phase1  "  ?id "  " ?id1 "  kramaSaH_samApwa_kara  )" crlf))
)

(defrule phase2
(declare (salience 4800))
(id-root ?id phase)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kramaSaH_samApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " phase.clp	phase2  "  ?id "  " ?id1 "  kramaSaH_samApwa_kara  )" crlf))
)

(defrule phase3
(declare (salience 4700))
(id-root ?id phase)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kramaSaH_samApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " phase.clp	phase3  "  ?id "  " ?id1 "  kramaSaH_samApwa_kara  )" crlf))
)

(defrule phase4
(declare (salience 4600))
(id-root ?id phase)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id caraNoM_meM_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  phase.clp 	phase4   "  ?id "  caraNoM_meM_kara )" crlf))
)

;default_sense && category=verb	caraNoM_meM_kara	0
;"phase","V","1.caraNoM_meM_karanA"
;It involved as a phased programme going over a twenty five year period.
;Cutbacks were phased over a 1.year period.
;The new regulation will be phased in from september.
;
;