
(defrule how_much
(declare (salience 5000))
(id-root ?id much)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) how )
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1) kiwanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  much.clp         how_much   "  ?id " "(- ?id 1)" kiwanA )" crlf)
)
)
;Added by Shirisha Manju(15-12-09)
;How much oil spilled ?

(defrule much0
(declare (salience 5000))
(id-root ?id much)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) as)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwanA_aXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  much.clp 	much0   "  ?id "  uwanA_aXika )" crlf))
)

(defrule much1
(declare (salience 4900))
(id-root ?id much)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) adjective_comparative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  much.clp 	much1   "  ?id "  kuCa )" crlf))
)

; I do not go out as much now.
(defrule much2
(declare (salience 4800))
(id-root ?id much)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  much.clp 	much2   "  ?id "  bahuwa )" crlf))
)

;"much","Adj","1.bahuwa"
;This job won't take much effort.
;
;
