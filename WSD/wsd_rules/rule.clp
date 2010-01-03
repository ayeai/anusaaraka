
(defrule rule0
(declare (salience 5000))
(id-root ?id rule)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id ruling )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id prabala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  rule.clp  	rule0   "  ?id "  prabala )" crlf))
)

;"ruling","Adj","1.prabala"
;Ruling party didn't do much for the up-lift of the poors.
;
(defrule rule1
(declare (salience 4900))
(id-root ?id rule)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id ruling )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id nyAyAlaya_kA_nirNaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  rule.clp  	rule1   "  ?id "  nyAyAlaya_kA_nirNaya )" crlf))
)

;"ruling","N","1.nyAyAlaya_kA_nirNaya"
;There is an appeal against the court's ruling.
;
(defrule rule2
(declare (salience 4800))
(id-root ?id rule)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niyama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rule.clp 	rule2   "  ?id "  niyama )" crlf))
)

;"rule","N","1.niyama"
(defrule rule3
(declare (salience 4700))
(id-root ?id rule)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 kingdom)
(kriyA-object ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAsana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rule.clp 	rule3   "  ?id "  SAsana_kara )" crlf))
)

(defrule rule4
(declare (salience 4600))
(id-root ?id rule)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirNaya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rule.clp 	rule4   "  ?id "  nirNaya_kara )" crlf))
)

;"rule","VI","1.nirNaya_kara"
;The judge ruled in favour of the accused.
;The convener of the session ruled the speaker out of order.
;--"2.3"
;
(defrule rule5
(declare (salience 4500))
(id-root ?id rule)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAsana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rule.clp 	rule5   "  ?id "  SAsana_kara )" crlf))
)

;"rule","VT","1.SAsana_kara"
;Akbar ruled India for many years.
;She doesn't allow herself to be ruled by her emotions.
;
;LEVEL 
;
;
;
;"rule"
;
;Different senses of the word "rule"
;
;"rule","N","SAsana/SAsana_kAla/AxeSa/niyama/PutapattI" 
;"rule","V","nirNaya_kara/SAsana_kara/praBAva_dAla"
;
;
;Examples:
;
;"rule","N","1.niyama" 
;1) He was punished for breaking the rule.
;niyama wodZane ke kArana use xaNda xiyA gayA
;2) As a rule I go to sleep by eleven o'clock.
;niyamu se mEM gyAraha bajane waka so jAwI hUz
;
;--"2.SAsana"  -- niyaMwraNa -- niyamana 
;3) India was under the British rule for several years.
;kaI sAlo waka BArawa azgrejZo ke SAsana meM rahA WA
;
;--"3.PutapattI"  -- xaNdA{sIXA}
;4) He can't even draw a straight line without a rule.
;vaha PutapattI ke binA eka sIXI lakIra BI nahIM KIMca sakawA hE
;
;--"PutapattI" -- niyamiwa karane kA karaNa
;5) The teacher beat the student with a rule.
;aWyApaka ne CAwra ko PutapattI se mArA
;
;"rule","V","1.SAsana_kara" -- niyaMwraNa kara -- niyamana kara
;6) This last emperor rules over a vast empire.
;yaha AKarI samrAta eka viSAla sAmrAjya para SAsana karawA hE
;
;--"2.SAsana_kara[praBAva_dAla]" -- niyaMwraNa kara -- niyamana kara
;7) She never lets her heart rule over her head.
;vaha kaBI apane xila ko apane ximAga para SAsana karane(praBAva dAlane) nahIM xewI
;
;--"3.nirNaya_kara" -- niyamoM kA nirvacana kara
;8) The court ruled the case in our favour.
;nyAyAlaya ne mukaxamekA nirNaya hamAre pakRa meM kiyA
;
;"rule","Adj","1.lakIravAlA" -- xaNdA{sIXA} se KIMcI huI lakIrovAlA
;9) Do you want ruled paper or plain paper?
;kyA wumheM lakIravAlA yA korA kAgajZa cAhie ?
;
;upara xie gae saBI vAkyoM meM "rule" kA jo nABikIya arWa prakata ho rahA hE, vaha hE 
;"niyama" kA.
;
;anwarnihiwa sUwra ;
;ina alaga xiKanevAle arWo meM "niyama" kA BAva isa prakAra samaJa sakawe hEM:
;
;
;               niyama
;                 |                                        
;                 |BAva                    
;                 |
;	         v
;               niyamana  =  niyamiwa karanA
;                 |           |
;                 |           |karaNa
;                 |           |
;                 v           v
;               niyaMwraNa    {xaNda} -- {xaNdA} 
;                 |                      |
;                 v                      v
;                SAsana                   daNdA
;                                        |
;                                        v
;                                     sIXA daNdA 
;                                        |
;                                        v
;                                    lakIra KIMcanA{kAgajZa para}  
;
;
;
;kyoMki hama "rule" kriyA Ora "rule" saMjFA, xono meM, "niyama" kA BAva spaRtawaH xeKa sakawe hEM, awaH isakA nimna sUwra xe sakawe hEM :-
;
;sUwra : niyama`
;
;
;
