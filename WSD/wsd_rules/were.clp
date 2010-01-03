
(defrule were0
(declare (salience 5000))
(id-root ?id were)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 2) if)
(id-word =(- ?id 1) I )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id howA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  were.clp 	were0   "  ?id "  howA )" crlf))
)

(defrule were1
(declare (salience 4900))
(id-root ?id were)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 2) if)
(id-word =(- ?id 1) you )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id howA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  were.clp 	were1   "  ?id "  howA )" crlf))
)

(defrule were2
(declare (salience 4800))
(id-root ?id were)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 2) if)
(id-word =(- ?id 1) she )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id howA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  were.clp 	were2   "  ?id "  howA )" crlf))
)

(defrule were3
(declare (salience 4700))
(id-root ?id were)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 2) if)
(id-word =(- ?id 1) he )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id howA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  were.clp 	were3   "  ?id "  howA )" crlf))
)

(defrule were4
(declare (salience 4600))
(id-root ?id were)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id were)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WA))
(assert (id-H_vib_mng ?id WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  were.clp 	were4   "  ?id "  WA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng   " ?*wsd_dir* "  were.clp      were4   "  ?id " WA )" crlf))
)

(defrule were5
(declare (salience 4600))
(id-root ?id be)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id were)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  were.clp    were4   "  ?id "  WA )" crlf))
)
;How many people were there.

;"were","V","1.We"
;They were at home.
;
;
