
(defrule capital0
(declare (salience 5000))
(id-root ?id capital)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUzjI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  capital.clp 	capital0   "  ?id "  pUzjI )" crlf))
)

(defrule capital1
(declare (salience 4900))
(id-root ?id capital)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUMjI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  capital.clp 	capital1   "  ?id "  pUMjI )" crlf))
)

;default_sense && category=noun	rAjaXAnI	0
;"capital","N","1.rAjaXAnI"
;Delhi is the capital of India.
;--"2.pUzjI/mUlaXana"
;We require a huge capital to start a business.
;
;
;LEVEL 
;
;
;                    sUwra (nibanXa)
;capital adj
;badZA akRara 
;1.Proper nouns are always written in capital letters. 
;
;mqwyu xanda
;2.Some citizens do not believe in capital punishment for murder 
;
;rAjZaXAnI N 
;3.Delhi is the capital of India.
;
;pUzjI/mUlaXana
;4.We require a huge capital to start a business. 
;---------------------------------------------------------------
;
;sUwra : rAjaXAnI[<badA]/mUlapUzjI
;------------------
;
;vAkyoM ke AXAra para vivaraNa--
;---------------------
;--  1,3,4 vAkyoM ke arWa sUwra meM sAkRAw A gaye hE .        
;--  2 ke lie jahAz BI xaNda ke lie isa Sabxa kA prayoga hogA, vahAz xaNdavAcI
;    Sabxa BI hogA . isa kAraNa `badA' Sabxa se arWa boXa sugama hogA . 
; 
;sUwra-saMGaTaka waWya--
;--------------
;-- ye saBI prayoga `kEpitala' Sabxa ke viswAra hEM,jisakA mUlArWa `badA' yA `muKya'
;   socA jA sakawA hE . 
;-- `rAjaXAnI', Ora nagaroM kI apekRA badI yA muKya howI hE . 
;-- aMgrejI meM jina kEpitala akRaroM-`bade akRara' kI paripAtI hE, veM akRara 
;   sAkRAw bade xIKawe hEM .  
;-- mUla pUzjI ko muKya yA badA kahA jAnA hI cAhie . kAraNa- usake kAraNa
;   hI anya Xana kI bAwa socI jA sakawI hE . 
;-- jo BI xaNda xiye jAwe hEM, unameM mqwyu-xaNda sabase badA mAnA jAwA hE . awaH
;   mqwyuxaNda ke rUpa meM prayoga .
;
