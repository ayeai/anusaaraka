
(defrule half0
(declare (salience 5000))
(id-root ?id half)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AXA_BAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  half.clp 	half0   "  ?id "  AXA_BAga )" crlf))
)

(defrule half1
(declare (salience 4900))
(id-root ?id half)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AXA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  half.clp 	half1   "  ?id "  AXA )" crlf))
)

;"half","Adj","1.AXA"
;SyAma ne rotI kA"half"BAga apane Cote BAI ko xe xiyA. 
;
;