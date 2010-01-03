
(defrule try0
(declare (salience 5000))
(id-root ?id try)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id tried )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id praBAvI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  try.clp  	try0   "  ?id "  praBAvI )" crlf))
)

;"tried","Adj","1.praBAvI"
;A tried machine.
;
;
(defrule try1
(declare (salience 4900))
(id-root ?id try)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pahanakara_xeKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " try.clp	try1  "  ?id "  " ?id1 "  pahanakara_xeKa  )" crlf))
)




;Added by Meena(25.9.09)
;I tried phoning but there was no answer . 
(defrule try2
(declare (salience 4800))
(id-root ?id try)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prayAsa_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  try.clp       try2   "  ?id "  prayAsa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi " ?*wsd_dir* "  try.clp    try2  "  ?id " kA )" crlf))
)





(defrule try3
(declare (salience 4700))
(id-root ?id try)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prayAsa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  try.clp 	try3   "  ?id "  prayAsa_kara )" crlf))
)

(defrule try4
(declare (salience 4600))
(id-root ?id try)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prayAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  try.clp 	try4   "  ?id "  prayAsa )" crlf))
)

;"try","N","1.prayAsa"
;I will give it a try && see.
;--"2.trAi[ragabE_Kela_meM]"
;
;try:
;koSiSa_karanA/prayawna_karanA
;jAzca_karanA/Koja_bIna_karanA
;ajamAnA/*_kara_xeKanA
(defrule try5
(declare (salience 4500))
(id-root ?id try)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id trying )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaRtakara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  try.clp 	try5   "  ?id "  kaRtakara )" crlf))
)
;Modified wsd_word_mng as wsd_root_mng ---  by manju


;"trying","Adj","1.kaRtakara"
;The workers had a trying day.
;
;particle_on_- && category=verb	pahanakara_xeKa	100


;"try","N","1.prayAsa"
;I will give it a try && see.
;--"2.trAi[ragabE_Kela_meM]"
;
;try:
;koSiSa_karanA/prayawna_karanA
;jAzca_karanA/Koja_bIna_karanA
;ajamAnA/*_kara_xeKanA
