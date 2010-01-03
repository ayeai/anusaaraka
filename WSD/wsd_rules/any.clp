
(defrule any0
(declare (salience 5000))
(id-root ?id any)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
(niSeXAwmaka_vAkya      )
(id-word =(+ ?id 1) ?str)
;Test for ?str is made as argument for the gdbm_lookup_p function passed should be always a string                           (if number passed as argument gdbm_lookup_p causes to Segmentation fault)
(id-word =(+ ?id 1) ?str&:(and (not (numberp ?str))(gdbm_lookup_p "uncountable.gdbm" ?str)))
=> 
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  any.clp 	any0   "  ?id "  kuCa_BI )" crlf))
)

(defrule any1
(declare (salience 4900))
(id-root ?id any)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
(id-word =(+ ?id 1) ?str)
;Test for ?str is made as argument for the gdbm_lookup_p function passed should be always a string                           (if number passed as argument gdbm_lookup_p causes to Segmentation fault)
(id-word =(+ ?id 1) ?str&:(and (not (numberp ?str))(gdbm_lookup_p "uncountable.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  any.clp 	any1   "  ?id "  kuCa )" crlf))
)

(defrule any2
(declare (salience 4800))
(id-root ?id any)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) without)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  any.clp 	any2   "  ?id "  koI )" crlf))
)

(defrule any3
(declare (salience 4700))
(id-root ?id any)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) ?str)
;Test for ?str is made as argument for the gdbm_lookup_p function passed should be always a string                           (if number passed as argument gdbm_lookup_p causes to Segmentation fault)
(id-word =(+ ?id 1) ?str&:(and (not (numberp ?str))(gdbm_lookup_p "uncountable.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  any.clp 	any3   "  ?id "  kuCa )" crlf))
)

(defrule any4
(declare (salience 4600))
(id-root ?id any)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
(niSeXAwmaka_vAkya      )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koI_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  any.clp 	any4   "  ?id "  koI_BI )" crlf))
)

(defrule any5
(declare (salience 4500))
(id-root ?id any)
?mng <-(meaning_to_be_decided ?id)
(praSnAwmaka_vAkya      )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  any.clp 	any5   "  ?id "  koI )" crlf))
)

(defrule any6
(declare (salience 4400))
(id-root ?id any)
?mng <-(meaning_to_be_decided ?id)
(id-word 1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koI_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  any.clp 	any6   "  ?id "  koI_BI )" crlf))
)




;Added by Meena(21.10.09)
;It did not resemble any living creature.
(defrule any7
(declare (salience 4300))
(id-root ?id any)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kisI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  any.clp       any7   "  ?id "  kisI )" crlf))
)



;Salience reduced in "any8" by Meena(21.10.09) as it is a very general rule. 
(defrule any8
(declare (salience 1000))
(id-root ?id any)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  any.clp 	any8   "  ?id "  koI )" crlf))
)

;"any","Adj","1.koI_BI"
;Can you give me any book?
;
(defrule any9
(declare (salience 4200))
(id-root ?id any)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kisI_BI_sWiwi_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  any.clp 	any9   "  ?id "  kisI_BI_sWiwi_meM )" crlf))
)

;"any","Adv","1.kisI_BI_sWiwi_meM"
;Is your mother any better?
;
(defrule any10
(declare (salience 4100))
(id-root ?id any)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  any.clp 	any10   "  ?id "  kuCa )" crlf))
)

;"any","Pron","1.kuCa/kiMciwa"
;Is there any water in the jug?
;
;LEVEL 
;Headword : any
;
;Examples --
;
;'any' Sabxa aMgrejZI meM kaI prakAra se prayoga howA hE.
;isake kuCa sAmAnya prayoga -
;
;--"1.koI"
;I have not read any book written by Prasad.
;mEMne prasAxa xvArA raciwa koI kiwAba nahIM paDZI hE.
;--"2.kisI"
;He did not invite any of his class-mates.
;usane apane kisI BI miwra ko Amanwriwa nahIM kiyA.
;We reached Lucknow without any problems.
;hama binA kisI pareSAnI ke laKanaU pahuzca gaye.
;--"3.kuCa"
;I need some money. Do you have any.
;muJe kuCa pEse cAhiez. wumhAre pAsa kuCa hEM.
;--"4.koI_BI"
;Take any saree.
;koI BI sAdZI le lo.
;--"5.koI_BI_jo"
;Take any saree you like.
;koI BI sAdZI jo wumheM pasanxa ho le lo.
;--"6.[kuCa]_Ora"
;I can't write any faster.
;mEM Ora wejZa nahIM liKa sakawA.
;
;sUwra : kaCa^koI_BI
;
;kuCa viSeRa prayoga --
;
;praSnavAcaka vAkyoM meM Ora nakArAwmaka vAkyoM meM 'some' ke sWAna para
;
;Do you have some sugar ?
;Do you have any sugar ?
;I hae some sugar.
;I don't have any sugar.
;*I have any sugar.
;
