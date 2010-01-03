
(defrule before0
(declare (salience 5000))
(id-root ?id before)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) everything)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_pahale))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  before.clp 	before0   "  ?id "  ke_pahale )" crlf))
)

(defrule before1
(declare (salience 4900))
(id-root ?id before)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) throne|principal|judge|house|board|witnesses|chair|chairman|king)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_sAmane))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  before.clp 	before1   "  ?id "  ke_sAmane )" crlf))
)

(defrule before2
(declare (salience 4800))
(id-root ?id before)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id conjunction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id isase_pahale_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  before.clp 	before2   "  ?id "  isase_pahale_ki )" crlf))
)

;I had known her before you introduced her to me.
(defrule before3
(declare (salience 4700))
(id-root ?id before)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_pahale))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  before.clp 	before3   "  ?id "  ke_pahale )" crlf))
)

;"before","Adv","1.ke_pahale"
;I reached the cinema hall before you.
;
(defrule before4
(declare (salience 4600))
(id-root ?id before)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se_pahale))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  before.clp 	before4   "  ?id "  se_pahale )" crlf))
)

;"before","Prep","1.ke_pahale"
;I had known her before you introduced her to me.
;--"2.ke_sAmane"
;They danced before me.
;--"3.ke_Age"
;
