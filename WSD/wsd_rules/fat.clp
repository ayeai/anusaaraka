;The following rule is commented by Meena as I could not find 'fat'(with HM carbi) used as an adjective.(26.11.08) 
;adj_comp_of_-_get && category=adj	carbI	0

;The rule fat0 was modified by Meena on 27.11.08 as it was not giving the proper
;translation.

(defrule fat0
(declare (salience 6000))
(id-root ?id fat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective )
(id-cat_coarse =(+ ?id 1) noun)
(samAsa ?id =(+ ?id 1))
(viSeRya-det_viSeRaNa =(+ ?id 1) =(- ?id 1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id motA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fat.clp 	fat0   "  ?id "  motA )" crlf))
)

(defrule fat1
(declare (salience 4800))
(id-root ?id fat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id motA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fat.clp 	fat1   "  ?id "  motA )" crlf))
)

;"fat","Adj","1.motA"
;It was a fat rope.
;

(defrule fat2
(declare (salience 5000))
(id-root ?id fat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective )
(id-cat_coarse =(+ ?id 1) noun)
(viSeRya-viSeRaNa =(+ ?id 1) ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fat.clp 	fat2   "  ?id "  BArI )" crlf))
)
;He lifted a fat volume down from the shelf.

(defrule fat3
(declare (salience 4700))
(id-root ?id fat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id carbI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fat.clp 	fat3   "  ?id "  carbI )" crlf))
)

(defrule fat4
(declare (salience 4600))
(id-root ?id fat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-det_viSeRaNa =(+ ?id 1) =(- ?id 1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id motA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fat.clp 	fat4   "  ?id "  motA )" crlf))
)

;"fat","N","1.carbI"
;Pizza has too much fat.

