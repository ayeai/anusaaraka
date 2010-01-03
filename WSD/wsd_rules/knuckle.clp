
(defrule knuckle0
(declare (salience 5000))
(id-root ?id knuckle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 under)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mAna_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knuckle.clp	knuckle0  "  ?id "  " ?id1 "  mAna_le  )" crlf))
)

;Did you really expect her to knuckle under everything?
;kyA wumheM sacamuca ummIxa WI ki vaha sabakuCa mAna legI?
(defrule knuckle1
(declare (salience 4900))
(id-root ?id knuckle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 under)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mAna_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knuckle.clp	knuckle1  "  ?id "  " ?id1 "  mAna_le  )" crlf))
)

;Did you really expect her to knuckle under everything?
;kyA wumheM sacamuca ummIxa WI ki vaha sabakuCa mAna legI?
(defrule knuckle2
(declare (salience 4800))
(id-root ?id knuckle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 under)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Juka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knuckle.clp	knuckle2  "  ?id "  " ?id1 "  Juka  )" crlf))
)

(defrule knuckle3
(declare (salience 4700))
(id-root ?id knuckle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 under)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Juka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " knuckle.clp	knuckle3  "  ?id "  " ?id1 "  Juka  )" crlf))
)

(defrule knuckle4
(declare (salience 4600))
(id-root ?id knuckle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TunakA_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  knuckle.clp 	knuckle4   "  ?id "  TunakA_mAra )" crlf))
)

;default_sense && category=verb	TunakA_mAranA/TunakA	0
;"knuckle","V","1.TunakA_mAranA/TunakAnA"
;He was hit hard on the knuckles by the duster.
;
;