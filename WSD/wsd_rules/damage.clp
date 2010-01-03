
(defrule damage0
(declare (salience 5000))
(id-root ?id damage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAni))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  damage.clp 	damage0   "  ?id "  hAni )" crlf))
)

;"damage","N","1.hAni/GAtA/kRawi"
;There were major damages to his brain after the accident.



;Modified by Meena(5.12.09)
;The explosion damaged his hearing.
(defrule damage1
(declare (salience 4900))
(id-root ?id damage)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bigAdZa_xe))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  damage.clp 	damage1   "  ?id "  bigAdZa_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  damage.clp      damage1   "  ?id " ko )" crlf)
)
)

;"damage","VI","1.bigadZa_jAnA/naRta_ho_jAnA"
;Some parasites damage good crop.
;
(defrule damage2
(declare (salience 4800))
(id-root ?id damage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAni_pahuzcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  damage.clp 	damage2   "  ?id "  hAni_pahuzcA )" crlf))
)

;"damage","VT","1.hAni_pahuzcAnA/bigAdZanA"
;The snow damaged the roof
;
