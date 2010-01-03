
(defrule court0
(declare (salience 5000))
(id-root ?id court)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarabAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  court.clp 	court0   "  ?id "  xarabAra )" crlf))
)

(defrule court1
(declare (salience 4900))
(id-root ?id court)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  court.clp 	court1   "  ?id "  cAha )" crlf))
)

;"court","VT","1.cAhanA"
;John is courting Mary
;We were courting for over ten years
;
;LEVEL 
;Headword : court
;
;Examples --
;
;1. Today the king will visit the court late.
;Aja rAjA xarabAra kI mulAkAwa xera se kareMge.
;2. They took this matter to the court.
;ve yaha viRaya kacerI waka le gae.
;3. The house was built around an inner court.
;yaha Gara anxarUnI Azgana ke gola banA WA.
;4. John is courting Mary.
;jOYna mErI kA prema pAne kI koSiSa kara rahA hE.
;5. He has courted controversy again this time.
;usane Pira se isa bAra mawaBexa ko AmaMwriwa kiyA hE.
;
;uparaliKiwa vAkyoM meM azgrejI Sabxa "court" ke Binna laganevAle arWa, vAswava meM 
;saMbaMXiwa hEM. 
;
;vAkya 1. meM "court" kA arWa rAjA kA "xarabAra" EsA A rahA hE. 
;
;isa arWa ke xvArA vAkya 3. Ora 2. meM "court" kA arWa BI pAyA jA sakawA hE. 
;rAjA kA xarabAra Ama wOra se kisI KulI jagaha ke cAro ora BarA jAwA WA. 
;wo aba isa arWa ko viswqwa kara ke Gara ke cAro ora kI KulI jagaha [Azgana] ke lie 
;BI "court" Sabxa kA prayoga kiyA jAwA hE. aba "court" kA arWa "xarabAra" se viswqwa 
;hokara kisI BI KulI jagaha ke saMxarBa meM prayoga kiyA jAwA hE. 
;
; vAkya 2. meM "court" kA jo arWa "kacerI-nyAyAlaya" A rahA hE, use hama isa 
;prakAra samaJa sakawe hEM. rAjA nyAya ke PEsale Bare xarabAra meM sunAwe We. 
;wo jo nyAya xene kA kArya rAjA Bare xarabAra meM karawe We, vahI kArya kacerI meM kiyA
;jAwA hE.isa ke awirikwa, rAjA ke xarabAra kI waraha ,kacerI meM BI bETane kI vyavasWA 
;kisI KulI jagaha ke cAro ora howI hE.
;wo aba "court" kA arWa "xarabAra" ke arWa se Age baDakara usa jagaha ke lie 
;prayoga meM AyA hE, jahAz nyAya xiyA jAwA hE.
; 
;vAkya 4. meM "court" kA arWa "prema pAne kI koSiSa" Ora vAkya 5. meM "kuCa pAne kI
; koSiSa" Ese A rahA hE. yaha arWa pAne ke lie vAkya 1. ke arWa ko hameM bahuwa
; viswqwa karanA hogA. 
; rAjA ke xarabAra meM upasWiwa logoM ko vinamrawA se barawanA howA hE. wo aba xarabAra
;[court] meM xarSAI gaI vinamrawA [courteousness] ke arWa ko viswqwa karake 
;"kuCa pAne ke lie vinamrawA kA prayoga karanA" EsA arWa vAkya 5. meM pAyA jA sakawA hE.
;isa arWa ko Age baDAkara viSeRawaH "(SAxI ke lie)prema pAne kI koSiSa" EsA arWa xiyA jA
;sakawA hE.
;
;anwarnihiwa sUwra; 
;
;court[saMjFA]   -      courteous [viSeRaNa]
;xarabAra                      vinamra
; |                          |
; v                          v
;KulI jagaha               vinamrawA kA prayoga
;                            |
;                            v
;                        kuCa pAne ke lie
;                            |
;                            v
;                      (SAxI ke lie) prema pAne kI koSiSa          
;
; xarabAra > KulI jagaha > vinamrawA > (SAxI ke lie) prema pAne kI koSiSa  
;
;sUwra : xarabAra/pAne_kI_koSiSa`
