

;Added by Meena(31.8.09)
;The labour was with the Union leader on this issue . 
(defrule issue0
(declare (salience 5000))
(id-root ?id issue)
?mng <-(meaning_to_be_decided ?id)
(kriyA-on_saMbanXI  ?id1 ?id)
(viSeRya-det_viSeRaNa  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viRaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  issue.clp    issue0   "  ?id "  viRaya )" crlf))
)

