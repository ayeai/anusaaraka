
(defrule hurt0
(declare (salience 5000))
(id-root ?id hurt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ahawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hurt.clp 	hurt0   "  ?id "  Ahawa )" crlf))
)

;"hurt","Adj","1.Ahawa"
;BArawI apane miwra ke nimanwraNa na pAne se 'hurt' huI.
;
(defrule hurt1
(declare (salience 4900))
(id-root ?id hurt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cota))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hurt.clp 	hurt1   "  ?id "  cota )" crlf))
)

;"hurt","N","1.cota"
;xurGatanA meM vaha jyAxA 'hurt' nahIM huA.
;
(defrule hurt2
(declare (salience 4800))
(id-root ?id hurt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRawi_pahuzcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hurt.clp 	hurt2   "  ?id "  kRawi_pahuzcA )" crlf))
)

;"hurt","V","1.kRawi_pahuzcAnA"
;visPota se loga 'hurt' howe hEM
;
