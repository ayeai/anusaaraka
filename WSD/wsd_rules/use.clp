
(defrule use0
(declare (salience 5000))
(id-root ?id use)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upayoga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  use.clp 	use0   "  ?id "  upayoga )" crlf))
)

;"use","N","1.upayoga"
;--"2.prayoga/Boga/sevana"
;the steps were worn from years of use
;--"3.AvaSyakawA"
; he put his knowledge to good use
;--"4.lABa/prayojana"
; we were given the use of his boat
;
(defrule use1
(declare (salience 4900))
(id-root ?id use)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upayoga_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  use.clp 	use1   "  ?id "  upayoga_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  use.clp       use1   "  ?id "  kA )" crlf)
)
)

;"use","V","1.upayoga_kara"

;(defrule use2
;(declare (salience 4900))
;(id-root ?id use)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id verb)
;(id-root =(- ?id 1) to)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id upayoga_karane_ke_liye))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  use.clp      use2   "  ?id "  upayoga_karane_ke_liye )" crlf))
;(assert (kriyA_id-object_viBakwi ?id kA))
;)

(defrule use3
(declare (salience 4800))
(id-root ?id use)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prayoga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  use.clp 	use3   "  ?id "  prayoga_kara )" crlf))
)

;"use","VTI","1.prayoga_kara"
; She uses drugs rarely.
;
