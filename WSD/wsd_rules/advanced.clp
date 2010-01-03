;Added by human beings
(defrule advanced0
(declare (salience 5000))
(id-root ?id advanced)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 tools)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pragawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  advanced.clp 	advanced0   "  ?id "  pragawa )" crlf))
)

(defrule advanced1
(declare (salience 4900))
(id-root ?id advanced)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pragawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  advanced.clp 	advanced1   "  ?id "  pragawa )" crlf))
)

(defrule advanced2
(declare (salience 4800))
(id-root ?id advanced)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id unnawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  advanced.clp 	advanced2   "  ?id "  unnawa )" crlf))
)

;"advanced","Adj","1.unnawa"
;Today's advanced technology has made the world smaller.
;--"2.ucca_SreNI_ke"
;This dictionary is meant for an advanced learner.
;--"3.nayA/aBI_waka_sAmAnya_rupa_se_svIkqwi_nA_milA_huA"
;Though attractive,most of Mr.Gupta's very advanced ideas about traffic regulation are impractical.
;--"4.baDZA_huA"
;His advanced age does not prevent him from singing.
;
;
;LEVEL 
;
;
;
;Headword : advanced
;
;Examples --
;"advanced","Adj","1.unnawa"-pragawiSIla
;Today's advanced technology has made the world smaller.
;Aja kI unnawa wakanIkI ne viSva ko CotA banA xiyA hE
;
;--"2.ucca_SreNI_ke"-pragawi karane vAle-pragawiSIla
;This dictionary is meant for an advanced learner.
;ha SabxakoSa uccaSreNI ke sIKane vAloM ke liye banI hE
;
;--"3.nayA/aBI_waka_sAmAnya_rupa_se_svIkqwi_nA_milA_huA"-navIna vicAroM kA vikasiwa honA-pragawiSIla
;Most of the Mr.Gupta's advanced ideas about traffic regulation are impractical.
;aXikawara mi0 gupwA ke navIna vicAra yAwAyAwa niyaMwraNa ke bAre me avyavahArika hEM
;
;--"4.baDZA_huA"-vqxXa
;His advanced age does not prevent him from singing.
;usakI baDZI huI Ayu use gAne se nahIM rokawI
;
;    nota:--Upara aMkiwa 'advanced'Sabxa ke samaswa viSeRaNa vAkyoM kA avalokana  
;       karane para isake xo mUlawaH arWoM se sUwra bana sakawA hE.
;
;	   sUwra : pragawiSIla/vqxXa    
;
;PREVIOUS    HEAD</A
;>       NEXT   
;EXAMPLES
;
; 
;
;
;
;
