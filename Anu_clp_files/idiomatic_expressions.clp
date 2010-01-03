 (defglobal ?*id_exp-file* = id_exp_fp)
 (defglobal ?*mng-file* =  mng_fp)

 (deffacts dummy_facts
; (linkid-word)
 (linkid-word)
 (link_name-link_lnode-link_rnode)
 (link_name-link_expansion)
 (No complete linkages found)
)

 (defrule end
 (declare (salience -100))
=>
 (close ?*mng-file*)
 (close ?*id_exp-file*)
)
;*************************************************



;Idiomatic expressions

;The original file, from which we generated CLIPS rules for these expressions is 'idiomatic-exp.txt'. some of the expressions have multiple senses, those are marked with "+" at the end of those expressions. These expressions should be disambiguated while making WSD rules.

;Some of the expressions, which I found difficult, are not mapped in to Hindi. Those expressions have no Hindi meanings in front of them.

;The word Which don't follow English grammar rules, are treated as idiomatic expressions. e.g.
;by_bus
;by_car
;    Here bus and car don't have determiner which is wrong according to English grammar but these are normally used in day today English.

;Some expressions are like take_place, where take itself is a verb and it can take an object also, e.g. "I will take the first place." here 'place' is an object of the verb take but in the sentence; " When does the ceremony take place?" take+place together form a verb. so here take_place is an idiomatic expression.

 (defrule	alter_ego
 (declare	(salience 6000))
 (linkid-word	?a	alter )
 (linkid-word	?b	ego )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" anwaraMga_miwra)" crlf )
)
; Ex. He's my alter ego.
;*****************************************

 (defrule	au_pair
 (declare	(salience 6000))
 (linkid-word	?a	au )
 (linkid-word	?b	pair )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" Aya)" crlf )
)
; Ex. We've got a German au pair for six months.
;*****************************************

 (defrule	mise_en_scene
 (declare	(salience 6000))
 (linkid-word	?a	mise )
 (linkid-word	?b	en )
 (linkid-word	?c	scene )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" praswuwa_nAtAka_ke_xqSya_Ora_xqSya_upakaraNa)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	faux_pas
 (declare	(salience 6000))
 (linkid-word	?a	faux )
 (linkid-word	?b	pas )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" sAmAjika_galawI)" crlf )
)
; Ex. She has been falsly charged of faux pas.
;*****************************************

 (defrule	non_sequitur
 (declare	(salience 6000))
 (linkid-word	?a	non )
 (linkid-word	?b	sequitur )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" awarkasaMgawa)" crlf )
)
; Ex. The process in Russia is non sequitur on Marx's theory.
;*****************************************

 (defrule	fait_accompli
 (declare	(salience 6000))
 (linkid-word	?a	fait )
 (linkid-word	?b	accompli )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" niRpanna_kArya)" crlf )
)
; Ex. The sale of the factory was presented to the workers as a fait accompli.
;*****************************************

 (defrule	modus_vivendi
 (declare	(salience 6000))
 (linkid-word	?a	modus )
 (linkid-word	?b	vivendi )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" Jagade_kA_nipatArA_hone_waka_kI_gaI_vyavasWA)" crlf )
)
; Ex. We managed to achieve a kind of modus vivendi.
;*****************************************

 (defrule	head_of_state
 (declare	(salience 6000))
 (linkid-word	?a	head )
 (linkid-word	?b	of )
 (linkid-word	?c	state )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" rAjapramuKa)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	tour_de_force
 (declare	(salience 6000))
 (linkid-word	?a	tour )
 (linkid-word	?b	de )
 (linkid-word	?c	force )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" camawkAra)" crlf )
)
; Ex. The painting/book/film is a tour de force.
;*****************************************

 (defrule	kung_fu
 (declare	(salience 6000))
 (linkid-word	?a	kung )
 (linkid-word	?b	fu )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" kaMga_PU)" crlf )
)
; Ex.  (a Chinese system of fighting without weapons, similar to karate)


 (defrule	joie_de_vivre
 (declare	(salience 6000))
 (linkid-word	?a	joie )
 (linkid-word	?b	de )
 (linkid-word	?c	vivre )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" jIvana_kA_Ananxa)" crlf )
)
; Ex. be full of of joie de vivre


 (defrule	op_art
 (declare	(salience 6000))
 (linkid-word	?a	op )
 (linkid-word	?b	art )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" gawimAna lagane vAlI jyAmiwIya AkQwiyoM kA Silpa)" crlf )
)
; Ex.  (a style of modern art that uses patterns and colours in a way that makes the images seem to move as you look at them)


 (defrule	noblesse_oblige
 (declare	(salience 6000))
 (linkid-word	?a	noblesse )
 (linkid-word	?b	oblige )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" UzcI_paxavI_vAloM_kI_bAXyawA)" crlf )
)
; Ex. This seems light years away from noblesse oblige.
;*****************************************

 (defrule	a_must
 (declare	(salience 6000))
 (linkid-word	?a	a )
 (linkid-word	?b	must )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" anivArya)" crlf )
)
; Ex. Passion is a must to reach your potential.
;*****************************************

 (defrule	time_of_day
 (declare	(salience 6000))
 (linkid-word	?a	time )
 (linkid-word	?b	of )
 (linkid-word	?c	day )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" xina_ke_samaya)" crlf )
)
; Ex. Can you remember roughly what time of day that was?
;*****************************************

 (defrule	time_of_year
 (declare	(salience 6000))
 (linkid-word	?a	time )
 (linkid-word	?b	of )
 (linkid-word	?c	year )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" varRa_Bara_kA_samaya)" crlf )
)
; Ex. At this time of year, there's not a great choice of fish.
;*****************************************

 (defrule	force_majeure
 (declare	(salience 6000))
 (linkid-word	?a	force )
 (linkid-word	?b	majeure )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" aprawyASiwa_GatanA)" crlf )
)
; Ex. The company tried to escape its obligations by claiming force majeure.  (unexpected circumstances,such a war, that excuse sb from keeping a promise or fulfilling a contract)


 (defrule	top_dollar
 (declare	(salience 6000))
 (linkid-word	?a	top )
 (linkid-word	?b	dollar )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" KUba_pEsA)" crlf )
)
; Ex. If you want the best, you have to pay top dollar. We can help you get top dollar when you sell your house.
;*****************************************

 (defrule	year_end
 (declare	(salience 6000))
 (linkid-word	?a	year )
 (linkid-word	?b	end )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" varRa_kA_anwa)" crlf )
)
; Ex. SGS Thomson says it intends to sample the devices by the year end.
;*****************************************

 (defrule	skim_milk
 (declare	(salience 6000))
 (linkid-word	?a	skim )
 (linkid-word	?b	milk )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" malAIrahiwa_xUXa)" crlf )
)
; Ex. Skim milk is better for health.
;*****************************************

 (defrule	breach_of_contract
 (declare	(salience 6000))
 (linkid-word	?a	breach )
 (linkid-word	?b	of )
 (linkid-word	?c	contract )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" TekA_BaMga)" crlf )
)
; Ex. Compensation is payable for breach of contract.
;*****************************************

 (defrule	sleight_of_hand
 (declare	(salience 6000))
 (linkid-word	?a	sleight )
 (linkid-word	?b	of )
 (linkid-word	?c	hand )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" Calakapata)" crlf )
)
; Ex. Last year's profits were more the result of financial sleight of hand than genuine growth.
;*****************************************

 (defrule	power_of_attorney
 (declare	(salience 6000))
 (linkid-word	?a	power )
 (linkid-word	?b	of )
 (linkid-word	?c	attorney )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" muKwArI_aXikAra)" crlf )
)
; Ex. You gave me power of attorney.
;*****************************************

 (defrule	word_of_mouth
 (declare	(salience 6000))
 (linkid-word	?a	word )
 (linkid-word	?b	of )
 (linkid-word	?c	mouth )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" aPZavAha)" crlf )
)
; Ex. The news of their affair was spread by word of mouth.
;*****************************************

 (defrule	carte_blanche
 (declare	(salience 6000))
 (linkid-word	?a	carte )
 (linkid-word	?b	blanche )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" pUrNa svawantrawA)" crlf )
)
; Ex. Please give me carte blanche.
;*****************************************

 (defrule	kind_of
 (declare	(salience 6000))
 (linkid-word	?a	kind )
 (linkid-word	?b	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" WodZA_sA)" crlf )
)
; Ex. I feel kind of sorry for him.
;*****************************************

 (defrule	type_of
 (declare	(salience 6000))
 (linkid-word	?a	type )
 (linkid-word	?b	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" prakAra_kA)" crlf )
)
; Ex. It is a a type of sweet.
;*****************************************

 (defrule	sort_of
 (declare	(salience 6000))
 (linkid-word	?a	sort )
 (linkid-word	?b	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" kuCa_haxa_waka)" crlf )
)
; Ex. I sort of thought this might happen./You sort of twist the ends together./I feel sort of dizzy,/`Do you understand? `Sort of.'


 (defrule	breed_of
 (declare	(salience 6000))
 (linkid-word	?a	breed )
 (linkid-word	?b	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" nasla_kA)" crlf )
)
; Ex. He created a new breed of sheep.
;*****************************************

 (defrule	kinds_of
 (declare	(salience 6000))
 (linkid-word	?a	kinds )
 (linkid-word	?b	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" prakAra_ke)" crlf )
)
; Ex. We recognize four basic kinds of teeth in an individual's jaw, the incisors, canines, premolars, and molars.
;*****************************************

 (defrule	types_of
 (declare	(salience 6000))
 (linkid-word	?a	types )
 (linkid-word	?b	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" prakAra_ke)" crlf )
)
; Ex. There are  different types of acne.
;*****************************************

 (defrule	sorts_of
 (declare	(salience 6000))
 (linkid-word	?a	sorts )
 (linkid-word	?b	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" waraha_ke)" crlf )
)
; Ex. These sorts of problems are quite common. There are all sorts of activities  (= many different ones) for kids at the campsite.
;*****************************************

 (defrule	breeds_of
 (declare	(salience 6000))
 (linkid-word	?a	breeds )
 (linkid-word	?b	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" nasla_ke)" crlf )
)
; Ex. Solve the clues in both circles and match them up to form seven breeds of dog


 (defrule	each_other
 (declare	(salience 6000))
 (linkid-word	?a	each )
 (linkid-word	?b	other )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" eka_xUsare)" crlf )
)
; Ex. They love each other.
;*****************************************

 (defrule	it_all
 (declare	(salience 6000))
 (linkid-word	?a	it )
 (linkid-word	?b	all )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" ye_saba)" crlf )
)
; Ex. How did it all begin?
;*****************************************

 (defrule	them_all
 (declare	(salience 6000))
 (linkid-word	?a	them )
 (linkid-word	?b	all )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" una_sabako)" crlf )
)
; Ex. You then get them all to play together.
;*****************************************

 (defrule	us_all
 (declare	(salience 6000))
 (linkid-word	?a	us )
 (linkid-word	?b	all )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" hama_sabako)" crlf )
)
; Ex. She gave us all so much love.
;*****************************************

 (defrule	you_all
 (declare	(salience 6000))
 (linkid-word	?a	you )
 (linkid-word	?b	all )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng     "?b     " Apa_sab)" crlf )
)
; Ex. I'll tell you all about it when I get home. Thank you all for coming this evening.
; Modified by manju (02-11-09):
;     word_mng -- Apa_sabkA  as root_mng -- Apa_sab 
;     Ex : It is indeed a joy to discuss details of the Anusaaraka project with you all .
;*****************************************

 (defrule	no_one
 (declare	(salience 6000))
 (linkid-word	?a	no )
 (linkid-word	?b	one )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" koI_nahIM)" crlf )
)
; Ex. No one man could lift it . No one came today.
;*****************************************

 (defrule	nothing_but
 (declare	(salience 6000))
 (linkid-word	?a	nothing )
 (linkid-word	?b	but )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" kevala)" crlf )
)
; Ex. Nothing but a miracle can save her now.
;*****************************************

 (defrule	all_that
 (declare	(salience 6000))
 (linkid-word	?a	all )
 (linkid-word	?b	that )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" vo_saba)" crlf )
)
; Ex. There would be plenty of time for all that later.
;*****************************************

 (defrule	all_this
 (declare	(salience 6000))
 (linkid-word	?a	all )
 (linkid-word	?b	this )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" ye_saba)" crlf )
)
; Ex. But what does all this mean for ordinary users?
;*****************************************

 (defrule	all_those
 (declare	(salience 6000))
 (linkid-word	?a	all )
 (linkid-word	?b	those )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" vo_saba)" crlf )
)
; Ex. It was visited regularly by Hoppy and all those kind of people.
;*****************************************

 (defrule	all_these
 (declare	(salience 6000))
 (linkid-word	?a	all )
 (linkid-word	?b	these )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" ye_saba)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	such_a
 (declare	(salience 6000))
 (linkid-word	?a	such )
 (linkid-word	?b	a )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" kiwanA)" crlf )
)
; Ex. This is such a nice house,


 (defrule	such_an
 (declare	(salience 6000))
 (linkid-word	?a	such )
 (linkid-word	?b	an )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" kiwanA)" crlf )
)
; Ex. This is such an idiotic idea.
;*****************************************

 (defrule	a_lot
 (declare	(salience 6000))
 (linkid-word	?a	a )
 (linkid-word	?b	lot )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" bahuwa)" crlf )
)
; Ex. I drank a lot of milk.
;*****************************************

 (defrule	a_couple
 (declare	(salience 6000))
 (linkid-word	?a	a )
 (linkid-word	?b	couple )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" kuCa)" crlf )
)
; Ex. She moved a couple of the sheets to make way for the saucers.
;*****************************************

 (defrule	a_couple_of
 (declare	(salience 6000))
 (linkid-word	?a	a )
 (linkid-word	?b	couple )
 (linkid-word	?c	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" kuCa)" crlf )
)
; Ex. I got a couple of gifts on my birthday.
;*****************************************

 (defrule	a_few
 (declare	(salience 6000))
 (linkid-word	?a	a )
 (linkid-word	?b	few )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" kuCa)" crlf )
)
; Ex. There are a few boys in the class.
;*****************************************

 (defrule	the_most
 (declare	(salience 6000))
 (linkid-word	?a	the )
 (linkid-word	?b	most )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" sabase_jyAxA)" crlf )
)
; Ex. Rose is the most beautiful flower.
;*****************************************

 (defrule	one_other
 (declare	(salience 6000))
 (linkid-word	?a	one )
 (linkid-word	?b	other )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" eka_xUsarA)"crlf )
)
;  Ex. They hit one other.
;*****************************************

 (defrule	every_other
 (declare	(salience 6000))
 (linkid-word	?a	every )
 (linkid-word	?b	other )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" hara_xUsarA)" crlf )
)
; Ex. Every other shop should be closed down.
;*****************************************

 (defrule	any_other
 (declare	(salience 6000))
 (linkid-word	?a	any )
 (linkid-word	?b	other )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" koI_OrA)" crlf )
)
; Ex. I don't plan the agenda, any other planning business?
;*****************************************

 (defrule	all_other
 (declare	(salience 6000))
 (linkid-word	?a	all )
 (linkid-word	?b	other )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" anya_saba)" crlf )
)
; Ex. Young people are locked up only when all other possibilities have been failed.
;*****************************************

 (defrule	quite_a
 (declare	(salience 6000))
 (linkid-word	?a	quite )
 (linkid-word	?b	a )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" baDiyA)" crlf )
)
; Ex. We had quite a party. It was turning out to be quite a good day.
;*****************************************

 (defrule	quite_an
 (declare	(salience 6000))
 (linkid-word	?a	quite )
 (linkid-word	?b	an )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" baDiyA)" crlf )
)
; Ex. It was considered quite an innovation.
;*****************************************

 (defrule	one_such
 (declare	(salience 6000))
 (linkid-word	?a	one )
 (linkid-word	?b	such )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" eka_EsA)" crlf )
)
; Ex. So far they've only recived one such call, and it was of little use.
;*****************************************

 (defrule	some_other
 (declare	(salience 6000))
 (linkid-word	?a	some )
 (linkid-word	?b	other )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" kuCa_anya)" crlf )
)
; Ex. The baby Eagles are sharing the incubation room with some other new arrivals.
;*****************************************

 (defrule	no_such
 (declare	(salience 6000))
 (linkid-word	?a	no )
 (linkid-word	?b	such )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" EsA_koI_nahIM)" crlf )
)
; Ex. There was no such refuge that he knew of.
;*****************************************

 (defrule	one_another
 (declare	(salience 6000))
 (linkid-word	?a	one )
 (linkid-word	?b	another )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" eka_xUsarA)" crlf )
)
; Ex. They hit one another,


 (defrule	a_little
 (declare	(salience 6000))
 (linkid-word	?a	a )
 (linkid-word	?b	little )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" WodA_sA)" crlf )
)
; Ex. He thought a little. You sound a little uncertain!


 (defrule	a_great_deal
 (declare	(salience 6000))
 (linkid-word	?a	a )
 (linkid-word	?b	great )
 (linkid-word	?c	deal )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" bahuwa)" crlf )
)
; Ex. This would help a great deal.
;*****************************************

 (defrule	many_more
 (declare	(salience 6000))
 (linkid-word	?a	many )
 (linkid-word	?b	more )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" bahuwa_se)" crlf )
)
; Ex. There are many more companies that depend on their Unix licences just to build their products.
;*****************************************

 (defrule	a_few_more
 (declare	(salience 6000))
 (linkid-word	?a	a )
 (linkid-word	?b	few )
 (linkid-word	?c	more )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" kuCa_Ora)" crlf )
)
; Ex. A few more hurdles to overcome.
;*****************************************

 (defrule	a_couple_more
 (declare	(salience 6000))
 (linkid-word	?a	a )
 (linkid-word	?b	couple )
 (linkid-word	?c	more )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" kuCa_Or)" crlf )
)
; Ex. Check out a couple more shows, while you can.
;*****************************************

 (defrule	plenty_more
 (declare	(salience 6000))
 (linkid-word	?a	plenty )
 (linkid-word	?b	more )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" Ora_bahuwa)" crlf )
)
; Ex. There are plenty more fish in the sea.
;*****************************************

 (defrule	a_lot_more
 (declare	(salience 6000))
 (linkid-word	?a	a )
 (linkid-word	?b	lot )
 (linkid-word	?c	more )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" )" crlf )
)
; Ex. Ora_bahuwa


 (defrule	some_more
 (declare	(salience 6000))
 (linkid-word	?a	some )
 (linkid-word	?b	more )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" WodA_Ora)" crlf )
)
; Ex. Cry some more.
;*****************************************

 (defrule	one_more
 (declare	(salience 6000))
 (linkid-word	?a	one )
 (linkid-word	?b	more )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" eka_Ora)" crlf )
)
; Ex. Bird flu likely kills one more in Indonesia.
;*****************************************

 (defrule	not_many
 (declare	(salience 6000))
 (linkid-word	?a	not )
 (linkid-word	?b	many )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" JYaXa_NAHim)" crlf )
)
; Ex. Not many trained in reading inscriptions.
;*****************************************

 (defrule	not_enough
 (declare	(salience 6000))
 (linkid-word	?a	not )
 (linkid-word	?b	enough )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" paryApwa_nahIM)" crlf )
)
; Ex. Survival is not enough.
;*****************************************

 (defrule	or_so
 (declare	(salience 6000))
 (linkid-word	?a	or )
 (linkid-word	?b	so )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" ke_lagaBaga)" crlf )
)
; Ex. It'll cost 100 or so.
;*****************************************

 (defrule	half_a_dozen
 (declare	(salience 6000))
 (linkid-word	?a	half )
 (linkid-word	?b	a )
 (linkid-word	?c	dozen )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" AXA_xarjana)" crlf )
)
; Ex. I bought milk and half a dozen bananas.
;*****************************************

 (defrule	half_a_million
 (declare	(salience 6000))
 (linkid-word	?a	half )
 (linkid-word	?b	a )
 (linkid-word	?c	million )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" pAzca_lAKa)" crlf )
)
; Ex. NID


 (defrule	hundreds_of
 (declare	(salience 6000))
 (linkid-word	?a	hundreds )
 (linkid-word	?b	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" sEMkadoM)" crlf )
)
; Ex. NID


 (defrule	thousands_of
 (declare	(salience 6000))
 (linkid-word	?a	thousands )
 (linkid-word	?b	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" hajAroM)" crlf )
)
; Ex. NID


 (defrule	millions_of
 (declare	(salience 6000))
 (linkid-word	?a	millions )
 (linkid-word	?b	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" lAKoM)" crlf )
)
; Ex. NID


 (defrule	billions_of
 (declare	(salience 6000))
 (linkid-word	?a	billions )
 (linkid-word	?b	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" behisAba)" crlf )
)
; Ex. NID


 (defrule	trillions_of
 (declare	(salience 6000))
 (linkid-word	?a	trillions )
 (linkid-word	?b	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" asaMKyoM)" crlf )
)
; Ex. NID


 (defrule	dozens_of
 (declare	(salience 6000))
 (linkid-word	?a	dozens )
 (linkid-word	?b	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" DeroM)" crlf )
)
; Ex. She's had dozens of boyfriends.
;*****************************************

 (defrule	and_a_half
 (declare	(salience 6000))
 (linkid-word	?a	and )
 (linkid-word	?b	a )
 (linkid-word	?c	half )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" Ora_AXA)" crlf )
)
; Ex. Sleeping for less than seven and a half hours a night can raise the risk of heart disease.
;*****************************************

 (defrule	made_of
 (declare	(salience 6000))
 (linkid-word	?a	made )
 (linkid-word	?b	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" se_nirmiwa)" crlf )
)
; Ex. It would seem that God is made of soap.
;*****************************************

 (defrule	made_up_of
 (declare	(salience 6000))
 (linkid-word	?a	made )
 (linkid-word	?b	up )
 (linkid-word	?c	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" se_nirmiwa)" crlf )
)
; Ex. If water is made up of hydrogen and oxygen, why can't we breathe underwater?
;*****************************************

 (defrule	take_place
 (declare	(salience 6000))
 (linkid-word	?a	take )
 (linkid-word	?b	place )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" ho)" crlf )
)
; Ex. When does the ceremony take place?
;*****************************************

 (defrule	show_up
 (declare	(salience 6000))
 (linkid-word	?a	show )
 (linkid-word	?b	up )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" A)" crlf )
)
; Ex. If I show up to class, I know I’ll put in the effort


 (defrule	take_office
 (declare	(salience 6000))
 (linkid-word	?a	take )
 (linkid-word	?b	office )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" kAryaBAra_samBAla)" crlf )
)
; Ex. When will the new President take office?
;*****************************************

 (defrule	do_battle
 (declare	(salience 6000))
 (linkid-word	?a	do )
 (linkid-word	?b	battle )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" yuxXa_kara)" crlf )
)
; Ex. Robot arms do battle.
;*****************************************

 (defrule	give_way
 (declare	(salience 6000))
 (linkid-word	?a	give )
 (linkid-word	?b	way )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" rAswA_xe)" crlf )
)
; Ex. Give way to traffic coming from the right.
;*****************************************

 (defrule	make_way
 (declare	(salience 6000))
 (linkid-word	?a	make )
 (linkid-word	?b	way )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" jagaha_banA)" crlf )
)
; Ex. She moved a couple of the sheets to make way for the saucers.
;*****************************************

 (defrule	take_part
 (declare	(salience 6000))
 (linkid-word	?a	take )
 (linkid-word	?b	part )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" Baga_le)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	catch_on
 (declare	(salience 6000))
 (linkid-word	?a	catch )
 (linkid-word	?b	on )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" samaJa)" crlf )
)
; Ex. He is very quick to catch on to things.
;*****************************************

 (defrule	break_free
 (declare	(salience 6000))
 (linkid-word	?a	break )
 (linkid-word	?b	free )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" woda)" crlf )
)
; Ex. Hayden vows to break free from India's shackles.
;*****************************************

 (defrule	take_over
 (declare	(salience 6000))
 (linkid-word	?a	take )
 (linkid-word	?b	over )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" BAra_grahaNa_kara)" crlf )
)
; Ex. Peter will take over as managing director when Bill retires.
;*****************************************

 (defrule	jump_ship
 (declare	(salience 6000))
 (linkid-word	?a	jump )
 (linkid-word	?b	ship )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" jahAja_se_bAhara_jA)" crlf )
)
; Ex. Sam seriously injured the fellow, and was then compelled to jump ship.
;*****************************************

 (defrule	see_fit
 (declare	(salience 6000))
 (linkid-word	?a	see )
 (linkid-word	?b	fit )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" uciwa_samaJa)" crlf )
)
; Ex. The newspaper did not see fit to publish my letter.I'll just give you the overall concept of the thing, and it's up to you to interpret as you see fit.
;*****************************************

 (defrule	take_note
 (declare	(salience 6000))
 (linkid-word	?a	take )
 (linkid-word	?b	note )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" nota_kara)" crlf )
)
; Ex. Take note of those who do not obey.
;*****************************************

 (defrule	takes_place
 (declare	(salience 6000))
 (linkid-word	?a	takes )
 (linkid-word	?b	place )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" ho)" crlf )
)
; Ex. The meeting takes place without an incident .
;*****************************************

 (defrule	pleads_guilty
 (declare	(salience 6000))
 (linkid-word	?a	pleads )
 (linkid-word	?b	guilty )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" aparAXa_svIkAra_kara)" crlf )
)
; Ex. Youth pleads guilty to vandalism


 (defrule	pleads_innocent
 (declare	(salience 6000))
 (linkid-word	?a	pleads )
 (linkid-word	?b	innocent )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" nirxoRa_bawA)" crlf )
)
; Ex. He pleads innocent himself.
;*****************************************

 (defrule	takes_office
 (declare	(salience 6000))
 (linkid-word	?a	takes )
 (linkid-word	?b	office )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" kAryaBAra_samBAla)" crlf )
)
; Ex. The president takes office on January.
;*****************************************

 (defrule	does_battle
 (declare	(salience 6000))
 (linkid-word	?a	does )
 (linkid-word	?b	battle )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" yuxXa_kara)" crlf )
)
; Ex. The hero, Beowulf, does battle with Grendel and Grendel's mother. The Doctor does battle with Donna.
;*****************************************

 (defrule	gives_way
 (declare	(salience 6000))
 (linkid-word	?a	gives )
 (linkid-word	?b	way )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" mAna)" crlf )
)
; Ex. She gives way to their demands.
;*****************************************

 (defrule	makes_way
 (declare	(salience 6000))
 (linkid-word	?a	makes )
 (linkid-word	?b	way )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" jagaha_banA)" crlf )
)
; Ex. He makes way for David Thresher in the second row.
;*****************************************

 (defrule	takes_part
 (declare	(salience 6000))
 (linkid-word	?a	takes )
 (linkid-word	?b	part )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" Baga_le)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	jumps_ship
 (declare	(salience 6000))
 (linkid-word	?a	jumps )
 (linkid-word	?b	ship )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" binA_anumawi_ke_bAhara_jA)" crlf )
)
; Ex. Another group jumps ship.
;*****************************************

 (defrule	sees_fit
 (declare	(salience 6000))
 (linkid-word	?a	sees )
 (linkid-word	?b	fit )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" uciwa_samaJa)" crlf )
)
; Ex. Other conditions may be imposed by the court as it sees fit.
;*****************************************

 (defrule	lets_go
 (declare	(salience 6000))
 (linkid-word	?a	lets )
 (linkid-word	?b	go )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" jAne_xe)" crlf )
)
; Ex. If a pig gets its teeth in you it never lets go.
;*****************************************

 (defrule	comes_true
 (declare	(salience 6000))
 (linkid-word	?a	comes )
 (linkid-word	?b	true )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" sAkAra_ho)" crlf )
)
; Ex. The future always comes true. Many of her thoughts pass into oblivion, while the occasional thought comes true to life.
;*****************************************

 (defrule	pleaded_guilty
 (declare	(salience 6000))
 (linkid-word	?a	pleaded )
 (linkid-word	?b	guilty )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" aparAXa_svIkAra_kara)" crlf )
)
; Ex. The man admitted the offences as soon as he was accused, and pleaded guilty.
;*****************************************

 (defrule	pleaded_innocent
 (declare	(salience 6000))
 (linkid-word	?a	pleaded )
 (linkid-word	?b	innocent )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" nirxoRa_bawA)" crlf )
)
; Ex. They pleaded innocent themselves.
;*****************************************

 (defrule	made_way
 (declare	(salience 6000))
 (linkid-word	?a	made )
 (linkid-word	?b	way )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" jagaha_banA)" crlf )
)
; Ex. He stood back and made way for him.
;*****************************************

 (defrule	caught_up
 (declare	(salience 6000))
 (linkid-word	?a	caught )
 (linkid-word	?b	up )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" Pazsa_jA)" crlf )
)
; Ex. He watched as Turakina caught up with the pig and rode over it.
;*****************************************

 (defrule	caught_on
 (declare	(salience 6000))
 (linkid-word	?a	caught )
 (linkid-word	?b	on )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" samaJa_meM_A)" crlf )
)
; Ex. She didn't know what her classmates were plotting but finally caught on.
;*****************************************

 (defrule	jumped_ship
 (declare	(salience 6000))
 (linkid-word	?a	jumped )
 (linkid-word	?b	ship )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" binA_anumawi_ke_bAhara_jA)" crlf )
)
; Ex. A few of them, including Larentiu Constantin , jumped ship before the revolution.
;*****************************************

 (defrule	plead_guilty
 (declare	(salience 6000))
 (linkid-word	?a	plead )
 (linkid-word	?b	guilty )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" aparAXa_svIkAra_kara)" crlf )
)
; Ex. Do you plead guilty?
;*****************************************

 (defrule	plead_innocent
 (declare	(salience 6000))
 (linkid-word	?a	plead )
 (linkid-word	?b	innocent )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" nirxoRa_bawA)" crlf )
)
; Ex. They plead innocent themselves.
;*****************************************

 (defrule	let_go
 (declare	(salience 6000))
 (linkid-word	?a	let )
 (linkid-word	?b	go )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" jAne_xe)" crlf )
)
; Ex. We were both the sort of people who just can't let go once they have got their teeth into something.
;*****************************************

 (defrule	took_place
 (declare	(salience 6000))
 (linkid-word	?a	took )
 (linkid-word	?b	place )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" huI)" crlf )
)
; Ex. The cycling event took place in Philadelphia.
;*****************************************

 (defrule	took_office
 (declare	(salience 6000))
 (linkid-word	?a	took )
 (linkid-word	?b	office )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" kAryaBAra_samBAla)" crlf )
)
; Ex. MacDonald took office the same afternoon.
;*****************************************

 (defrule	did_battle
 (declare	(salience 6000))
 (linkid-word	?a	did )
 (linkid-word	?b	battle )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" yuxXa_kara)" crlf )
)
; Ex. Englandt did battle with Argentina at Willesden in their second game in the World Cup.
;*****************************************

 (defrule	gave_way
 (declare	(salience 6000))
 (linkid-word	?a	gave )
 (linkid-word	?b	way )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" Daha)" crlf )
)
; Ex. The door gave way to repeated blows with a battering ram.
;*****************************************

 (defrule	took_part
 (declare	(salience 6000))
 (linkid-word	?a	took )
 (linkid-word	?b	part )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" Baga_liyA)" crlf )
)
; Ex. She took  part in a discussion.
;*****************************************

 (defrule	broke_free
 (declare	(salience 6000))
 (linkid-word	?a	broke )
 (linkid-word	?b	free )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" tUta_jA)" crlf )
)
; Ex. The wagon broke free from the freight train as it passed through the German town of Northeim.
;*****************************************

 (defrule	took_over
 (declare	(salience 6000))
 (linkid-word	?a	took )
 (linkid-word	?b	over )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" hAvI_ho)" crlf )
)
; Ex. Our defense took over in the second half of the game.
;*****************************************

 (defrule	saw_fit
 (declare	(salience 6000))
 (linkid-word	?a	saw )
 (linkid-word	?b	fit )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" uciwa_samaJa)" crlf )
)
; Ex. On his own initiative, he began seizing enemies of the Rump Parliament as he saw fit.
;*****************************************

 (defrule	took_note
 (declare	(salience 6000))
 (linkid-word	?a	took )
 (linkid-word	?b	note )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" nota_kara)" crlf )
)
; Ex. I hope dieters and health food neurotics took note.
;*****************************************

 (defrule	came_true
 (declare	(salience 6000))
 (linkid-word	?a	came )
 (linkid-word	?b	true )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" sAkAra_ho)" crlf )
)
; Ex. Seven months later, his prediction came true.
;*****************************************

 (defrule	came_clean
 (declare	(salience 6000))
 (linkid-word	?a	came )
 (linkid-word	?b	clean )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" sAPa_suWra_nikala_A)" crlf )
)
; Ex. That night, at dinner, David and I came clean, and told our friends about singing to fish.
;*****************************************

 (defrule	shown_up
 (declare	(salience 6000))
 (linkid-word	?a	shown )
 (linkid-word	?b	up )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" A)" crlf )
)
; Ex. None of the tenants had shown up at the funeral.
;*****************************************

 (defrule	taken_office
 (declare	(salience 6000))
 (linkid-word	?a	taken )
 (linkid-word	?b	office )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" kAryaBAra_samBAla)" crlf )
)
; Ex. The government of Premier Jozsef Antall had taken office in May.
;*****************************************

 (defrule	done_battle
 (declare	(salience 6000))
 (linkid-word	?a	done )
 (linkid-word	?b	battle )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" yuxXa_kara)" crlf )
)
; Ex. Lucy had done battle with  another charitable trust.
;*****************************************

 (defrule	given_way
 (declare	(salience 6000))
 (linkid-word	?a	given )
 (linkid-word	?b	way )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" rAswA_xe)" crlf )
)
; Ex. Have traditional career paths given way to protean ones?
;*****************************************

 (defrule	taken_part
 (declare	(salience 6000))
 (linkid-word	?a	taken )
 (linkid-word	?b	part )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" Baga_le)" crlf )
)
; Ex. She has taken  part in a discussion.
;*****************************************

 (defrule	broken_free
 (declare	(salience 6000))
 (linkid-word	?a	broken )
 (linkid-word	?b	free )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" woda)" crlf )
)
; Ex. She has broken free.
;*****************************************

 (defrule	taken_over
 (declare	(salience 6000))
 (linkid-word	?a	taken )
 (linkid-word	?b	over )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" hAvI_ho)" crlf )
)
; Ex. One group  must have taken over already.
;*****************************************

 (defrule	seen_fit
 (declare	(salience 6000))
 (linkid-word	?a	seen )
 (linkid-word	?b	fit )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" uciwa_samaJa)" crlf )
)
; Ex. Surprisingly, Dell hasn't seen fit to include a low or zero insertion force socket in the 433/L.
;*****************************************

 (defrule	taken_note
 (declare	(salience 6000))
 (linkid-word	?a	taken )
 (linkid-word	?b	note )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" nota_kara)" crlf )
)
; Ex. I offer the Minister the NFU's five-point agenda, of which I hope he has taken note.
;*****************************************

 (defrule	come_true
 (declare	(salience 6000))
 (linkid-word	?a	come )
 (linkid-word	?b	true )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" sAkAra_ho)" crlf )
)
; Ex. It was like a dream come true to see the spires and the river.
;*****************************************

 (defrule	come_clean
 (declare	(salience 6000))
 (linkid-word	?a	come )
 (linkid-word	?b	clean )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" sAPa_suWra_nikala_A)" crlf )
)
; Ex. Was this then the moment to come clean, he wondered?
;*****************************************

 (defrule	taking_place
 (declare	(salience 6000))
 (linkid-word	?a	taking )
 (linkid-word	?b	place )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" ho)" crlf )
)
; Ex. Below, we report on a number of initiatives currently taking place in the regions.
;*****************************************

 (defrule	showing_up
 (declare	(salience 6000))
 (linkid-word	?a	showing )
 (linkid-word	?b	up )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" A)" crlf )
)
; Ex. Dangerous chemicals showing up in some air fresheners.
;*****************************************

 (defrule	pleading_guilty
 (declare	(salience 6000))
 (linkid-word	?a	pleading )
 (linkid-word	?b	guilty )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" aparAXa_svIkAra_kara)" crlf )
)
; Ex. You're pleading guilty?
;*****************************************

 (defrule	pleading_innocent
 (declare	(salience 6000))
 (linkid-word	?a	pleading )
 (linkid-word	?b	innocent )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" nirxoRa_bawA)" crlf )
)
; Ex. They are  pleading  innocent themselves.
;*****************************************

 (defrule	taking_office
 (declare	(salience 6000))
 (linkid-word	?a	taking )
 (linkid-word	?b	office )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" kAryaBAra_samBAla)" crlf )
)
; Ex. Most government in India is corrupt within weeks of taking office.
;*****************************************

 (defrule	doing_battle
 (declare	(salience 6000))
 (linkid-word	?a	doing )
 (linkid-word	?b	battle )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" yuxXa_kara)" crlf )
)
; Ex. I look forward to doing battle with him in the coming weeks and months.
;*****************************************

 (defrule	giving_way
 (declare	(salience 6000))
 (linkid-word	?a	giving )
 (linkid-word	?b	way )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" rAswA_xe)" crlf )
)
; Ex. Why religion is giving way to spirituality?
;*****************************************

 (defrule	making_way
 (declare	(salience 6000))
 (linkid-word	?a	making )
 (linkid-word	?b	way )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" jagaha_banA)" crlf )
)
; Ex. Will he now do something about it by calling a general election and making way for a Labour Government.
;*****************************************

 (defrule	taking_part
 (declare	(salience 6000))
 (linkid-word	?a	taking )
 (linkid-word	?b	part )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" Baga_le)" crlf )
)
; Ex. She is taking  part in a discussion.
;*****************************************

 (defrule	breaking_free
 (declare	(salience 6000))
 (linkid-word	?a	breaking )
 (linkid-word	?b	free )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" woda)" crlf )
)
; Ex. I am breaking free from the past.
;*****************************************

 (defrule	taking_over
 (declare	(salience 6000))
 (linkid-word	?a	taking )
 (linkid-word	?b	over )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" CA)" crlf )
)
; Ex. ˜The darkness is taking over" Chopra said.
;*****************************************

 (defrule	jumping_ship
 (declare	(salience 6000))
 (linkid-word	?a	jumping )
 (linkid-word	?b	ship )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" binA_anumawi_ke_bAhara_jA)" crlf )
)
; Ex. the university has run out of steam and its faculty members are all jumping ship


 (defrule	seeing_fit
 (declare	(salience 6000))
 (linkid-word	?a	seeing )
 (linkid-word	?b	fit )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" uciwa_samaJa)" crlf )
)
; Ex. Sony Ericsson isn't seeing fit to show any pictures of the GreenHeart right now


 (defrule	letting_go
 (declare	(salience 6000))
 (linkid-word	?a	letting )
 (linkid-word	?b	go )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" jAne_xe)" crlf )
)
; Ex. For true freedom lies not in holding, but in letting go not in receiving, but in giving.
;*****************************************

 (defrule	taking_note
 (declare	(salience 6000))
 (linkid-word	?a	taking )
 (linkid-word	?b	note )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" nota_kara)" crlf )
)
; Ex. Clare watched her listening, taking note, modifying her language and behaviour as carefully as an animal adapts its camouflage to fit into a new environment.
;*****************************************

 (defrule	coming_true
 (declare	(salience 6000))
 (linkid-word	?a	coming )
 (linkid-word	?b	true )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" sAkAra_ho)" crlf )
)
; Ex. Everything that she had ever wanted was coming true.
;*****************************************

 (defrule	coming_clean
 (declare	(salience 6000))
 (linkid-word	?a	coming )
 (linkid-word	?b	clean )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" sAPa_suWra_nikala_A)" crlf )
)
; Ex. But I did decide to simplify things by coming clean from the start.
;*****************************************

 (defrule	bring_about
 (declare	(salience 6000))
 (linkid-word	?a	bring )
 (linkid-word	?b	about )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" lA)" crlf )
)
; Ex. It is this hope that will bring about a new and better world.
;*****************************************

 (defrule	get_rid_of
 (declare	(salience 6000))
 (linkid-word	?a	get )
 (linkid-word	?b	rid )
 (linkid-word	?c	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?c	" CutakArA_pA)" crlf )
)
; Ex. I use this place if I need to get rid of someone.
;*****************************************

 (defrule	let_go_of
 (declare	(salience 6000))
 (linkid-word	?a	let )
 (linkid-word	?b	go )
 (linkid-word	?c	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?c	" BUla_jA)" crlf )
)
; Ex. The policeman had not let go of the stranger.
;*****************************************

 (defrule	puts_up_with
 (declare	(salience 6000))
 (linkid-word	?a	puts )
 (linkid-word	?b	up )
 (linkid-word	?c	with )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?c	" sahana_kara)" crlf )
)
; Ex. I don't know why Dame Sybil puts up with you. I can't decide whether Alb likes me, or merely puts up with me for Shelley's sake.
;*****************************************

 (defrule	brings_about
 (declare	(salience 6000))
 (linkid-word	?a	brings )
 (linkid-word	?b	about )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" lA)" crlf )
)
; Ex. Certainly this sometimes brings about risks of embarrassment or distress.
;*****************************************

 (defrule	gets_rid_of
 (declare	(salience 6000))
 (linkid-word	?a	gets )
 (linkid-word	?b	rid )
 (linkid-word	?c	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?c	" CutakArA_pA)" crlf )
)
; Ex. I think Wilko gets rid of players as soon as he can.
;*****************************************

 (defrule	lets_go_of
 (declare	(salience 6000))
 (linkid-word	?a	lets )
 (linkid-word	?b	go )
 (linkid-word	?c	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?c	" BUla_jA)" crlf )
)
; Ex. The sailor lets go of the rig and spins round twice before catching it again.
;*****************************************

 (defrule	put_up_with
 (declare	(salience 6000))
 (linkid-word	?a	put )
 (linkid-word	?b	up )
 (linkid-word	?c	with )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?c	" sahana_kara)" crlf )
)
; Ex. I shall just have to put up with the pain. My wife and family have had to put up with abuse.
;*****************************************

 (defrule	brought_about
 (declare	(salience 6000))
 (linkid-word	?a	brought )
 (linkid-word	?b	about )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" lA)" crlf )
)
; Ex. I was amazed and terrified at the change I had so casually brought about in her.
;*****************************************

 (defrule	got_rid_of
 (declare	(salience 6000))
 (linkid-word	?a	got )
 (linkid-word	?b	rid )
 (linkid-word	?c	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?c	" CutakArA_pA)" crlf )
)
; Ex. We got rid of everything we didn't need.
;*****************************************

 (defrule	gotten_rid_of
 (declare	(salience 6000))
 (linkid-word	?a	gotten )
 (linkid-word	?b	rid )
 (linkid-word	?c	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?c	" CutakArA_pA)" crlf )
)
; Ex. However men gotten rid of many women would be immeasurably hurt in the process.
;*****************************************

 (defrule	taken_note_of
 (declare	(salience 6000))
 (linkid-word	?a	taken )
 (linkid-word	?b	note )
 (linkid-word	?c	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" )" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	putting_up_with
 (declare	(salience 6000))
 (linkid-word	?a	putting )
 (linkid-word	?b	up )
 (linkid-word	?c	with )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?c	" sahana_kara)" crlf )
)
; Ex. Don't strain your eyes by putting up with poor lighting.
;*****************************************

 (defrule	bringing_about
 (declare	(salience 6000))
 (linkid-word	?a	bringing )
 (linkid-word	?b	about )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" lA)" crlf )
)
; Ex. This government's policies are not conducive to bringing about the end of the recession


 (defrule	getting_rid_of
 (declare	(salience 6000))
 (linkid-word	?a	getting )
 (linkid-word	?b	rid )
 (linkid-word	?c	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?c	" CutakArA_pA)" crlf )
)
; Ex. My previous attempts at getting rid of them had had the effect of reactivating them.
;*****************************************

 (defrule	letting_go_of
 (declare	(salience 6000))
 (linkid-word	?a	letting )
 (linkid-word	?b	go )
 (linkid-word	?c	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?c	" BUla_jA)" crlf )
)
; Ex. I am letting go of the past, and reaching for the future.
;*****************************************

 (defrule	make_out
 (declare	(salience 6000))
 (linkid-word	?a	make )
 (linkid-word	?b	out )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" pawA_lagA_pA)" crlf )
)
; Ex. It wasn't easy to make out his expression.
;*****************************************

 (defrule	point_out
 (declare	(salience 6000))
 (linkid-word	?a	point )
 (linkid-word	?b	out )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" XyAna_xilA)" crlf )
)
; Ex. You might point out that one has feelings.
;*****************************************

 (defrule	give_notice
 (declare	(salience 6000))
 (linkid-word	?a	give )
 (linkid-word	?b	notice )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" notisa_xe)" crlf )
)
; Ex. I didn't give notice.
;*****************************************

 (defrule	serve_notice
 (declare	(salience 6000))
 (linkid-word	?a	serve )
 (linkid-word	?b	notice )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" AxeSa_xe)" crlf )
)
; Ex. Before the end of the 28 days any member or auditor may serve notice on the company requiring a meeting to be held for that purpose.
;*****************************************

 (defrule	makes_out
 (declare	(salience 6000))
 (linkid-word	?a	makes )
 (linkid-word	?b	out )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" pawA_lagA_pA)" crlf )
)
; Ex. Surely, if she was the caring person she makes out, she would insist on paying her dues.
;*****************************************

 (defrule	points_out
 (declare	(salience 6000))
 (linkid-word	?a	points )
 (linkid-word	?b	out )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" XyAna_xilA)" crlf )
)
; Ex. Brancazio points out that no-one can be taught how to make the right judgments.
;*****************************************

 (defrule	gives_notice
 (declare	(salience 6000))
 (linkid-word	?a	gives )
 (linkid-word	?b	notice )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" notisa_xe)" crlf )
)
; Ex. Nobody who leaves a firm like DPR actually gives notice.
;*****************************************

 (defrule	serves_notice
 (declare	(salience 6000))
 (linkid-word	?a	serves )
 (linkid-word	?b	notice )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" AxeSa_xe)" crlf )
)
; Ex. This is my second letter and it serves notice that should  provoke no reply.
;*****************************************

 (defrule	made_out
 (declare	(salience 6000))
 (linkid-word	?a	made )
 (linkid-word	?b	out )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" pawA_lagA_pA)" crlf )
)
; Ex. He made out the black shape of another tunnel mouth.
;*****************************************

 (defrule	pointed_out
 (declare	(salience 6000))
 (linkid-word	?a	pointed )
 (linkid-word	?b	out )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" XyAna_xilA)" crlf )
)
; Ex. Schipper pointed out that researchers are again handicapped by not having enough data.
;*****************************************

 (defrule	served_notice
 (declare	(salience 6000))
 (linkid-word	?a	served )
 (linkid-word	?b	notice )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" AxeSa_xe)" crlf )
)
; Ex. He served notice that Labour would oppose the Budget in its entirety.
;*****************************************

 (defrule	took_it
 (declare	(salience 6000))
 (linkid-word	?a	took )
 (linkid-word	?b	it )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" )" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	gave_notice
 (declare	(salience 6000))
 (linkid-word	?a	gave )
 (linkid-word	?b	notice )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" notisa_xe)" crlf )
)
; Ex. The Attorney-General then gave notice that he intended to proceed with the charges against the applicant.
;*****************************************

 (defrule	given_notice
 (declare	(salience 6000))
 (linkid-word	?a	given )
 (linkid-word	?b	notice )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" notisa_xe)" crlf )
)
; Ex. You've already given notice to the work-force, though you haven't paid them their dues.
;*****************************************

 (defrule	making_out
 (declare	(salience 6000))
 (linkid-word	?a	making )
 (linkid-word	?b	out )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" pawA_lagA_pA)" crlf )
)
; Ex. Can you honestly see him making out on the Island?
;*****************************************

 (defrule	pointing_out
 (declare	(salience 6000))
 (linkid-word	?a	pointing )
 (linkid-word	?b	out )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" XyAna_xilA)" crlf )
)
; Ex. I was merely pointing out that she is not a waif; she must belong to someone.
;*****************************************

 (defrule	giving_notice
 (declare	(salience 6000))
 (linkid-word	?a	giving )
 (linkid-word	?b	notice )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" notisa_xe)" crlf )
)
; Ex. The option could be exercised by the buyer giving notice in writing.
;*****************************************

 (defrule	serving_notice
 (declare	(salience 6000))
 (linkid-word	?a	serving )
 (linkid-word	?b	notice )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" AxeSa_xe)" crlf )
)
; Ex. In the event of one partner serving notice to dissolve the firm, the others may choose to re-form.
;*****************************************

 (defrule	turn_out
 (declare	(salience 6000))
 (linkid-word	?a	turn )
 (linkid-word	?b	out )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" nikalakar_A)" crlf )
)
; Ex. Would the prospects turn out to be as good as in the 1970s?
;*****************************************

 (defrule	turns_out
 (declare	(salience 6000))
 (linkid-word	?a	turns )
 (linkid-word	?b	out )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" nikalakar_A)" crlf )
)
; Ex. It turns out that half the words she's been teaching me are all wrong.
;*****************************************

 (defrule	turned_out
 (declare	(salience 6000))
 (linkid-word	?a	turned )
 (linkid-word	?b	out )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" nikalakar_A)" crlf )
)
; Ex. It turned out to be nothing more than a charter for busybodies, lacking muscle and new money.
;*****************************************

 (defrule	turning_out
 (declare	(salience 6000))
 (linkid-word	?a	turning )
 (linkid-word	?b	out )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" nikalakar_A)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	find_out
 (declare	(salience 6000))
 (linkid-word	?a	find )
 (linkid-word	?b	out )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" pawA_lagA)" crlf )
)
; Ex. We have to find out where it went


 (defrule	figure_out
 (declare	(salience 6000))
 (linkid-word	?a	figure )
 (linkid-word	?b	out )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" pawA_lagA)" crlf )
)
; Ex. you can figure out how many ounces to drink to meet your body’s daily  needs.
;*****************************************

 (defrule	finds_out
 (declare	(salience 6000))
 (linkid-word	?a	finds )
 (linkid-word	?b	out )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" pawA_lagA)" crlf )
)
; Ex. Fred finds out why Garry Schofield wants to be Leeds captain again.
;*****************************************

 (defrule	figures_out
 (declare	(salience 6000))
 (linkid-word	?a	figures )
 (linkid-word	?b	out )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" pawA_lagA)" crlf )
)
; Ex. Teen figures out how to decompose plastic bags in three months.
;*****************************************

 (defrule	found_out
 (declare	(salience 6000))
 (linkid-word	?a	found )
 (linkid-word	?b	out )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" pawA_lagA)" crlf )
)
; Ex. You could have found out where I was by asking your fianc.
;*****************************************

 (defrule	figured_out
 (declare	(salience 6000))
 (linkid-word	?a	figured )
 (linkid-word	?b	out )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" pawA_lagA)" crlf )
)
; Ex. I've never figured out how to do that!


 (defrule	finding_out
 (declare	(salience 6000))
 (linkid-word	?a	finding )
 (linkid-word	?b	out )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" pawA_lagA)" crlf )
)
; Ex. There are disadvantages to be too tall, as Martin Bayfield is also finding out.
;*****************************************

 (defrule	figuring_out
 (declare	(salience 6000))
 (linkid-word	?a	figuring )
 (linkid-word	?b	out )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" pawA_lagA)" crlf )
)
; Ex. ओ lot of time, effort and nervous energy is being spent by people on figuring out what to do in the CIS, where there are obviously great opportunities, but great risks as well.
;*****************************************

 (defrule	keep_on
 (declare	(salience 6000))
 (linkid-word	?a	keep )
 (linkid-word	?b	on )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" jZArI_raKa)" crlf )
)
; Ex. Norman Lamont admitted unemployment would keep on rising.
; Modified by Shirisha Manju (19-11-09) modified "jzArI_raKa" as "jZArI_raKa"
;*****************************************

 (defrule	give_up
 (declare	(salience 6000))
 (linkid-word	?a	give )
 (linkid-word	?b	up )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" Coda)" crlf )
)
; Ex. I don't give up.
;*****************************************

 (defrule	go_around
 (declare	(salience 6000))
 (linkid-word	?a	go )
 (linkid-word	?b	around )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" Asa_pAsa_jA)" crlf )
)
; Ex. I'll go around by the highway.
;*****************************************

 (defrule	keeps_on
 (declare	(salience 6000))
 (linkid-word	?a	keeps )
 (linkid-word	?b	on )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" jQArI_raKa)" crlf )
)
; Ex. No one who lives in heaven keeps on sinning. जऽजँजृजॄ कॄ


 (defrule	gives_up
 (declare	(salience 6000))
 (linkid-word	?a	gives )
 (linkid-word	?b	up )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" Coda)" crlf )
)
; Ex. He tries all the time and never gives up.
;*****************************************

 (defrule	kept_on
 (declare	(salience 6000))
 (linkid-word	?a	kept )
 (linkid-word	?b	on )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" jZArI_raKa)" crlf )
)
; Ex. He kept on encouraging us.
; Modified by Shirisha Manju (19-11-09) modified "jQArI_raKA"  as  "jZArI_raKa"
;*****************************************

 (defrule	gave_up
 (declare	(salience 6000))
 (linkid-word	?a	gave )
 (linkid-word	?b	up )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" Coda)" crlf )
)
; Ex. I gave up trying to remember her husband's name so I could ask after him.
;*****************************************

 (defrule	given_up
 (declare	(salience 6000))
 (linkid-word	?a	given )
 (linkid-word	?b	up )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" Coda)" crlf )
)
; Ex. It was all  harder because I could have given up at any moment.
;*****************************************

 (defrule	keeping_on
 (declare	(salience 6000))
 (linkid-word	?a	keeping )
 (linkid-word	?b	on )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" jQArI_raKa)" crlf )
)
; Ex. Peter suggested keeping on until half an hour into the rush hour but no longer as it looked like being particularly crowded today.
;*****************************************

 (defrule	giving_up
 (declare	(salience 6000))
 (linkid-word	?a	giving )
 (linkid-word	?b	up )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" Coda)" crlf )
)
; Ex. So now he's giving up busking in Gloucester.
;*****************************************

 (defrule	end_up
 (declare	(salience 6000))
 (linkid-word	?a	end )
 (linkid-word	?b	up )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" samApwa_ho)" crlf )
)
; Ex. Duncan hoped that the drink wasn't going to end up in the cockpit. I don't want this match to end up like the last two Tests.
;*****************************************

 (defrule	ends_up
 (declare	(salience 6000))
 (linkid-word	?a	ends )
 (linkid-word	?b	up )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" samApwa_ho)" crlf )
)
; Ex. Unfortunately, much of the opium produced by the plants ends up in the bloodstreams of drug addicts. That's how it ends up.
;*****************************************

 (defrule	ended_up
 (declare	(salience 6000))
 (linkid-word	?a	ended )
 (linkid-word	?b	up )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" samApwa_ho)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	ending_up
 (declare	(salience 6000))
 (linkid-word	?a	ending )
 (linkid-word	?b	up )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" samApwa_ho)" crlf )
)
; Ex. The problem I get asked about most is ending up with a seam that is not the correct length, or is wavy.
;*****************************************

 (defrule	just_over
 (declare	(salience 6000))
 (linkid-word	?a	just )
 (linkid-word	?b	over )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" basa)" crlf )
)
; Ex. That theft and recovery had taken place just over a year ago.
;*****************************************

 (defrule	just_under
 (declare	(salience 6000))
 (linkid-word	?a	just )
 (linkid-word	?b	under )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" se_WodA_kama)" crlf )
)
; Ex. That costs just under six hundred pounds.
;*****************************************

 (defrule	well_over
 (declare	(salience 6000))
 (linkid-word	?a	well )
 (linkid-word	?b	over )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" se_BI_Upara)" crlf )
)
; Ex. the temperature is well over 60.
;*****************************************

 (defrule	of_them
 (declare	(salience 6000))
 (linkid-word	?a	of )
 (linkid-word	?b	them )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" jinameM_se)" crlf )
)
; Ex. Many people were injured some of them children.
;*****************************************

 (defrule	so_as_to
 (declare	(salience 6000))
 (linkid-word	?a	so )
 (linkid-word	?b	as )
 (linkid-word	?c	to )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" wAki)" crlf )
)
; Ex. Girls don’t do math so as to not look nerdy.
;*****************************************

 (defrule	better_off
 (declare	(salience 6000))
 (linkid-word	?a	better )
 (linkid-word	?b	off )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" behawara_sWiwi_meM)" crlf )
)
; Ex. He was better off without his job.
;*****************************************

 (defrule	worse_off
 (declare	(salience 6000))
 (linkid-word	?a	worse )
 (linkid-word	?b	off )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" baxawara_sWiwi_meM)" crlf )
)
; Ex. He is worse off doing this job rather then the previous job.
;*****************************************

 (defrule	out_of
 (declare	(salience 6000))
 (linkid-word	?a	out )
 (linkid-word	?b	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
; (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" se_bAhara)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" meM_se)" crlf )
)
; Ex. Whenever I go out of a room I am certain to switch off the light.
;Date: Modified at 18/0309 on the basis of these sentences: "She got twenty marks out of fifty."  She got twenty  out of fifty marks." assuming that this meaning will work for all.  (Sukhada)
;*****************************************

 (defrule	other_than
 (declare	(salience 6000))
 (linkid-word	?a	other )
 (linkid-word	?b	than )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" ke_alAvA)" crlf )
)
; Ex. He had never seen his parents as anything other than Mum and Dad.
;*****************************************

 (defrule	apart_from
 (declare	(salience 6000))
 (linkid-word	?a	apart )
 (linkid-word	?b	from )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" ke_alAvA)" crlf )
)
; Ex. I will eat anything else apart from this.
;*****************************************

 (defrule	aside_from
 (declare	(salience 6000))
 (linkid-word	?a	aside )
 (linkid-word	?b	from )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" 0_ke_alAvA)" crlf )
)
; Ex. But aside from that, I don't want anyone else here.
;*****************************************

 (defrule	rather_than
 (declare	(salience 6000))
 (linkid-word	?a	rather )
 (linkid-word	?b	than )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" isake_bajAya)" crlf )
)
; Ex. I would be grateful if you would come to your senses sooner rather than later.
;*****************************************

 (defrule	instead_of
 (declare	(salience 6000))
 (linkid-word	?a	instead )
 (linkid-word	?b	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" ke_sWAna_para)" crlf )
)
; Ex. I would like to have milk instead of tea.
;*****************************************

 (defrule	because_of
 (declare	(salience 6000))
 (linkid-word	?a	because )
 (linkid-word	?b	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" hone_ke_kAraNa)" crlf )
)
; Ex. The show was taken off because of poor audiences.
;*****************************************

 (defrule	prior_to
 (declare	(salience 6000))
 (linkid-word	?a	prior )
 (linkid-word	?b	to )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" se_pahale)" crlf )
)
; Ex. Prior to becoming a doctor I was a compounder.
;*****************************************

 (defrule	as_well_as
 (declare	(salience 6000))
 (linkid-word	?a	as )
 (linkid-word	?b	well )
 (linkid-word	?c	as )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" BI)" crlf )
)
; Ex. I like milk as well as tea.
;*****************************************

 (defrule	according_to
 (declare	(salience 6000))
 (linkid-word	?a	according )
 (linkid-word	?b	to )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" anusAra)" crlf )
)
; Ex. Things don't appear to happen according to Aristotle.
;*****************************************

 (defrule	as_of
 (declare	(salience 6000))
 (linkid-word	?a	as )
 (linkid-word	?b	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" isa_0_se)" crlf )
)
; Ex. As of this movement I disown you as my son.
;*****************************************

 (defrule	in_case_of
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	case )
 (linkid-word	?c	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" kI_xaSA_meM)" crlf )
)
; Ex. I will call the police in case of emergency.
;*****************************************

 (defrule	in_response_to
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	response )
 (linkid-word	?c	to )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" ki_0_prawikriyA_me)" crlf )
)
; Ex. The cups rattled in response to her uncontrollable trembling.
;*****************************************

 (defrule	unbeknownst_to
 (declare	(salience 6000))
 (linkid-word	?a	unbeknownst )
 (linkid-word	?b	to )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" pawA_nahIM)" crlf )
)
;  Ex. Our destination and purpose at first unbeknownst to me, we went on a shopping expedition one day to a larger province close to Nongkhai.
;*****************************************

 (defrule	thanks_to
 (declare	(salience 6000))
 (linkid-word	?a	thanks )
 (linkid-word	?b	to )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" kI_vajaya_se)" crlf )
)
; Ex. Thanks to the airlifts, the average daily death rate now is 12.
;*****************************************

 (defrule	due_to
 (declare	(salience 6000))
 (linkid-word	?a	due )
 (linkid-word	?b	to )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" kI_vajaya_se)" crlf )
)
; Ex. The main cause is a lack of work placements due to the present economic climate.
;*****************************************

 (defrule	along_with
 (declare	(salience 6000))
 (linkid-word	?a	along )
 (linkid-word	?b	with )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" ke_sAWa)" crlf )
)
; Ex. I would go along with that.
;*****************************************

 (defrule	en_route_to
 (declare	(salience 6000))
 (linkid-word	?a	en )
 (linkid-word	?b	route )
 (linkid-word	?c	to )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" ke_rAswe_se)" crlf )
)
; Ex. Now they are going through the roof en route to the moon, having forced Spurs into a replay.
;*****************************************

 (defrule	in_connection_with
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	connection )
 (linkid-word	?c	with )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" ke_saMbaMXa_meM)" crlf )
)
; Ex. He's wanted for questioning in connection with alleged criminal damage to a car.
;*****************************************

 (defrule	regardless_of
 (declare	(salience 6000))
 (linkid-word	?a	regardless )
 (linkid-word	?b	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" kI_paravAha_kiye_binA)" crlf )
)
; Ex. The club welcomes all new members regardless of age.
;*****************************************

 (defrule	as_to
 (declare	(salience 6000))
 (linkid-word	?a	as )
 (linkid-word	?b	to )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" se_saMbaMXiwa)" crlf )
)
; Ex. There is no dispute as to the facts.
;*****************************************

 (defrule	irrespective_of
 (declare	(salience 6000))
 (linkid-word	?a	irrespective )
 (linkid-word	?b	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" kA_vicAra_kie_binA)" crlf )
)
; Ex. Ideas must not be rejected, irrespective of how odd they are.
;*****************************************

 (defrule	in_public
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	public )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" Kule_Ama)" crlf )
)
; Ex. If all dogs were muzzled, there would never be another dog attack in public.
;*****************************************

 (defrule	in_private
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	private )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" ekAMwa_meM)" crlf )
)
; Ex. She asked to see him in private.
;*****************************************

 (defrule	en_route
 (declare	(salience 6000))
 (linkid-word	?a	en )
 (linkid-word	?b	route )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" mArga_meM)" crlf )
)
; Ex. They sold the best diamonds en route.
;*****************************************

 (defrule	a_la_mode
 (declare	(salience 6000))
 (linkid-word	?a	a )
 (linkid-word	?b	la )
 (linkid-word	?c	mode )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" ke_sAWa)" crlf )
)
; Ex. I ate banana apple pie a la mode.
;*****************************************

 (defrule	a_la_carte
 (declare	(salience 6000))
 (linkid-word	?a	a )
 (linkid-word	?b	la )
 (linkid-word	?c	carte )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" vyaFjana_sUcI_se)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	side_by_side
 (declare	(salience 6000))
 (linkid-word	?a	side )
 (linkid-word	?b	by )
 (linkid-word	?c	side )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" sAWa_sAWa)" crlf )
)
; Ex. Two sisters work side by side in the Fabric Cleaning and Mending Department.
;*****************************************

 (defrule	next_door
 (declare	(salience 6000))
 (linkid-word	?a	next )
 (linkid-word	?b	door )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" agalA_makAna?)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	at_hand
 (declare	(salience 6000))
 (linkid-word	?a	at )
 (linkid-word	?b	hand )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" nikata)" crlf )
)
; Ex. Our salvation is at hand.
;*****************************************

 (defrule	in_reverse
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	reverse )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" baxale_maM)" crlf )
)
; Ex. It is interesting that he replied to her question in reverse!


 (defrule	in_place
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	place )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" ke_sWAna_para)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	in_town
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	town )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" kasbe_meM)" crlf )
)
; Ex. There is a well-known breakfast bar in town.
;*****************************************

 (defrule	under_way
 (declare	(salience 6000))
 (linkid-word	?a	under )
 (linkid-word	?b	way )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" cAlU)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	in_office
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	office )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" kAryAlaya_meM)" crlf )
)
; Ex. He had been in office for only 65 days.
;*****************************************

 (defrule	out_of_office
 (declare	(salience 6000))
 (linkid-word	?a	out )
 (linkid-word	?b	of )
 (linkid-word	?c	office )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" kAryAlaya_se_bAhara)" crlf )
)
; Ex. He pleaded with his colleagues not to push him out of office.
;*****************************************

 (defrule	out_of_reach
 (declare	(salience 6000))
 (linkid-word	?a	out )
 (linkid-word	?b	of )
 (linkid-word	?c	reach )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" pahuMzca_ke_bAhara)" crlf )
)
; Ex. Such highly-paid jobs are out of reach of someone with no qualifications.
;*****************************************

 (defrule	within_reach
 (declare	(salience 6000))
 (linkid-word	?a	within )
 (linkid-word	?b	reach )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" najZaxIka)" crlf )
)
; Ex. There should be a bell within reach to summon a nurse.
;*****************************************

 (defrule	on_guard
 (declare	(salience 6000))
 (linkid-word	?a	on )
 (linkid-word	?b	guard )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" cOkIxArI_para_wEnAwa)" crlf )
)
; Ex. At the police station we explained the situation to a policeman on guard.
;*****************************************

 (defrule	at_large
 (declare	(salience 6000))
 (linkid-word	?a	at )
 (linkid-word	?b	large )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" samagra_rUpa_se)" crlf )
)
; Ex. She talked at large about her plans.
;*****************************************

 (defrule	in_hand
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	hand )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" hAWa_maM)" crlf )
)
; Ex. The situation is well in hand.
;*****************************************

 (defrule	on_hand
 (declare	(salience 6000))
 (linkid-word	?a	on )
 (linkid-word	?b	hand )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" najZxIka)" crlf )
)
; Ex. I have to be on hand.
;*****************************************

 (defrule	for_free
 (declare	(salience 6000))
 (linkid-word	?a	for )
 (linkid-word	?b	free )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" muPawa_meM)" crlf )
)
; Ex. My neighbour cuts my hair for free.
;*****************************************

 (defrule	in_line
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	line )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" sIXa_maM)" crlf )
)
; Ex. Place your right toe in line with your left heel.
;*****************************************


 (defrule	in_loco_parentis
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	loco )
 (linkid-word	?c	parentis )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" mAwA-piwA_ke_sWAna_para)" crlf )
)
; Ex. Local authorities stand in loco parentis to the children for whom they are responsible.
;*****************************************

 (defrule	in_bed
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	bed )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" biswara_para)" crlf )
)
; Ex. I lay in bed.
;*****************************************

 (defrule	out_of_bed
 (declare	(salience 6000))
 (linkid-word	?a	out )
 (linkid-word	?b	of )
 (linkid-word	?c	bed )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" biswara_se_bAhara)" crlf )
)
; Ex. You shouldn't be out of bed.
;*****************************************

 (defrule	on_strike
 (declare	(salience 6000))
 (linkid-word	?a	on )
 (linkid-word	?b	strike )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" hadZawAl_para)" crlf )
)
; Ex. In Indiana seven hundred miners are on strike.
;*****************************************

 (defrule	on_top
 (declare	(salience 6000))
 (linkid-word	?a	on )
 (linkid-word	?b	top )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" hAvI)" crlf )
)
; Ex. She was on top throughout the match.
;*****************************************

 (defrule	from_afar
 (declare	(salience 6000))
 (linkid-word	?a	from )
 (linkid-word	?b	afar )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" xUra_se)" crlf )
)
; Ex. Keep a gentle eye on it from afar.
;*****************************************

 (defrule	at_stake
 (declare	(salience 6000))
 (linkid-word	?a	at )
 (linkid-word	?b	stake )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" Kaware_meM)" crlf )
)
; Ex. This decision puts their lives at stake.
;*****************************************

 (defrule	in_question
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	question )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" vivAxAspaxa)" crlf )
)
; Ex. The woman in question is sitting over there.
;*****************************************

 (defrule	at_issue
 (declare	(salience 6000))
 (linkid-word	?a	at )
 (linkid-word	?b	issue )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" vivAxagraswa)" crlf )
)
; Ex. What was at issue was the future of cities themselves.
;*****************************************

 (defrule	on_lease
 (declare	(salience 6000))
 (linkid-word	?a	on )
 (linkid-word	?b	lease )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" patte_para)" crlf )
)
; Ex. We are looking for agri lands with water facility on lease.
;*****************************************

 (defrule	on_trial
 (declare	(salience 6000))
 (linkid-word	?a	on )
 (linkid-word	?b	trial )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" parIkRaNa_ke_lie)" crlf )
)
; Ex. Take the machine on trial for a week.
;*****************************************

 (defrule	in_league
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	league )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" sAMta-gATa)" crlf )
)
; Ex. I am sure his wife thought I was in league with Set


 (defrule	in_cahoots
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	cahoots )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" sAMTa-gAMTa)" crlf )
)
; Ex. It is claimed that police is in cahoots with the mafia.
;*****************************************

 (defrule	in_front
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	front )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" Age)" crlf )
)
; Ex. The bride and bridegroom rode in front.
;*****************************************

 (defrule	on_camera
 (declare	(salience 6000))
 (linkid-word	?a	on )
 (linkid-word	?b	camera )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" paraxe_para)" crlf )
)
; Ex. Hell, I beat him to the handshake and it's on camera.
;*****************************************

 (defrule	in_command
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	command )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" SakwiSAlI)" crlf )
)
; Ex. I was the second in command of a submarine before I was twenty-one.
;*****************************************

 (defrule	in_concert
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	concert )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" praxarSana_meM)" crlf )
)
; Ex. See Michael Jackson in concert.
;*****************************************

 (defrule	on_foot
 (declare	(salience 6000))
 (linkid-word	?a	on )
 (linkid-word	?b	foot )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" pExala)" crlf )
)
; Ex. Visitors will have to tour the valley on foot.
;*****************************************

 (defrule	on_line
 (declare	(salience 6000))
 (linkid-word	?a	on )
 (linkid-word	?b	line )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" Ona_lAina)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	out_of_town
 (declare	(salience 6000))
 (linkid-word	?a	out )
 (linkid-word	?b	of )
 (linkid-word	?c	town )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" kasbe_se_bAhara)" crlf )
)
; Ex. Travellers move out of town.
;*****************************************

 (defrule	in_situ
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	situ )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" mUla_sWAna_para)" crlf )
)
; Ex. You can see some of our equipment in situ .
;*****************************************

 (defrule	in_toto
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	toto )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" pUrNawaH)" crlf )
)
; Ex. they bought the business in toto.
;*****************************************

 (defrule	off_course
 (declare	(salience 6000))
 (linkid-word	?a	off )
 (linkid-word	?b	course )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" niScaya_hI)" crlf )
)
; Ex. I must have wandered off course more than I had thought.
;*****************************************

 (defrule	under_oath
 (declare	(salience 6000))
 (linkid-word	?a	under )
 (linkid-word	?b	oath )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" SapaWabaxXa)" crlf )
)
; Ex. The judge reminded the witness that she was still under oath.
;*****************************************

 (defrule	by_example
 (declare	(salience 6000))
 (linkid-word	?a	by )
 (linkid-word	?b	example )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" uxAharaNa_xvArA)" crlf )
)
; Ex. I can illustrate this  by example.
;*****************************************

 (defrule	on_holiday
 (declare	(salience 6000))
 (linkid-word	?a	on )
 (linkid-word	?b	holiday )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" CuttI_para)" crlf )
)
; Ex. Going on holiday without insurance is always a risk.
;*****************************************

 (defrule	by_invitation
 (declare	(salience 6000))
 (linkid-word	?a	by )
 (linkid-word	?b	invitation )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" nimanwraNa_xvArA)" crlf )
)
; Ex. The entry had been by invitation and restricted to forty-eight amateurs and forty-eight professionals.
;*****************************************

 (defrule	on_patrol
 (declare	(salience 6000))
 (linkid-word	?a	on )
 (linkid-word	?b	patrol )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" gaSwa_lagA_rahe)" crlf )
)
; Ex. Terrorists attacked two soldiers on patrol.
;*****************************************

 (defrule	on_stage
 (declare	(salience 6000))
 (linkid-word	?a	on )
 (linkid-word	?b	stage )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" steja_para)" crlf )
)
; Ex. His wife whispered to him to go on stage.
;*****************************************

 (defrule	in_step
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	step )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" kZaxama_milAkar)" crlf )
)
; Ex. They were all in step and looked very smart.
;*****************************************

 (defrule	in_tempo
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	tempo )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" gawi_meM)" crlf )
)
; Ex. This indicates that some of the previous reduction was a slowing in tempo.
;*****************************************

 (defrule	on_schedule
 (declare	(salience 6000))
 (linkid-word	?a	on )
 (linkid-word	?b	schedule )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" samaya_para)" crlf )
)
; Ex. Building work's on schedule and inmates are expected in March.
;modified on 22-07-09, for the example: The project was finished on schedule, as usual.
;*****************************************

 (defrule	behind_schedule
 (declare	(salience 6000))
 (linkid-word	?a	behind )
 (linkid-word	?b	schedule )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" yojanA_anusAra_pICe)" crlf )
)
; Ex. We're behind schedule, but we're getting there.
;*****************************************

 (defrule	ahead_of_schedule
 (declare	(salience 6000))
 (linkid-word	?a	ahead )
 (linkid-word	?b	of )
 (linkid-word	?c	schedule )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" yojanA_anusAra_pahale)" crlf )
)
; Ex. The work finished four months ahead of schedule.
;*****************************************

 (defrule	for_good
 (declare	(salience 6000))
 (linkid-word	?a	for )
 (linkid-word	?b	good )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" hameSA_ke_liye)" crlf )
)
; Ex. I am leaving this job for good.
;*****************************************

 (defrule	for_keeps
 (declare	(salience 6000))
 (linkid-word	?a	for )
 (linkid-word	?b	keeps )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" saxA_ke_liye)" crlf )
)
; Ex. Can I have it for keeps or do you want it back?
;*****************************************

 (defrule	in_phase
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	phase )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" usI_kramAvasWA_meM)" crlf )
)
; Ex. You will therefore have less time to spend with the puppy during this crucial early settling in phase.
;*****************************************

 (defrule	out_of_step
 (declare	(salience 6000))
 (linkid-word	?a	out )
 (linkid-word	?b	of )
 (linkid-word	?c	step )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" alaga)" crlf )
)
; Ex. It is out of step with the rest of Europe.
;*****************************************

 (defrule	out_of_phase
 (declare	(salience 6000))
 (linkid-word	?a	out )
 (linkid-word	?b	of )
 (linkid-word	?c	phase )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" Binna_kramAvasWA_meM)" crlf )
)
; Ex. The two sets of traffic lights were out of phase and several accidents occurred.
;*****************************************

 (defrule	in_tune
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	tune )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" laya_meM)" crlf )
)
; Ex. The violin is not quite in tune with the piano.
;*****************************************

 (defrule	out_of_tune
 (declare	(salience 6000))
 (linkid-word	?a	out )
 (linkid-word	?b	of )
 (linkid-word	?c	tune )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" asvarabaxXa)" crlf )
)
; Ex. The choir was distinctly out of tune in places.
;*****************************************

 (defrule	neck_and_neck
 (declare	(salience 6000))
 (linkid-word	?a	neck )
 (linkid-word	?b	and )
 (linkid-word	?c	neck )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" barAbara_mukZAbale_kA)" crlf )
)
; Ex. The leading runners are neck and neck.
;*****************************************

 (defrule	as_usual
 (declare	(salience 6000))
 (linkid-word	?a	as )
 (linkid-word	?b	usual )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" hameSA_kI_waraha)" crlf )
)
; Ex. He was early as usual.
;*****************************************

 (defrule	to_date
 (declare	(salience 6000))
 (linkid-word	?a	to )
 (linkid-word	?b	date )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" Aja_waka)" crlf )
)
; Ex. The Kensington Hilton was the biggest place I have ever encountered to date.
;*****************************************

 (defrule	in_turn
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	turn )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" kI_bArI_Ane_para)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	so_far
 (declare	(salience 6000))
 (linkid-word	?a	so )
 (linkid-word	?b	far )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" aBI_waka)" crlf )
)
; Ex. This is the best so far.
;*****************************************

 (defrule	in_particular
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	particular )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" viSeRawaH)" crlf )
)
; Ex. Is there anything in particular you'd like for dinner?
;*****************************************

 (defrule	in_response
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	response )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" ke_pariNamasvarUpa)" crlf )
)
; Ex. There's also a list of new custom macros designed in response to user-requests.
;*****************************************

 (defrule	in_general
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	general )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" AmawOra_para)" crlf )
)
; Ex. In general her work has been very good.
;*****************************************

 (defrule	thus_far
 (declare	(salience 6000))
 (linkid-word	?a	thus )
 (linkid-word	?b	far )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" yahAz_waka)" crlf )
)
; Ex. The effects that they have created thus far are similarly impressive.
;*****************************************

 (defrule	in_reply
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	reply )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" prawyuwwara_meM)" crlf )
)
; Ex. The letters they received in reply made uncomfortable reading.
;*****************************************

 (defrule	next_to
 (declare	(salience 6000))
 (linkid-word	?a	next )
 (linkid-word	?b	to )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" ke_sAmane)" crlf )
)
; Ex. he was sitting next to me.
;*****************************************

 (defrule	in_back_of
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	back )
 (linkid-word	?c	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" ke_TIka_pICe)" crlf )
)
; Ex. I trailed along in back of her with the glasses.
;*****************************************

 (defrule	in_front_of
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	front )
 (linkid-word	?c	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" ke_sAmane)" crlf )
)
; Ex. You cannot put an E in front of this one!


 (defrule	close_to
 (declare	(salience 6000))
 (linkid-word	?a	close )
 (linkid-word	?b	to )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" ke_nikata)" crlf )
)
; Ex. Ali bent down close to his ear and whispered.
;*****************************************

 (defrule	on_top_of
 (declare	(salience 6000))
 (linkid-word	?a	on )
 (linkid-word	?b	top )
 (linkid-word	?c	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" ke_Upara)" crlf )
)
; Ex. Can I book you to go on top of the bonfire?
;*****************************************

 (defrule	outside_of
 (declare	(salience 6000))
 (linkid-word	?a	outside )
 (linkid-word	?b	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" ke_bAhara)" crlf )
)
; Ex. Living outside of Oxford would also be a serious handicap.
;*****************************************

 (defrule	inside_of
 (declare	(salience 6000))
 (linkid-word	?a	inside )
 (linkid-word	?b	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" ke_anxara)" crlf )
)
; Ex. I can see colours inside of it.
;*****************************************

 (defrule	ahead_of
 (declare	(salience 6000))
 (linkid-word	?a	ahead )
 (linkid-word	?b	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" ke_sAmane)" crlf )
)
; Ex. Vinnie walks ahead of us.
;*****************************************

 (defrule	by_way_of
 (declare	(salience 6000))
 (linkid-word	?a	by )
 (linkid-word	?b	way )
 (linkid-word	?c	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" ke_rAswe_se)" crlf )
)
; Ex. Return is by way of the old Roman road to Biberwier. She went past Bart's Hospital and entered it by way of Barley Mow passage on the west.
;*****************************************

 (defrule	akin_to
 (declare	(salience 6000))
 (linkid-word	?a	akin )
 (linkid-word	?b	to )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" ke_samAna)" crlf )
)
; Ex. He felt something akin to pity.
;*****************************************

 (defrule	in_lieu_of
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	lieu )
 (linkid-word	?c	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" ke_baxale_meM)" crlf )
)
; Ex. Accept a cheque in lieu of cash.
;*****************************************

 (defrule	on_account_of
 (declare	(salience 6000))
 (linkid-word	?a	on )
 (linkid-word	?b	account )
 (linkid-word	?c	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" ke_kAraNa)" crlf )
)
; Ex. We delayed our departure on account of the bad weather.
;*****************************************

 (defrule	in_place_of
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	place )
 (linkid-word	?c	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" ke_sWAna_para)" crlf )
)
; Ex. But in place of tea they drank beer.
;*****************************************

 (defrule	in_search_of
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	search )
 (linkid-word	?c	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" kI_walASa_meM)" crlf )
)
; Ex. go in search of a cheap hotel.
;*****************************************

 (defrule	all_over
 (declare	(salience 6000))
 (linkid-word	?a	all )
 (linkid-word	?b	over )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" srvawra)" crlf )
)
; Ex. We looked all over for the ring.
;*****************************************

 (defrule	all_around
 (declare	(salience 6000))
 (linkid-word	?a	all )
 (linkid-word	?b	around )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" hara_waraha_se)" crlf )
)
; Ex. Life all around was dirty.
;*****************************************

 (defrule	such_as
 (declare	(salience 6000))
 (linkid-word	?a	such )
 (linkid-word	?b	as )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" jEse_ki)" crlf )
)
; Ex. There are important by-products such as wool and flax, leading to cloth production, milling, tanning, etc.
;*****************************************

 (defrule	this_time
 (declare	(salience 6000))
 (linkid-word	?a	this )
 (linkid-word	?b	time )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" isa_samaya)" crlf )
)
; Ex. And that's where he had been this time?
;*****************************************

 (defrule	that_time
 (declare	(salience 6000))
 (linkid-word	?a	that )
 (linkid-word	?b	time )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" usa_samaya)" crlf )
)
; Ex. It was because of her I went to the head that time at the school.
;*****************************************

 (defrule	these_days
 (declare	(salience 6000))
 (linkid-word	?a	these )
 (linkid-word	?b	days )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" ian_xinoM)" crlf )
)
; Ex. Probably very few diaries of this sort are kept these days.
;*****************************************

 (defrule	last_time
 (declare	(salience 6000))
 (linkid-word	?a	last )
 (linkid-word	?b	time )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" piClI_bAra)" crlf )
)
; Ex. I reported last time that I'd made an approach to Chris.
;*****************************************

 (defrule	next_time
 (declare	(salience 6000))
 (linkid-word	?a	next )
 (linkid-word	?b	time )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" agalI_bAra)" crlf )
)
; Ex. But next time it will be OK.
;*****************************************

 (defrule	the_next
 (declare	(salience 6000))
 (linkid-word	?a	the )
 (linkid-word	?b	next )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" agalA)" crlf )
)
; Ex. Jones was arrested the next day and admitted responsibility.
;*****************************************

 (defrule	the_previous
 (declare	(salience 6000))
 (linkid-word	?a	the )
 (linkid-word	?b	previous )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	"piCalA)" crlf )
)
;  Ex.She had been present at the incident involving Seb and Nahum the previous evening.
;*****************************************

 (defrule	the_following
 (declare	(salience 6000))
 (linkid-word	?a	the )
 (linkid-word	?b	following )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" Age_AnevAlA)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	year_and_a_half
 (declare	(salience 6000))
 (linkid-word	?a	year )
 (linkid-word	?b	and )
 (linkid-word	?c	a )
 (linkid-word	?d	half )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_lnode-link_rnode ?ID3	?c	?d)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID2	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?d	" xeDa_sAla)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	a_while
 (declare	(salience 6000))
 (linkid-word	?a	a )
 (linkid-word	?b	while )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" eka_kRaNa)" crlf )
)
; Ex. She stays on location for a while, to ensure everything is running smoothly.
;*****************************************

 (defrule	now_on
 (declare	(salience 6000))
 (linkid-word	?a	now )
 (linkid-word	?b	on )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" aba)" crlf )
)
; Ex. It was the only piece that she would be needing from now on.
;*****************************************

 (defrule	then_on
 (declare	(salience 6000))
 (linkid-word	?a	then )
 (linkid-word	?b	on )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" waba)" crlf )
)
; Ex. From then on relations between the two were strained.
;*****************************************

 (defrule	from_now
 (declare	(salience 6000))
 (linkid-word	?a	from )
 (linkid-word	?b	now )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" aba_se)" crlf )
)
; Ex. Supposing all this had happened three months from now.
;*****************************************

 (defrule	a_long_time
 (declare	(salience 6000))
 (linkid-word	?a	a )
 (linkid-word	?b	long )
 (linkid-word	?c	time )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" lambe_samaya_waka)" crlf )
)
; Ex. We might wait a long time.
;*****************************************

 (defrule	some_time
 (declare	(salience 6000))
 (linkid-word	?a	some )
 (linkid-word	?b	time )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" kaBI)" crlf )
)
; Ex. Mrs P Satterley is the reader who wrote to us some time ago to say how wonderful the people at this shop are.
;*****************************************

 (defrule	a_few_moments
 (declare	(salience 6000))
 (linkid-word	?a	a )
 (linkid-word	?b	few )
 (linkid-word	?c	moments )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" kuCa_kRaNa)" crlf )
)
; Ex. I refer to the reply that I gave a few moments ago.
;*****************************************

 (defrule	every_time
 (declare	(salience 6000))
 (linkid-word	?a	every )
 (linkid-word	?b	time )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" hara_bAra)" crlf )
)
; Ex. He had probably told  a lie of one sort or another every time they met.
;*****************************************

 (defrule	a_long_way
 (declare	(salience 6000))
 (linkid-word	?a	a )
 (linkid-word	?b	long )
 (linkid-word	?c	way )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" bahuwa_xUra)" crlf )
)
; Ex. Pemberton hit the post from a long way out for Leeds.
;*****************************************

 (defrule	percentage_point
 (declare	(salience 6000))
 (linkid-word	?a	percentage )
 (linkid-word	?b	point )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" prawiSawawA_aMka)" crlf )
)
; Ex. The Swiss discount rate rose half a percentage point to 6 per cent.
;*****************************************

 (defrule	percentage_points
 (declare	(salience 6000))
 (linkid-word	?a	percentage )
 (linkid-word	?b	points )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" prawiSawawA_aMka)" crlf )
)
; Ex. It is 18 percentage points behind the Liberal-National coalition.
;*****************************************

 (defrule	one_dollar
 (declare	(salience 6000))
 (linkid-word	?a	one )
 (linkid-word	?b	dollar )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" eka_dAlara)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	a_dollar
 (declare	(salience 6000))
 (linkid-word	?a	a )
 (linkid-word	?b	dollar )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" eka_dAlara)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	one_cent
 (declare	(salience 6000))
 (linkid-word	?a	one )
 (linkid-word	?b	cent )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" eka_sEnta)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	a_cent
 (declare	(salience 6000))
 (linkid-word	?a	a )
 (linkid-word	?b	cent )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" eka_sEnta)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	a_hundredfold
 (declare	(salience 6000))
 (linkid-word	?a	a )
 (linkid-word	?b	hundredfold )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" sO_bAra)" crlf )
)
; Ex. It rewards my years of hard work a hundredfold.
;*****************************************

 (defrule	a_thousandfold
 (declare	(salience 6000))
 (linkid-word	?a	a )
 (linkid-word	?b	thousandfold )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" hajAra_bAra)" crlf )
)
; Ex. it increased the threat he constituted a thousandfold.
;*****************************************

 (defrule	degrees_Fahrenheit
 (declare	(salience 6000))
 (linkid-word	?a	degrees )
 (linkid-word	?b	Fahrenheit )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" digrI_PArenahAita)" crlf )
)
; Ex. The temperature rockets through 50 degrees Fahrenheit between dawn and noon.
;*****************************************

 (defrule	degrees_Centigrade
 (declare	(salience 6000))
 (linkid-word	?a	degrees )
 (linkid-word	?b	Centigrade )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" digrI_seMtigreda)" crlf )
)
; Ex. It should cause a fall of around 0.5 degrees Centigrade.
;*****************************************

 (defrule	no_matter
 (declare	(salience 6000))
 (linkid-word	?a	no )
 (linkid-word	?b	matter )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" isakI_paravAha_kie_binA_ki)" crlf )
)
;modified on date : 25/02/09
; Ex. Call me when you get there, no matter what the time is.
;*****************************************

 (defrule	now_that
 (declare	(salience 6000))
 (linkid-word	?a	now )
 (linkid-word	?b	that )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" cUMzki_aba)" crlf )
)
; Ex. And now that all the data is on the database, if I want to get that information back it is not a problem.
;*****************************************

 (defrule	just_as
 (declare	(salience 6000))
 (linkid-word	?a	just )
 (linkid-word	?b	as )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" jEse_hI)" crlf )
)
; Ex. just as I said,’ Ward murmured, no trace of an accent as we collected our baggage.
;*****************************************

 (defrule	if_only
 (declare	(salience 6000))
 (linkid-word	?a	if )
 (linkid-word	?b	only )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" agZara_EsA)" crlf )
)
; Ex. I'll hold him down while you kick him, if only we can find him.
;*****************************************

 (defrule	in_case
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	case )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" agara)" crlf )
)
; Ex. It's just a back-up in case you get stuck.
;*****************************************

 (defrule	insofar_as
 (declare	(salience 6000))
 (linkid-word	?a	insofar )
 (linkid-word	?b	as )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" jahAMz_waka)" crlf )
)
; Ex. Yet insofar as the chip embodies a symbolic record of a program it is apparently also software.
;*****************************************

 (defrule	on_the_grounds_that
 (declare	(salience 6000))
 (linkid-word	?a	on )
 (linkid-word	?b	the )
 (linkid-word	?c	grounds )
 (linkid-word	?d	that )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_lnode-link_rnode ?ID3	?c	?d)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID2	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?d	" ke_AXAra_para_ki)" crlf )
)
; Ex. This was rejected on the grounds that such sinister tunnels would become lurking places for thieves.
;*****************************************

 (defrule	in_that
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	that )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" usa_meM)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	in_the_event_that
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	the )
 (linkid-word	?c	event )
 (linkid-word	?d	that )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_lnode-link_rnode ?ID3	?c	?d)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID2	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?d	" yaxi)" crlf )
)
; Ex. But in the event that Simon is not fit enough to appear, Roberto will stand in.
;*****************************************

 (defrule	even_though
 (declare	(salience 6000))
 (linkid-word	?a	even )
 (linkid-word	?b	though )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" yaxyapi)" crlf )
)
; Ex. I was glad to see him, even though he did say I was getting fatter.
;*****************************************

 (defrule	as_if
 (declare	(salience 6000))
 (linkid-word	?a	as )
 (linkid-word	?b	if )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" jEse_ki)" crlf )
)
; Ex. I love her every bit as much as if she were my natural daughter.
;*****************************************

 (defrule	as_though
 (declare	(salience 6000))
 (linkid-word	?a	as )
 (linkid-word	?b	though )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" jEse_ki)" crlf )
)
; Ex. To me it seems now as though all had ended well.
;*****************************************

 (defrule	as_soon_as
 (declare	(salience 6000))
 (linkid-word	?a	as )
 (linkid-word	?b	soon )
 (linkid-word	?c	as )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" jEse_hI)" crlf )
)
; Ex. As soon as they saw her, they started running.
;*****************************************

 (defrule	ever_since
 (declare	(salience 6000))
 (linkid-word	?a	ever )
 (linkid-word	?b	since )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" waba_se)" crlf )
)
; Ex. I have been wondering about it ever since I first heard.
;*****************************************

 (defrule	if_possible
 (declare	(salience 6000))
 (linkid-word	?a	if )
 (linkid-word	?b	possible )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" yaxi_samBava_hE_wo)" crlf )
)
; Ex. Please give names and addresses if possible.
;*****************************************

 (defrule	if_necessary
 (declare	(salience 6000))
 (linkid-word	?a	if )
 (linkid-word	?b	necessary )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" yaxi_AvaSyaktA_padI_wo)" crlf )
)
; Ex. It is hoped that the NRA will release water if necessary.
;*****************************************

 (defrule	if_so
 (declare	(salience 6000))
 (linkid-word	?a	if )
 (linkid-word	?b	so )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" yaxi_EsA_hE_wo)" crlf )
)
; Ex. They must now decide whether to go ahead with military action, and, if so, of what kind.
;*****************************************

 (defrule	if_only
 (declare	(salience 6000))
 (linkid-word	?a	if )
 (linkid-word	?b	only )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" agZara_EsA)" crlf )
)
; Ex. I'll hold him down while you kick him, if only we can find him.
;*****************************************

 (defrule	no_wonder
 (declare	(salience 6000))
 (linkid-word	?a	no )
 (linkid-word	?b	wonder )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" koI_AScarya_nahIM)" crlf )
)
; Ex. No wonder America has so many shrinks.
;*****************************************

 (defrule	why_not
 (declare	(salience 6000))
 (linkid-word	?a	why )
 (linkid-word	?b	not )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" kyoM_nahIM)" crlf )
)
; Ex. If sun, sea and sand aren't your idea of fun, why not try something completely different?
;*****************************************

 (defrule	whether_or_not
 (declare	(salience 6000))
 (linkid-word	?a	whether )
 (linkid-word	?b	or )
 (linkid-word	?c	not )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" yA_nhIM)" crlf )
)
; Ex. Let me know whether or not you're interested.
;*****************************************

 (defrule	a_bitch
 (declare	(salience 6000))
 (linkid-word	?a	a )
 (linkid-word	?b	bitch )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" wucCa[kuwiyA])" crlf )
)
; Ex. I said, I know I was stupid, I may be little, but I'm not a bitch.
;*****************************************

 (defrule	a_bummer
 (declare	(salience 6000))
 (linkid-word	?a	a )
 (linkid-word	?b	bummer )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" musIbawa)" crlf )
)
; Ex. A young actress who had taken LSD was a bummer.
;*****************************************

 (defrule	a_mistake
 (declare	(salience 6000))
 (linkid-word	?a	a )
 (linkid-word	?b	mistake )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" wruti)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	de_facto
 (declare	(salience 6000))
 (linkid-word	?a	de )
 (linkid-word	?b	facto )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" vaswuwaH)" crlf )
)
; Ex. Ability without legal authority is de facto power.
;*****************************************

 (defrule	de_jure
 (declare	(salience 6000))
 (linkid-word	?a	de )
 (linkid-word	?b	jure )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" viXiwaH)" crlf )
)
; Ex. It did not create a de jure status for the interim government in Somalia.
;*****************************************

 (defrule	pro_forma
 (declare	(salience 6000))
 (linkid-word	?a	pro )
 (linkid-word	?b	forma )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" OpacArikawA_ke_rUpa_meM)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	ad_hoc
 (declare	(salience 6000))
 (linkid-word	?a	ad )
 (linkid-word	?b	hoc )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" anOpacArika_rUpa_se)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	bona_fide
 (declare	(salience 6000))
 (linkid-word	?a	bona )
 (linkid-word	?b	fide )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" prAmANika)" crlf )
)
; Ex. What I did was a bona fide act solely in her interests.
;*****************************************

 (defrule	a_priori
 (declare	(salience 6000))
 (linkid-word	?a	a )
 (linkid-word	?b	priori )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" pUrva)" crlf )
)
; Ex. There are many reasons to expect a priori that standards of policing should have improved.
;*****************************************

 (defrule	a_posteriori
 (declare	(salience 6000))
 (linkid-word	?a	a )
 (linkid-word	?b	posteriori )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" paScAw)" crlf )
)
; Ex. After the test a posteriori probability of his being diseased is one in thousand.
;*****************************************

 (defrule	as_possible
 (declare	(salience 6000))
 (linkid-word	?a	as )
 (linkid-word	?b	possible )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" yaWAsaMbAva)" crlf )
)
; Ex. Digging tools must be chosen with great care to make the work as easy as possible.
;*****************************************

 (defrule	as_expected
 (declare	(salience 6000))
 (linkid-word	?a	as )
 (linkid-word	?b	expected )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" jEsI_ki_ASA_WI)" crlf )
)
; Ex. Investors realize that it is highly improbable that events will turn out as expected.
;*****************************************

 (defrule	as_reported
 (declare	(salience 6000))
 (linkid-word	?a	as )
 (linkid-word	?b	reported )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" sUcanAnusAra)" crlf )
)
; Ex. Our results are comparable with those of the spark gap generator as reported by the Munich group.
;*****************************************

 (defrule	as_imagined
 (declare	(salience 6000))
 (linkid-word	?a	as )
 (linkid-word	?b	imagined )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" kalpanAnusAra)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	as_suspected
 (declare	(salience 6000))
 (linkid-word	?a	as )
 (linkid-word	?b	suspected )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" jEsA_ki_sanxeha_WA)" crlf )
)
; Ex. This is not a great deal as suspected.
;*****************************************

 (defrule	as_anticipated
 (declare	(salience 6000))
 (linkid-word	?a	as )
 (linkid-word	?b	anticipated )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" ASAnusAra)" crlf )
)
; Ex. Manners' reaction to the delegation was not perhaps as anticipated.
;*****************************************

 (defrule	as_predicted
 (declare	(salience 6000))
 (linkid-word	?a	as )
 (linkid-word	?b	predicted )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" pUrvAnumAnAsAra)" crlf )
)
; Ex. Enquiry will show that everything in fact happened just as predicted.
;*****************************************

 (defrule	as_proposed
 (declare	(salience 6000))
 (linkid-word	?a	as )
 (linkid-word	?b	proposed )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" jEsA_ki_praswAviwa_kiyA_gayA_WA)" crlf )
)
; Ex. I worked on the project as proposed by the ministry


 (defrule	as_intended
 (declare	(salience 6000))
 (linkid-word	?a	as )
 (linkid-word	?b	intended )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" jEsA_ki_socA_WA)" crlf )
)
; Ex. The things happened as intended


 (defrule	as_supposed
 (declare	(salience 6000))
 (linkid-word	?a	as )
 (linkid-word	?b	supposed )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" jEsA_ki_mAnA_WA)" crlf )
)
; Ex. The work was incomplete as supposed.
;*****************************************

 (defrule	than_expected
 (declare	(salience 6000))
 (linkid-word	?a	than )
 (linkid-word	?b	expected )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" apekRA_se)" crlf )
)
; Ex. I earned more than expected.
;*****************************************

 (defrule	than_imagined
 (declare	(salience 6000))
 (linkid-word	?a	than )
 (linkid-word	?b	imagined )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" kalpanA_se)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	than_proposed
 (declare	(salience 6000))
 (linkid-word	?a	than )
 (linkid-word	?b	proposed )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" praswAviwA_se)" crlf )
)
; Ex. Conservation could save more water than proposed.
;*****************************************

 (defrule	than_realized
 (declare	(salience 6000))
 (linkid-word	?a	than )
 (linkid-word	?b	realized )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" jEsA_samaJA_WA)" crlf )
)
; Ex. Cities cover more of earth than realized.
;*****************************************

 (defrule	than_intended
 (declare	(salience 6000))
 (linkid-word	?a	than )
 (linkid-word	?b	intended )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" irAxe_se)" crlf )
)
; Ex. I got up later then intended.
;*****************************************

 (defrule	more_than
 (declare	(salience 6000))
 (linkid-word	?a	more )
 (linkid-word	?b	than )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" se_aXika)" crlf )
)
; Ex. Call your doctor for advice if symptoms persist for more than a few days.
;*****************************************

 (defrule	no_more_than
 (declare	(salience 6000))
 (linkid-word	?a	no )
 (linkid-word	?b	more )
 (linkid-word	?c	than )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" se_aXika_nahIM)" crlf )
)
; Ex. The logical name chosen should contain no more than 28 characters.
;*****************************************

 (defrule	fewer_than
 (declare	(salience 6000))
 (linkid-word	?a	fewer )
 (linkid-word	?b	than )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" se_kama)" crlf )
)
; Ex. Priority is given to letters of fewer than 500 words.
;*****************************************

 (defrule	less_than
 (declare	(salience 6000))
 (linkid-word	?a	less )
 (linkid-word	?b	than )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" se_kama)" crlf )
)
; Ex. She was at the gallery in less than five minutes.
;*****************************************

 (defrule	as_many_as
 (declare	(salience 6000))
 (linkid-word	?a	as )
 (linkid-word	?b	many )
 (linkid-word	?c	as )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" jyAxA_se_jyAxA)" crlf )
)
; Ex. There were as many as 200 people at the lecture.
;*****************************************

 (defrule	an_estimated
 (declare	(salience 6000))
 (linkid-word	?a	an )
 (linkid-word	?b	estimated )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" anumAniwa)" crlf )
)
; Ex. Even vacuuming thoroughly leaves an estimated 95% of live mites undisturbed.
;*****************************************

 (defrule	an_additional
 (declare	(salience 6000))
 (linkid-word	?a	an )
 (linkid-word	?b	additional )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" awirikwa)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	as_much_as
 (declare	(salience 6000))
 (linkid-word	?a	as )
 (linkid-word	?b	much )
 (linkid-word	?c	as )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" AScaryajanaka_badZI_mAwrA_meM)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	no_fewer_than
 (declare	(salience 6000))
 (linkid-word	?a	no )
 (linkid-word	?b	fewer )
 (linkid-word	?c	than )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" se_kama_nahIM)" crlf )
)
; Ex. In this rural area there had been no fewer than nineteen peasant uprisings in 1919.
;*****************************************

 (defrule	no_less_than
 (declare	(salience 6000))
 (linkid-word	?a	no )
 (linkid-word	?b	less )
 (linkid-word	?c	than )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" kama_se_kama)" crlf )
)
; Ex. On a clear day you can see no less than 7 lakes.
;*****************************************

 (defrule	at_least
 (declare	(salience 6000))
 (linkid-word	?a	at )
 (linkid-word	?b	least )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" kama_se_kama)" crlf )
)
; Ex. Identify at least ten ways of improving it.
;*****************************************

 (defrule	all_but
 (declare	(salience 6000))
 (linkid-word	?a	all )
 (linkid-word	?b	but )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" Codakara_saba)" crlf )
)
; Ex. He pressed her hand, all but beseeched her.
;*****************************************

 (defrule	the_same
 (declare	(salience 6000))
 (linkid-word	?a	the )
 (linkid-word	?b	same )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" vahI)" crlf )
)
; Ex. MacDonald took office the same afternoon.
;*****************************************

 (defrule	far_from
 (declare	(salience 6000))
 (linkid-word	?a	far )
 (linkid-word	?b	from )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" se_xUra)" crlf )
)
; Ex. Exactly who will win what in Botswana is still far from clear.
;*****************************************

 (defrule	a_bit
 (declare	(salience 6000))
 (linkid-word	?a	a )
 (linkid-word	?b	bit )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" WodA_sA)" crlf )
)
; Ex. You are  a bit late to sell this one.
;*****************************************

 (defrule	a_little_bit
 (declare	(salience 6000))
 (linkid-word	?a	a )
 (linkid-word	?b	little )
 (linkid-word	?c	bit )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" WodA_sA)" crlf )
)
; Ex. let's learn just a little bit about Wicket.
;*****************************************

 (defrule	very_very
 (declare	(salience 6000))
 (linkid-word	?a	very )
 (linkid-word	?b	very )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" bahuwa_bahuwa)" crlf )
)
; Ex. I want a very very  interesting free cricket game to play on internet.
;*****************************************

 (defrule	very_very_very
 (declare	(salience 6000))
 (linkid-word	?a	very )
 (linkid-word	?b	very )
 (linkid-word	?c	very )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" bahuwa_bahuwa_bahuwa)" crlf )
)
; Ex. I want a very very very interesting free cricket game to play on internet.
;*****************************************

 (defrule	just_about
 (declare	(salience 6000))
 (linkid-word	?a	just )
 (linkid-word	?b	about )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" lagaBaga)" crlf )
)
; Ex. The job is just about done.
;*****************************************

 (defrule	in_part
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	part )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" kuCa_haxa_waka)" crlf )
)
; Ex. His success was due in part to luck.
;*****************************************

 (defrule	all_the_way
 (declare	(salience 6000))
 (linkid-word	?a	all )
 (linkid-word	?b	the )
 (linkid-word	?c	way )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" sArA_rAswA)" crlf )
)
; Ex. sometimes Andrew had been so drunk that Iain shouldered him all the way home.
;*****************************************

 (defrule	all_the_time
 (declare	(salience 6000))
 (linkid-word	?a	all )
 (linkid-word	?b	the )
 (linkid-word	?c	time )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" hara_samaya)" crlf )
)
; Ex. It's the same all the time.
;*****************************************

 (defrule	inter_alia
 (declare	(salience 6000))
 (linkid-word	?a	inter )
 (linkid-word	?b	alia )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" ke_sAWa-sAWa)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	mutatis_mutandis
 (declare	(salience 6000))
 (linkid-word	?a	mutatis )
 (linkid-word	?b	mutandis )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" AvaSyaka_parivarwanoM_sahiwa)" crlf )
)
; Ex. The question of establishment raised mutatis mutandis other causes dear to radical hearts.
;*****************************************

 (defrule	par_excellence
 (declare	(salience 6000))
 (linkid-word	?a	par )
 (linkid-word	?b	excellence )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" SreRTa)" crlf )
)
; Ex. This is the market economy par excellence.
;*****************************************

 (defrule	ab_initio
 (declare	(salience 6000))
 (linkid-word	?a	ab )
 (linkid-word	?b	initio )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" axiwaH)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	ad_infinitum
 (declare	(salience 6000))
 (linkid-word	?a	ad )
 (linkid-word	?b	infinitum )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" niravaXi)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	ad_lib
 (declare	(salience 6000))
 (linkid-word	?a	ad )
 (linkid-word	?b	lib )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" biNA_wEyArI_ke)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	ad_libitum
 (declare	(salience 6000))
 (linkid-word	?a	ad )
 (linkid-word	?b	libitum )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" svacCanxa_rUpa_se)" crlf )
)
; Ex. The rats were fed ad libitum.
;*****************************************

 (defrule	ad_nauseum
 (declare	(salience 6000))
 (linkid-word	?a	ad )
 (linkid-word	?b	nauseum )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" [iwanA_bolanA_ki_]ubAU_ho)" crlf )
)
; Ex. He talks ad nauseam about how smart his daughter is.
;*****************************************

 (defrule	en_masse
 (declare	(salience 6000))
 (linkid-word	?a	en )
 (linkid-word	?b	masse )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" eka_sAWa)" crlf )
)
; Ex. The guests arrived en masse. IITB


 (defrule	into_account
 (declare	(salience 6000))
 (linkid-word	?a	into )
 (linkid-word	?b	account )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" XyAna_meM)" crlf )
)
; Ex. Will these factors be taken into account.
;*****************************************

 (defrule	into_effect
 (declare	(salience 6000))
 (linkid-word	?a	into )
 (linkid-word	?b	effect )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" kAryAwmaka_rUpa_meM)" crlf )
)
; Ex. We have asked to do so, but changes take a long time to come into effect.
;*****************************************

 (defrule	to_bid
 (declare	(salience 6000))
 (linkid-word	?a	to )
 (linkid-word	?b	bid )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" bolI_lagA*)" crlf )
)
; Ex. I am going to bid my life on the next move.
;*****************************************

 (defrule	from_scratch
 (declare	(salience 6000))
 (linkid-word	?a	from )
 (linkid-word	?b	scratch )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" Suru_se )" crlf )
)
;  Ex. I am going to begin from scratch.
;*****************************************

 (defrule	to_office
 (declare	(salience 6000))
 (linkid-word	?a	to )
 (linkid-word	?b	office )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" kAryAlaya_ko)" crlf )
)
; Ex. I am going to office.
;*****************************************

 (defrule	for_office
 (declare	(salience 6000))
 (linkid-word	?a	for )
 (linkid-word	?b	office )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" kAryAlaya_ke_liye)" crlf )
)
; Ex. I am leaving for office.
;*****************************************

 (defrule	at_once
 (declare	(salience 6000))
 (linkid-word	?a	at )
 (linkid-word	?b	once )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" wuranwa)" crlf )
)
; Ex. I am leaving at once.
;*****************************************

 (defrule	to_normal
 (declare	(salience 6000))
 (linkid-word	?a	to )
 (linkid-word	?b	normal )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" pahale_jEsA)" crlf )
)
; Ex. I am back to normal.
;*****************************************

 (defrule	to_bed
 (declare	(salience 6000))
 (linkid-word	?a	to )
 (linkid-word	?b	bed )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" sone)" crlf )
)
; Ex. I am going to bed.
;*****************************************

 (defrule	into_office
 (declare	(salience 6000))
 (linkid-word	?a	into )
 (linkid-word	?b	office )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" kAryAlaya_meM_parivarwiwa_kara)" crlf )
)
; Ex. He is planning to Integrate the Web Into Office.
;*****************************************

 (defrule	in_advance
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	advance )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" pahale_se)" crlf )
)
; Ex. It is impossible to know in advance what will happen.
;*****************************************

 (defrule	by_lot
 (declare	(salience 6000))
 (linkid-word	?a	by )
 (linkid-word	?b	lot )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" cita_xvArA)" crlf )
)
; Ex. In Athens at that time, judges were chosen by lot.
;*****************************************

 (defrule	by_credit_card
 (declare	(salience 6000))
 (linkid-word	?a	by )
 (linkid-word	?b	credit )
 (linkid-word	?c	card )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" kredita_kArda_xvArA)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	by_ear
 (declare	(salience 6000))
 (linkid-word	?a	by )
 (linkid-word	?b	ear )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" suna_sunakara)" crlf )
)
; Ex. She learnt singing by ear.
;*****************************************

 (defrule	by_foot
 (declare	(salience 6000))
 (linkid-word	?a	by )
 (linkid-word	?b	foot )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" pExala)" crlf )
)
; Ex. I am go to reach there by foot.
;*****************************************

 (defrule	in_kind
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	kind )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" vaswu_ke_rUpa_meM)" crlf )
)
; Ex. The farmer sometimes used to pay me in kind.
;*****************************************

 (defrule	in_mind
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	mind )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_root_mng 	"?b	" yAxa_raKa)" crlf )
)
; Ex. They have in mind the order of the boot.
;*****************************************

 (defrule	in_pen
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	pen )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" liKiwa_meM)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	to_scale
 (declare	(salience 6000))
 (linkid-word	?a	to )
 (linkid-word	?b	scale )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" vAswavika_nApa-joKa_ke_anupAwa)" crlf )
)
; Ex. draw a map of an area to scale.
;*****************************************

 (defrule	for_trial
 (declare	(salience 6000))
 (linkid-word	?a	for )
 (linkid-word	?b	trial )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" prIkRaNa_ke_lie)" crlf )
)
; Ex. it hasn't even been committed for trial yet.
;*****************************************

 (defrule	all_right
 (declare	(salience 6000))
 (linkid-word	?a	all )
 (linkid-word	?b	right )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" TIka)" crlf )
)
; Ex. Is the coffee all right?
;*****************************************

 (defrule	full_time
 (declare	(salience 6000))
 (linkid-word	?a	full )
 (linkid-word	?b	time )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" pUrNakAlika)" crlf )
)
; Ex. A full time job.
;*****************************************

 (defrule	part_time
 (declare	(salience 6000))
 (linkid-word	?a	part )
 (linkid-word	?b	time )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" aMSakAlika)" crlf )
)
; Ex. a part time job.
;*****************************************

 (defrule	by_far
 (declare	(salience 6000))
 (linkid-word	?a	by )
 (linkid-word	?b	far )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" aba_waka)" crlf )
)
; Ex. This will be by far the longest record for any society, a record which now breaks off in the 1880s.
;*****************************************

 (defrule	once_again
 (declare	(salience 6000))
 (linkid-word	?a	once )
 (linkid-word	?b	again )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" Pira_eka_bAra)" crlf )
)
; Ex. You are once again doing it completely.
;*****************************************

 (defrule	at_first
 (declare	(salience 6000))
 (linkid-word	?a	at )
 (linkid-word	?b	first )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" pahale-pahale)" crlf )
)
; Ex. She was caught off balance, frightened at first.
;*****************************************

 (defrule	at_best
 (declare	(salience 6000))
 (linkid-word	?a	at )
 (linkid-word	?b	best )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" jyAxA_se_jyAxA)" crlf )
)
; Ex. Well, it had been a forlorn hope at best.
;*****************************************

 (defrule	at_present
 (declare	(salience 6000))
 (linkid-word	?a	at )
 (linkid-word	?b	present )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" Ajakala)" crlf )
)
; Ex. All those involved in health care know how these questions are dealt with at present.
;*****************************************

 (defrule	of_late
 (declare	(salience 6000))
 (linkid-word	?a	of )
 (linkid-word	?b	late )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" kuCa_samaya_se)" crlf )
)
; Ex. We've all had a lot of aggravation of late.
;*****************************************

 (defrule	not_suprisingly
 (declare	(salience 6000))
 (linkid-word	?a	not )
 (linkid-word	?b	suprisingly )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" anAScaryajanaka_wrIke_se)" crlf )
)
; Ex. Not suprisingly modern-day ark seekers are found not in the conservative Christian community, not in university


 (defrule	in_fact
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	fact )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" wawvawaH)" crlf )
)
; Ex. It was in fact the first time in his life that he had looked at any woman.
;*****************************************

 (defrule	of_course
 (declare	(salience 6000))
 (linkid-word	?a	of )
 (linkid-word	?b	course )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" nissanxeha)" crlf )
)
; Ex. `Do you like my mother?' `Of course I do.
;*****************************************

 (defrule	in_effect
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	effect )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" vaswuwaH)" crlf )
)
; Ex. The two systems in effect are identical.
;*****************************************

 (defrule	for_example
 (declare	(salience 6000))
 (linkid-word	?a	for )
 (linkid-word	?b	example )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" uxAharaNarWa)" crlf )
)
; Ex. Can you, for example, think of situations in which  (3) and (5) would be acceptable?
;*****************************************

 (defrule	for_instance
 (declare	(salience 6000))
 (linkid-word	?a	for )
 (linkid-word	?b	instance )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" uxAharaNarWa)" crlf )
)
; Ex. In France, for instance, the railways became the suppliers of Paris.
;*****************************************

 (defrule	POST_VERBALLY
 (declare	(salience 6000))
 (linkid-word	?a	POST )
 (linkid-word	?b	VERBALLY )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" bolane_ke_bAxa)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	prima_facie
 (declare	(salience 6000))
 (linkid-word	?a	prima )
 (linkid-word	?b	facie )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" prawyakRa)" crlf )
)
; Ex. prima facie evidence.
;*****************************************

 (defrule	before_long
 (declare	(salience 6000))
 (linkid-word	?a	before )
 (linkid-word	?b	long )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" jalxa_hI)" crlf )
)
; Ex. we should have news before long.
;*****************************************

 (defrule	by_hand
 (declare	(salience 6000))
 (linkid-word	?a	by )
 (linkid-word	?b	hand )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" hAwa_se)" crlf )
)
; Ex. There was no induction hopper so all filling was done by hand.
;*****************************************

 (defrule	by_car
 (declare	(salience 6000))
 (linkid-word	?a	by )
 (linkid-word	?b	car )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" kAra_se)" crlf )
)
; Ex. Many patients will have a family member who can collect them by car.
;*****************************************

 (defrule	by_plane
 (declare	(salience 6000))
 (linkid-word	?a	by )
 (linkid-word	?b	plane )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" vimAna_se)" crlf )
)
; Ex. Everyone else will go to Paris by plane.
;*****************************************

 (defrule	by_boat
 (declare	(salience 6000))
 (linkid-word	?a	by )
 (linkid-word	?b	boat )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" nAva_se)" crlf )
)
; Ex. Go by boat to Ladhar Bheinna


 (defrule	by_bus
 (declare	(salience 6000))
 (linkid-word	?a	by )
 (linkid-word	?b	bus )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" basa_se)" crlf )
)
; Ex. Located near Budapest, the site can be reached by bus.
;*****************************************

 (defrule	by_train
 (declare	(salience 6000))
 (linkid-word	?a	by )
 (linkid-word	?b	train )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" rela_se)" crlf )
)
; Ex. Located near Budapest, the site can be reached by  train.
;*****************************************

 (defrule	by_phone
 (declare	(salience 6000))
 (linkid-word	?a	by )
 (linkid-word	?b	phone )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" Pona_se)" crlf )
)
; Ex. We asked him, by phone of course, what he thought of Richard's invention.
;*****************************************

 (defrule	by_telephone
 (declare	(salience 6000))
 (linkid-word	?a	by )
 (linkid-word	?b	telephone )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" teliPona_se)" crlf )
)
; Ex. I also kept my contacts and my work going during the golf season, even if I did it mostly by telephone.
;*****************************************

 (defrule	at_long_last
 (declare	(salience 6000))
 (linkid-word	?a	at )
 (linkid-word	?b	long )
 (linkid-word	?c	last )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" AKirakAra)" crlf )
)
; Ex. Unfortunately at long last we are making some progress along that line.
;*****************************************

 (defrule	on_cue
 (declare	(salience 6000))
 (linkid-word	?a	on )
 (linkid-word	?b	cue )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" iSAre_para)" crlf )
)
; Ex. I just can't cry on cue.
;*****************************************

 (defrule	on_arrival
 (declare	(salience 6000))
 (linkid-word	?a	on )
 (linkid-word	?b	arrival )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" Agamana_para)" crlf )
)
; Ex. All guests receive a bottle of wine on arrival.
;*****************************************

 (defrule	in_total
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	total )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" kula_milAkara)" crlf )
)
; Ex. So it was over a hundred and fifty thousand pounds in total.
;*****************************************

 (defrule	over_and_over
 (declare	(salience 6000))
 (linkid-word	?a	over )
 (linkid-word	?b	and )
 (linkid-word	?c	over )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" bArabAra)" crlf )
)
; Ex. As she did this, she told me a chant I had to say over and over again.
;*****************************************

 (defrule	later_on
 (declare	(salience 6000))
 (linkid-word	?a	later )
 (linkid-word	?b	on )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" bAxa_meM)" crlf )
)
; Ex. We'll see you later on.
;*****************************************

 (defrule	for_now
 (declare	(salience 6000))
 (linkid-word	?a	for )
 (linkid-word	?b	now )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" aBI_ke_liye)" crlf )
)
; Ex. That's all from us for now.
;*****************************************

 (defrule	day_by_day
 (declare	(salience 6000))
 (linkid-word	?a	day )
 (linkid-word	?b	by )
 (linkid-word	?c	day )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" xina_prawi_xina)" crlf )
)
; Ex. Day by day she learnt more about her job.
;*****************************************

 (defrule	day_after_day
 (declare	(salience 6000))
 (linkid-word	?a	day )
 (linkid-word	?b	after )
 (linkid-word	?c	day )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" xinoM_xina)" crlf )
)
; Ex. What must it be like to be imprisoned here, day after day.
;*****************************************

 (defrule	step_by_step
 (declare	(salience 6000))
 (linkid-word	?a	step )
 (linkid-word	?b	by )
 (linkid-word	?c	step )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" kaxama_xara_kaxama)" crlf )
)
; Ex. It is done slowly, step by step.
;*****************************************

 (defrule	one_by_one
 (declare	(salience 6000))
 (linkid-word	?a	one )
 (linkid-word	?b	by )
 (linkid-word	?c	one )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" eka_eka_karake)" crlf )
)
; Ex. This time, one by one, they noticed Gaily.
;*****************************************

 (defrule	for_sure
 (declare	(salience 6000))
 (linkid-word	?a	for )
 (linkid-word	?b	sure )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" niSciwa_rUpa_se)" crlf )
)
; Ex. The only thing we know for sure is that shit happens.
;*****************************************

 (defrule	for_certain
 (declare	(salience 6000))
 (linkid-word	?a	for )
 (linkid-word	?b	certain )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" niSciwa_rUpa_se)" crlf )
)
; Ex. Indeed, we know for certain that this was sometimes not the case.
;*****************************************

 (defrule	even_so
 (declare	(salience 6000))
 (linkid-word	?a	even )
 (linkid-word	?b	so )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" Pira_BI)" crlf )
)
; Ex. He said he loved me, even so.
;*****************************************

 (defrule	more_often_than_not
 (declare	(salience 6000))
 (linkid-word	?a	more )
 (linkid-word	?b	often )
 (linkid-word	?c	than )
 (linkid-word	?d	not )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_lnode-link_rnode ?ID3	?c	?d)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID2	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?d	" jZyAxAwara)" crlf )
)
; Ex. To enter the prison is, more often than not, to step back in time.
;*****************************************

 (defrule	all_of_a_sudden
 (declare	(salience 6000))
 (linkid-word	?a	all )
 (linkid-word	?b	of )
 (linkid-word	?c	a )
 (linkid-word	?d	sudden )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_lnode-link_rnode ?ID3	?c	?d)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID2	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?d	" akasmAw)" crlf )
)
; Ex. I did not believe it, I said I was healthy and then all of a sudden, this happened.
;*****************************************

 (defrule	no_longer
 (declare	(salience 6000))
 (linkid-word	?a	no )
 (linkid-word	?b	longer )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" aba_Ora_nahIM)" crlf )
)
; Ex. That is no longer true.
;*****************************************

 (defrule	in_brief
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	brief )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" saMkRepa_meM)" crlf )
)
; Ex. The answer, in brief, is the method of empirical inquiry, at its best the method of science.
;*****************************************

 (defrule	in_short
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	short )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" jalxI)" crlf )
)
; Ex. You will, in short, become a desktop junkie.
;*****************************************

 (defrule	in_sum
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	sum )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" kula_milAkara)" crlf )
)
; Ex. The Council, in sum, is seeking most of the tools it needs to relaunch itself as an active, respected self-regulator.
;*****************************************

 (defrule	in_essence
 (declare	(salience 6000))
 (linkid-word	?a	in )
 (linkid-word	?b	essence )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" mUlawaH)" crlf )
)
; Ex. But in essence we're selling advertising to all of those products.
;*****************************************

 (defrule	at_no_time
 (declare	(salience 6000))
 (linkid-word	?a	at )
 (linkid-word	?b	no )
 (linkid-word	?c	time )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" kaBI_BI_nahIM)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	not_once
 (declare	(salience 6000))
 (linkid-word	?a	not )
 (linkid-word	?b	once )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" eka_bAra_BI_nahIM)" crlf )
)
; Ex. But not once did he see a young girl.
;*****************************************

 (defrule	since_when
 (declare	(salience 6000))
 (linkid-word	?a	since )
 (linkid-word	?b	when )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" kaba_se)" crlf )
)
; Ex. And since when was Holland an industrial superpower?
;*****************************************

 (defrule	not_since
 (declare	(salience 6000))
 (linkid-word	?a	not )
 (linkid-word	?b	since )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" se_nahIM)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	not_even
 (declare	(salience 6000))
 (linkid-word	?a	not )
 (linkid-word	?b	even )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" BI_nahIM)" crlf )
)
;  Ex. <>
;*****************************************

 (defrule	so_that
 (declare	(salience 6000))
 (linkid-word	?a	so )
 (linkid-word	?b	that )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" wAki)" crlf )
)
; Ex. Carry it around so that each one can touch and smell it.
;*****************************************

 (defrule	so_on
 (declare	(salience 6000))
 (linkid-word	?a	so )
 (linkid-word	?b	on )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf)
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" iwyAxi)" crlf )
)
; Ex. She knew the press would seize on the food from Maxims, the tents by Jansen, and so on.
;*****************************************

 (defrule	the_likes_of
 (declare	(salience 6000))
 (linkid-word	?a	the )
 (linkid-word	?b	likes )
 (linkid-word	?c	of )
 (link_name-link_lnode-link_rnode ?ID1	?a	?b)
 (link_name-link_lnode-link_rnode ?ID2	?b	?c)
 (link_name-link_expansion	?ID1	I D $?)
 (link_name-link_expansion	?ID1	I D $?)
=>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf ) 
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?c ")" crlf ) 
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?a	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?b	" -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng 	"?c	" ke_jEsA)" crlf )
)
; Ex. He's a real snob- he'd never speak to the likes of me.
;*****************************************

 (defrule than_usual
 (declare       (salience 6000))
 (linkid-word   ?a      than )
 (linkid-word   ?b      usual)
 (link_name-link_expansion      ?ID1    I D $?)
 (link_name-link_lnode-link_rnode ?ID1 ?a      ?b)
 =>
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?a ")" crlf )
 (printout ?*mng-file* "(meaning_has_been_decided_for_linkid "?b ")" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng      "?a     " -)" crlf )
 (printout ?*id_exp-file* "(link_id-idiom_word_mng      "?b     " sAmAnya_kI_wulanA_meM)" crlf )
 )
