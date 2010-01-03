
(defrule dark0
(declare (salience 5000))
(id-root ?id dark)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) after)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMXerA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dark.clp 	dark0   "  ?id "  aMXerA )" crlf))
)

; We reached after dark.
(defrule dark1
(declare (salience 4900))
(id-root ?id dark)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 get)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMXerA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dark.clp 	dark1   "  ?id "  aMXerA )" crlf))
)

(defrule dark2
(declare (salience 4800))
(id-root ?id dark)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dark.clp 	dark2   "  ?id "  kAlA )" crlf))
)

(defrule dark3
(declare (salience 4700))
(id-root ?id dark)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMXerA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dark.clp 	dark3   "  ?id "  aMXerA )" crlf))
)

;"dark","N","1.aMXerA"
;The powers of darkness
;He moved off into the darkness
;He was in the dark concerning their intentions
;--"2.sAzvalA"
;
;
