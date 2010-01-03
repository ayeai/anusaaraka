(open "relations_tmp.dat" open-file "a")
(open "relations_debug.dat" debug_fp "a")
(defglobal ?*fp* = open-file)
(defglobal ?*dbug* = debug_fp)

(deffunction string_to_integer (?link_id); [Removes the first characterfrom the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?link_id)))
 

;1.	The relation "cc" was not found in parser but is discrobed in documents.
;2.	There is no need to map "xsubj" relation because we are getting the required info from "xcomp" relation.
;3.	The relations "aux" and "auxpass" are not mapped because these are part of main verb so are not required to map saperatly.
;4.	The relation "conj" is also not mapped to any relation because we are getting this info from other samAnAXikaraNa relations.
;5.	The relation "infmod" is not shown for specified ex. "I do not have anything to say.", which is given as an ex. for same sentence.
;6.	We are not getting the relation "number" in parser for sentence "I lost $ 3.2 billion" as is written in its document.
;7.	We are not getting the relation "parataxis" in parser for sentence "The guy , John said , left early in the morning." as is written in its document.
;8.	The relation "pobj" is not found in parser for sentence "I sat on the chair." as is written in its document.
;9.	The relation "possessive" is not found in parser for sentence "I took Bill's clothes." as is written in its document.
;10.	The relation "possessive" is not found in parser for sentence "Both the boys and the girls are here." as is written in its document.
;11.    The relation "punct" is not found in parser for sentence "Go home!" as is written in its document.
;12.	The relation "appos"is not found in parser for sentences like "Sam , my brother came yesterday".
;13.	The relation "possessive" is not mapped to any relation bcoz it just connects possessive suf to their objects....
;14.	The relation "preconj" was not found for ex. "Both the boys and the girls are here ." ...
;15.	the relation "xsubj" is not mapped into Paninian relations bcoz v r ???????????? Tom likes to eat



(defrule abbrev
(rel_name-sids abbrev ?nAma ?saMkRipwa_nAma)
=>
(printout	?*fp*	"(using-parser-ids     nAma-saMkRipwa_nAma	"?nAma"	"?saMkRipwa_nAma")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	abbrev	kriyA-dummy_subject	"?nAma"	"?saMkRipwa_nAma")"crlf)	
)
 ; Ex. International Institute of Information Technology(IIIT) is here.

 
(defrule expl
(rel_name-sids expl ?kriyA ?dummy_sub)
=>
(printout	?*fp*	"(using-parser-ids     kriyA-dummy_subject	"?kriyA"	"?dummy_sub	")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	expl	kriyA-dummy_subject	"?kriyA"	"?dummy_sub	")"crlf)	
)
 ; Ex. There is a ghost in the room.

(defrule nsubj_expl
(declare(salience 201))
(rel_name-sids expl ?kriyA ?kriyA_dummy_subject)
(or (rel_name-sids nsubj ?kriyA ?sub)(rel_name-sids nsubjpass ?kriyA ?sub))
(not (rel_name-sids cop ?kriyA ?))
(not (rel_name-sids nn ?sub ?));Added by Shirisha Manju Ex : You are lucky that there is no exam today .
=>
(printout       ?*fp*   "(using-parser-ids    kriyA-dummy_subject       "?kriyA"        "?kriyA_dummy_subject   ")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  nsubj_expl   kriyA-dummy_subject   "?kriyA"        "?sub   ")"crlf)

(printout       ?*fp*   "(using-parser-ids    kriyA-GNP_agr_subject       "?kriyA"        "?sub   ")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  nsubj_expl   kriyA-GNP_agr_subject   "?kriyA"        "?sub   ")"crlf)
 (assert (sub_for_kriyA ?kriyA))
)

 ;Ex. There was a red mark on the door . 

 (defrule nsubj_expl_nn
 (declare(salience 202))
 (rel_name-sids nsubj|nsubjpass ?kriyA ?sub)
 (rel_name-sids expl ?kriyA ?kriyA_dummy_subject)
 (rel_name-sids nn  ?sub ?GNP_sub)
 (not (rel_name-sids cop ?kriyA ?))
 =>
 (printout       ?*fp*   "(using-parser-ids    kriyA-dummy_subject       "?kriyA"        "?kriyA_dummy_subject   ")"crlf)
 (printout       ?*dbug* "(Rule-Rel-ids  nsubj_expl   kriyA-dummy_subject   "?kriyA"     "?kriyA_dummy_subject   ")"crlf)

 (printout       ?*fp*   "(using-parser-ids    kriyA-GNP_agr_subject       "?kriyA"        "?GNP_sub   ")"crlf)
 (printout       ?*dbug* "(Rule-Rel-ids  nsubj_expl   kriyA-GNP_agr_subject   "?kriyA"        "?GNP_sub   ")"crlf)
  (assert (sub_for_kriyA ?kriyA))
 )
 ;Added by Shirisha Manju
 ;Ex : You are lucky that there is no exam today .

 (defrule kriyA_sub_rule
 (declare (salience 190))
 (root-verbchunk-tam-parser_chunkids $?ids ?kriyA)
 (rel_name-sids nsubj|nsubjpass ?kriyA ?sub)
 (not (sub_for_kriyA ?kriyA))
 =>
 	(printout       ?*fp*   "(using-parser-ids     kriyA-subject    "?kriyA"        "?sub   ")"crlf)
	(printout       ?*dbug* "(Rule-Rel-ids  kriyA_subject_rule   kriyA-subject   "?kriyA"        "?sub   ")"crlf)
        (assert (sub_for_kriyA ?kriyA))
 )
 ;Added by Shirisha Manju
 ; The boy has a computer . The train left on time .

 (defrule kriyA_sub_rule1
 (declare (salience 200))
 (root-verbchunk-tam-parser_chunkids $?ids ?kri)
 (rel_name-sids xcomp ?kriyA ?kri)
 (rel_name-sids nsubj|nsubjpass ?kriyA ?sub)
 (not (sub_for_kriyA ?kri))
  =>
        (printout       ?*fp*   "(using-parser-ids     kriyA-subject    "?kri"        "?sub   ")"crlf)
        (printout       ?*dbug* "(Rule-Rel-ids  kriyA_subject_rule1   kriyA-subject   "?kri"        "?sub   ")"crlf)
        (assert (sub_for_kriyA ?kri))
 )
 ;Added by Shirisha Manju
 ;Ex : Broken windows need to be replaced .

 (defrule nsubj_conj
 (rel_name-sids nsubj|nsubjpass ?kriyA ?sub) 
 (rel_name-sids conj  ?kriyA ?kriyA1)
 (not (rel_name-sids nsubj ?kriyA1 ?))
 =>
	(printout       ?*fp*   "(using-parser-ids     kriyA-subject    "?kriyA1"        "?sub   ")"crlf)
	(printout       ?*dbug* "(Rule-Rel-ids  nsubj   nsubj_conj   "?kriyA1"        "?sub   ")"crlf)
 )
 ; Added by Mahalaxmi.
 ; Ex. He may drink milk or eat apples .

(defrule nsubj_conj1
(or (rel_name-sids nsubj ?kriyA ?sub) (rel_name-sids nsubjpass ?kriyA ?sub))
(rel_name-sids conj  ?sub ?sub1)
=>
(printout       ?*fp*   "(using-parser-ids     kriyA-subject    "?kriyA"        "?sub1   ")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  nsubj   nsubj_conj1   "?kriyA"        "?sub1   ")"crlf)
)

 ; Added by Mahalaxmi.
 ; Ex. Rama and Shyam are coming . He and I are friends .
 

(defrule nsubjpass/csubjpass
(declare(salience 200))
(rel_name-sids nsubjpass|csubjpass ?kriyA ?sub)
?f0<-(rel_name-sids agent ?kriyA ?by_sub)
=>
(retract ?f0)
(printout	?*fp*	"(using-parser-ids     kriyA-by_saMbanXI	"?kriyA"	"?by_sub	")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	nsubjpass	kriyA-by_saMbanXI	"?kriyA"	"?by_sub	")"crlf)	
(printout	?*fp*	"(using-parser-ids     kriyA-subject	"?kriyA"	"?sub	")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	nsubjpass/csubjpass	kriyA-subject	"?kriyA"	"?sub	")"crlf)	

)
 ; Ex. Dole was defeated by Clinton. That she lied was suspected by everyone . 
 ; Modified by Shirisha Manju --  kriyA-by_sambanXa   as  kriyA-by_saMbanXI

(defrule nsubjpass/csubjpass+nn
(rel_name-sids nsubjpass|csubjpass ?kriyA ?sub)
(rel_name-sids nn  ?sub ?x)
=>
(printout       ?*fp*   "(using-parser-ids     kriyA-subject   "?kriyA"        "?sub   ")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  nsubjpass/csubjpass+nn     kriyA-subject   "?kriyA"        "?sub   ")"crlf)

)
 ; Ex. The income tax proposal was rejected.


(defrule nn
(rel_name-sids nn  ?n1 ?n2)
=>
(printout       ?*fp*   "(using-parser-ids     samAsa   "?n1"        "?n2   ")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  nn     samAsa   "?n1"        "?n2   ")"crlf)

)
 ; Ex. The income tax proposal was rejected.

(defrule ccomp
(declare(salience 200))
(rel_name-sids ccomp ?kriyA ?vAkyakarma)
(not (rel_name-sids advmod ?vAkyakarma ?)) ;--->Added by Mahalaxmi.
(not (rel_name-sids aux ?vAkyakarma ?)) ;--->Added by Mahalaxmi.
(not (rel_name-sids nsubj ?vAkyakarma ?)) ;--->Added by Mahalaxmi.
=>
(printout       ?*fp*   "(using-parser-ids     kriyA-vAkyakarma       "?kriyA"        "?vAkyakarma        ")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  ccomp	kriyA-vAkyakarma       "?kriyA"        "?vAkyakarma        ")"crlf)
)
 ; Ex.  He says that you like to swim .

(defrule acomp+nsubj
(rel_name-sids nsubj ?kriyA ?sub)
(rel_name-sids acomp ?kriyA ?samAnAXikaraNa)
=>
(printout	?*fp*	"(using-parser-ids     subject-subject_samAnAXikaraNa	"?sub"	"?samAnAXikaraNa	")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	acomp+nsubj	subject-subject_samAnAXikaraNa	"?sub"	"?samAnAXikaraNa	")"crlf)	
)
 ; Ex. She looks beautiful. 


(defrule attr+nsubj
(rel_name-sids nsubj ?kriyA ?sub)
(rel_name-sids attr ?kriyA ?samAnAXikaraNa)
=>
(printout	?*fp*	"(using-parser-ids     subject-subject_samAnAXikaraNa	"?sub"	"?samAnAXikaraNa	")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	attr+nsubj	subject-subject_samAnAXikaraNa	"?sub"	"?samAnAXikaraNa	")"crlf)	
)
 ; Ex. What is that?



(defrule cop+nsubj
(declare(salience 100))
(rel_name-sids nsubj|nsubjpass ?samAnAXikaraNa  ?sub)
(rel_name-sids cop  ?samAnAXikaraNa ?kriyA)
;(s_id-word ?sub ?wrd&~It&~it) ;Added by Shirisha Manju Ex: It is likely they will come .
; (not (sub_id_decided ?sub))
=>
(printout       ?*fp*   "(using-parser-ids     kriyA-subject    "?kriyA"        "?sub   ")"crlf)
(printout      ?*dbug* "(Rule-Rel-ids  cop+nsubj       kriyA-subject   "?kriyA"        "?sub   ")"crlf)

(printout	?*fp*	"(using-parser-ids     subject-subject_samAnAXikaraNa	"?sub"	"?samAnAXikaraNa	")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	cop+nsubj	subject-subject_samAnAXikaraNa	"?sub"	"?samAnAXikaraNa	")"crlf)	

)
 ; Ex. Bill is big.


 (defrule cop+nsubj_for_it
 (declare(salience 101))
 (rel_name-sids nsubj|nsubjpass ?samAnAXikaraNa  ?sub)
 (rel_name-sids cop  ?samAnAXikaraNa ?kriyA)
 ?f0<-(s_id-word ?sub It|it)
 (not (rel_name-sids infmod ?samAnAXikaraNa ?))
 =>
	(retract ?f0)
	(printout      ?*fp*   "(using-parser-ids     kriyA-dummy_subject    "?kriyA"        "?sub   ")"crlf)
	(printout      ?*dbug* "(Rule-Rel-ids  cop+nsubj_for_it       kriyA-dummy_subject   "?kriyA"        "?sub   ")"crlf)
	(printout      ?*fp*   "(using-parser-ids     subject-subject_samAnAXikaraNa   "?sub"  "?samAnAXikaraNa     ")"crlf)
        (printout      ?*dbug* "(Rule-Rel-ids  cop+nsubj_for_it     subject-subject_samAnAXikaraNa  "?sub"  "?samAnAXikaraNa  ")"crlf)
        (assert (sub_id_decided ?sub))
 )
 ;Added by Shirisha Manju
 ;It is likely they will come .


(defrule cop+nsubj_1
(declare(salience 200))
 ?f1<-(rel_name-sids nsubj ?samAnAXikaraNa  ?sub)
?f2<- (rel_name-sids cop  ?samAnAXikaraNa ?kriyA)
 ?f0<-(rel_name-sids conj_and ?samAnAXikaraNa ?samAnAXikaraNa_1)
=>
(retract ?f0 ?f1 )
(printout	?*fp*	"(using-parser-ids     subject-subject_samAnAXikaraNa	"?sub"	"?samAnAXikaraNa	")"crlf)
(printout	?*dbug*	"(Rule-Rel-ids	cop+nsubj_1	subject-subject_samAnAXikaraNa	"?sub"	"?samAnAXikaraNa	")"crlf)

(printout       ?*fp*   "(using-parser-ids     subject-subject_samAnAXikaraNa  "?sub"  "?samAnAXikaraNa_1       ")"crlf)    
(printout       ?*dbug* "(Rule-Rel-ids  cop+nsubj_1     subject-subject_samAnAXikaraNa  "?sub"  "?samAnAXikaraNa_1      ")"crlf)

;(printout	?*fp*	"(using-parser-ids     kriyA-subject	"?kriyA"	"?sub	")"crlf)	
;(printout	?*dbug*	"(Rule-Rel-ids	cop+nsubj_1	kriyA-subject	"?kriyA"	"?sub	")"crlf)	
)


(defrule dobj
(rel_name-sids dobj ?kriyA ?obj)
(not  (s_id-word ?obj some))
=>
(printout	?*fp*	"(using-parser-ids     kriyA-object	"?kriyA"	"?obj	")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	dobj	kriyA-object	"?kriyA"	"?obj	")"crlf)	
)
 ; Ex. Clinto defeated Dole.  
 ; Modified by Manju (23-11-09) -- added not condition Ex: I know some of the people .

 
(defrule dobj+iobj
(declare(salience 100))
 ?f0<-(rel_name-sids dobj ?kriyA ?obj)
(rel_name-sids iobj ?kriyA ?obj_2)
=>
(retract ?f0)
(printout	?*fp*	"(using-parser-ids     kriyA-object_2	"?kriyA"	"?obj	")"crlf)	
(printout	?*fp*	"(using-parser-ids     kriyA-object_1	"?kriyA"	"?obj_2	")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	dobj+iobj	kriyA-object_2	"?kriyA"	"?obj	")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	dobj+iobj	kriyA-object_1	"?kriyA"	"?obj_2	")"crlf)	
)
 ;Ex. She gave me a raise.

(defrule neg_1
(rel_name-sids neg ?kriyA ?not)
(not (rel_name-sids cop ?kriyA ?)) ;Added by Shirisha Manju Ex: It is not a good manner to eat alone .
=>
(printout	?*fp*	"(using-parser-ids     kriyA-kriyA_niReXaka	"?kriyA"	"?not	")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	neg_1	kriyA-kriyA_niReXaka	"?kriyA"	"?not	")"crlf)	
)
 ; Ex. Bill does not drive.

 (defrule neg_cop
 (rel_name-sids cop ?v ?kriyA)
 (rel_name-sids neg ?v ?not)
 =>
 	(printout       ?*fp*   "(using-parser-ids     kriyA-kriyA_niReXaka     "?kriyA"        "?not   ")"crlf)
	(printout       ?*dbug* "(Rule-Rel-ids  neg_cop   kriyA-kriyA_niReXaka    "?kriyA"        "?not   ")"crlf)
 )
 ;Added by Shirisha Manju
 ; Ex: It is not a good manner to eat alone .

(defrule poss
(rel_name-sids poss ?RaRTI_viSeRya ?RaRTI_viSeRaNa)
=>
(printout	?*fp*	"(using-parser-ids     viSeRya-RaRTI_viSeRaNa	"?RaRTI_viSeRya"	"?RaRTI_viSeRaNa	")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	poss	viSeRya-RaRTI_viSeRaNa	"?RaRTI_viSeRya"	"?RaRTI_viSeRaNa	")"crlf)	
)
 ; Ex.  He is John's cousin. Sam is my brother.


(defrule prt
(rel_name-sids prt ?kriyA ?upasarga)
=>
(printout	?*fp*	"(using-parser-ids     kriyA-upasarga	"?kriyA"	"?upasarga	")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	prt	kriyA-upasarga	"?kriyA"	"?upasarga	")"crlf)	
)
 ; Ex. They shut down the station.


(defrule purpcl
(rel_name-sids  purpcl ?kriyA ?kriyArWa_kriyA)
=>
(printout	?*fp*	"(using-parser-ids     kriyA-kriyArWa_kriyA	"?kriyA"	"?kriyArWa_kriyA	")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	purpcl	kriyA-kriyArWa_kriyA	"?kriyA"	"?kriyArWa_kriyA	")"crlf)	
)
 ; Ex. He talked to him in order to secure the account.


(defrule advcl
(rel_name-sids  advcl ?kriyA ?samakAlika_kriyA)
=>
(printout	?*fp*	"(using-parser-ids     kriyA-samakAlika_kriyA	"?kriyA"	"?samakAlika_kriyA	")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	advcl	kriyA-samakAlika_kriyA	"?kriyA"	"?samakAlika_kriyA	")"crlf)	
)
 ; Ex. The accident happened as the night was falling. 


(defrule advmod
(rel_name-sids nsubj|nsubjpass ?kriyA ?sub)
(rel_name-sids advmod ?kriyA ?kriyA_viSeRaNa)
(not (rel_name-sids ccomp|xcomp ? ?kriyA))
=>
(printout	?*fp*	"(using-parser-ids     kriyA-kriyA_viSeRaNa	"?kriyA"	"?kriyA_viSeRaNa	")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	advmod	kriyA-kriyA_viSeRaNa	"?kriyA"	"?kriyA_viSeRaNa	")"crlf)	
)
 ; Ex. I like genetically modified food.

(defrule advmod_acomp
(rel_name-sids advmod ?kriyA ?kriyA_viSeRaNa)
(rel_name-sids acomp ? ?kriyA)
=>
(printout       ?*fp*   "(using-parser-ids     kriyA-kriyA_viSeRaNa     "?kriyA"        "?kriyA_viSeRaNa        ")"crlf)      
(printout       ?*dbug* "(Rule-Rel-ids  advmod_acomp  kriyA-kriyA_viSeRaNa    "?kriyA"        "?kriyA_viSeRaNa        ")"crlf)      
)
 ; Ex : I guess you are working very hard .
 ; Added by Shirisha Manju

(defrule advmod1
(rel_name-sids advmod ?kriyA_viSeRaNa  ?kriyA_viSeRaNa_viSeRaka)
(rel_name-sids advmod ?kriyA ?kriyA_viSeRaNa)
(not (rel_name-sids prt ?kriyA ?))
=>
(printout       ?*fp*   "(using-parser-ids     kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka     "?kriyA_viSeRaNa"        "?kriyA_viSeRaNa_viSeRaka        ")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  advmod1  kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka    "?kriyA_viSeRaNa"        "?kriyA_viSeRaNa_viSeRaka        ")"crlf)
)
 ;Ex. She works very carefully.

(defrule advmod2
(rel_name-sids advmod ?kriyA ?lupwa_prep_saMbanXI)
(rel_name-sids ccomp|xcomp|pcomp ? ?kriyA);Modified by Manju (added pcomp in list Ex:By going there you can earn more money.)
(not (s_id-word ?kriyA many))
=>
(printout       ?*fp*   "(using-parser-ids     kriyA-lupwa_prep_saMbanXI     "?kriyA"        "?lupwa_prep_saMbanXI        ")"crlf)      
(printout       ?*dbug* "(Rule-Rel-ids  advmod2  kriyA-lupwa_prep_saMbanXI    "?kriyA"        "?lupwa_prep_saMbanXI        ")"crlf)      
)
 ; Ex. I want to go there . 
 ; Added by Mahalaxmi.

 (defrule advmod3
 (rel_name-sids advmod ?kriyA ?id)
 (s_id-word ?kriyA many)
 =>
 	(printout       ?*fp*   "(using-parser-ids	kiwane	"?id"	"?kriyA"	)" crlf)
	(printout       ?*dbug* "(Rule-Rel-ids  advmod3   kiwane  "?id"   "?kriyA"        )" crlf)
 )
 ; Added by Shirisha Manju
 ; Ex :How many people died ?

 (defrule advmod4
 (rel_name-sids amod ?v ?vn)
 (rel_name-sids advmod ?vn ?vk)
 =>
        (printout       ?*fp*   "(using-parser-ids      viSeRaNa-viSeRaka  "?vn"   "?vk"        )" crlf)
        (printout       ?*dbug* "(Rule-Rel-ids  advmod4   viSeRaNa-viSeRaka  "?vn"   "?vk"        )" crlf)
 )
 ;We have very different ideas about disciplining children . 
 ; Added by Shirisha Manju



(defrule det/predet
(or(rel_name-sids det ?viSeRya ?det_viSeRaNa)(rel_name-sids predet ?viSeRya ?det_viSeRaNa))
=>
(printout	?*fp*	"(using-parser-ids     viSeRya-det_viSeRaNa	"?viSeRya"	"?det_viSeRaNa	")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	det/predet	viSeRya-det_viSeRaNa	"?viSeRya"	"?det_viSeRaNa	")"crlf)	
)
 ; Ex. The baby is cute. 


(defrule amod
(rel_name-sids amod ?viSeRya ?viSeRaNa)
=>
(printout	?*fp*	"(using-parser-ids     viSeRya-viSeRaNa	"?viSeRya"	"?viSeRaNa	")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	amod	viSeRya-viSeRaNa	"?viSeRya"	"?viSeRaNa	")"crlf)	
)
 ; Ex. Sam eats red meat.

(defrule amod+dep
(rel_name-sids amod ?viSeRya ?k)
(rel_name-sids dep ?k ?viSeRaNa)
=>
(printout       ?*fp*   "(using-parser-ids     viSeRya-viSeRaNa "?viSeRya"      "?viSeRaNa      ")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  amod    viSeRya-viSeRaNa        "?viSeRya"      "?viSeRaNa      ")"crlf)
)
 ; Ex.A big , black , ugly dog chased me . 
 ; Added by Mahalaxmi(23-11-10).


(defrule partmod
(rel_name-sids partmod ?viSeRya ?kqxanwa_viSeRaNa)
=>
(printout	?*fp*	"(using-parser-ids     viSeRya-kqxanwa_viSeRaNa	"?viSeRya"	"?kqxanwa_viSeRaNa	")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	partmod	viSeRya-kqxanwa_viSeRaNa	"?viSeRya"	"?kqxanwa_viSeRaNa	")"crlf)	
)
 ; Ex. He talked to him in order to secure the account.

(defrule mark
(rel_name-sids mark ?kriyA ?conj)
(rel_name-sids nsubj ?kriyA ?x)
=>
(printout       ?*fp*   "(using-parser-ids     subject-conjunction        "?x"      "?conj      ")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids	mark    subject-conjunction        "?x"      "?conj      ")"crlf)
)
 ; Ex. The accident happened as the night was falling .


(defrule complm 
(rel_name-sids complm ?kriyA ?conj)
(rel_name-sids nsubj ?kriyA ?x)
(not (rel_name-sids cop ?kriyA ?)); Ex: He commented that the two essays were rather similar .
=>
(printout       ?*fp*   "(using-parser-ids     subject-conjunction        "?x"      "?conj      ")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  complm    subject-conjunction        "?x"      "?conj      ")"crlf)
)
 ; Ex. He says that you like to swim . 


(defrule partmod+nsubj+cop
(declare(salience 205))
(rel_name-sids partmod ?sub ?kqxanwa_viSeRaNa)
(rel_name-sids nsubj ?sub_samA ?sub)
?f0<-(rel_name-sids cop ?sub_samA ?kriyA)
=>
(retract ?f0)
(printout	?*fp*	"(using-parser-ids     subject-subject_samAnAXikaraNa	"?sub"	"?sub_samA	")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	partmod+nsubj+cop	subject-subject_samAnAXikaraNa	"?sub"	"?sub_samA")"crlf)	
(printout	?*fp*	"(using-parser-ids     kriyA-subject	"?kriyA"	"?sub	")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	partmod+nsubj+cop	kriyA-subject	"?kriyA"	"?sub")"crlf)	
)
 ; Ex. Truffles picked during the spring are tasty .  


(defrule amod
(rel_name-sids amod ?viSeRya ?viSeRaNa)
=>
(printout	?*fp*	"(using-parser-ids     viSeRya-viSeRaNa	"?viSeRya"	"?viSeRaNa	")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	amod	viSeRya-viSeRaNa	"?viSeRya"	"?viSeRaNa	")"crlf)	
)
 ; Ex. Sam eats red meat.


(defrule neg
(declare(salience 1000))
(rel_name-sids neg ?kriyA ?not)
=>
(printout	?*fp*	"(using-parser-ids     niReXawmaka_vAkya)"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	neg	niReXawmaka_vAkya)"crlf)	
)
 ; Ex. Bill does not drive.


 ; Ex. John is more intelligent than Tom. This test is more difficult than other tests I have taken.


 (defrule prep_then
 (rel_name-sids prep  ?m-up ?t-up)
 ?f0<-(s_id-word ?t-up than)
 =>
  (retract ?f0)	
  (printout	?*fp*	"(using-parser-ids     more_upameya-than_upamAna	"	?m-up"	"?t-up")"crlf)	
  (printout	?*dbug*	"(Rule-Rel-ids	prep_then	more_upameya-than_upamAna	"	?m-up"	"?t-up")"crlf)	
 )
 ; Ex. 
 
 (defrule prep+nsubj+pobj
 (declare(salience 1001))
 (rel_name-sids nsubj  ?m-up ?sub)
 (rel_name-sids prep  ?m-up ?than)
 (rel_name-sids pobj  ?than ?t-up)
 ?f0<-(s_id-word ?t-up than)
 =>
  (retract ?f0)
  (printout     ?*fp*   "(using-parser-ids     more_upameya-than_upamAna        "       ?sub"   "?t-up")"crlf)  
  (printout     ?*dbug* "(Rule-Rel-ids  prep+nsubj+pobj more_upameya-than_upamAna       "       ?sub"   "?t-up")"crlf)  
 )
 ;Added by Shirisha Manju
 ;Ex: John is more intelligent than Tom.

 (defrule prep+than+pobj
 (declare(salience 1000))
 (rel_name-sids prep  ?m-up ?than)
 (rel_name-sids pobj  ?than ?t-up)
 ?f0<-(s_id-word ?than than)
 =>
  (retract ?f0)
  (printout     ?*fp*   "(using-parser-ids     more_upameya-than_upamAna        "       ?m-up"  "?t-up")"crlf)
  (printout     ?*dbug* "(Rule-Rel-ids  prep+than+pobj       more_upameya-than_upamAna       "       ?m-up"  "?t-up")"crlf)
 )
 ; Ex.My talk at the university was more appreciated by the students than the faculty .Added by Mahalaxmi (18-12-09)


 (defrule prep_then+nsubj
 (declare(salience 1000))
 (rel_name-sids nsubj  ?m-up ?sub)
 (rel_name-sids prep  ?m-up ?t-up)
  ?f0<-(s_id-word ?t-up than)
 =>
  (retract ?f0)
  (printout	?*fp*	"(using-parser-ids     more_upameya-than_upamAna	"	?sub"	"?t-up")"crlf)	
  (printout	?*dbug*	"(Rule-Rel-ids	prep_then+nsubj	more_upameya-than_upamAna	"	?sub"	"?t-up")"crlf)	
 )
 ; Ex. I am older than my brother. John is more intelligent than Tom. This test is more difficult than other tests I have taken.


(defrule prep_p
 (declare (salience 100))
 ?f<-(rel_name-sids  nsubj|nsubjpass|aux|auxpass ?kriyA ?);Added aux|auxpass in the list by Shirisha Manju
 ?f0<-(rel_name-sids prep ?kriyA ?prep)
 ?f1<-(rel_name-sids pobj ?prep ?prep_saM)
 (s_id-word ?prep ?prp&~than);Modified by Shirisha Manju (added not of than)
=>
(printout      ?*fp*   "(using-parser-ids     kriyA-"(lowcase ?prp)"_saMbanXI        "       ?kriyA" "?prep_saM")"crlf)      
(printout      ?*dbug* "(Rule-Rel-ids   prep_p  kriyA-"?prp"_saMbanXI        "       ?kriyA" "?prep_saM")"crlf)   
)
 ; Ex It is not a good idea to drive for hours without a rest .

 (defrule prep_pobj_dobj
 (declare (salience 150))
 (rel_name-sids  nsubj|nsubjpass ?kriyA ?subj)
 (rel_name-sids  dobj  ?kriyA ?prep)
 (rel_name-sids  prep ?prep ?prep1)
 (rel_name-sids pobj ?prep1 ?prep_saM)
 (s_id-word ?prep1 ?prp)
 =>
 (printout      ?*fp*   "(using-parser-ids     kriyA-"(lowcase ?prp)"_saMbanXI        "       ?kriyA" "?prep_saM")"crlf)
 (printout      ?*dbug* "(Rule-Rel-ids   prep_pobj_dobj  kriyA-"?prp"_saMbanXI        "       ?kriyA" "?prep_saM")"crlf)
 )
 ;Added by Shirisha Manju
 ;Ex :We picked out some beautiful flowers for her . 

 (defrule prep_p1
 (declare (salience 100))
 ?f<-(rel_name-sids  nsubj|nsubjpass ?kriyA ?subj)
 ?f0<-(rel_name-sids prep ?subj ?prep)
 ?f1<-(rel_name-sids pobj ?prep ?prep_saM)
 (s_id-word ?prep ?prp)
 =>
 (printout      ?*fp*   "(using-parser-ids     kriyA-"(lowcase ?prp)"_saMbanXI        "       ?kriyA" "?prep_saM")"crlf)
 (printout      ?*dbug* "(Rule-Rel-ids   prep_p1  kriyA-"?prp"_saMbanXI        "       ?kriyA" "?prep_saM")"crlf)
 )

 ; Ex : The game of life is played for winning . 
 ; Added by Mahalaxmi.


 (defrule prep_p2
 ?f0<-(rel_name-sids prep ?subj ?prep)
 ?f1<-(rel_name-sids pobj ?prep ?prep_saM)
 (not(rel_name-sids  nsubj|nsubjpass ?subj ?))
 (not (rel_name-sids dobj ? ?prep)) ;Added by Shirisha Manju Ex: We picked out some beautiful flowers for her .
 (s_id-word ?prep ?prp&~near&~through) ;  Added by Shirisha Manju Ex: There was a forest near the village . It struggled to force its body through that little hole .
 =>
 (printout      ?*fp*   "(using-parser-ids     viSeRya-"(lowcase ?prp)"_saMbanXI        "       ?subj" "?prep_saM")"crlf)
 (printout      ?*dbug* "(Rule-Rel-ids   prep_p2 viSeRya-"?prp"_saMbanXI        "       ?subj" "?prep_saM")"crlf)
 )

 (defrule prep_p3
 (declare (salience 100))
 (rel_name-sids nsubjpass|nsubj ?kriyA ?) ;Added by Shirisha Manju Ex: He made a mistake in inviting John .
 ?f0<-(rel_name-sids prep ?kriyA ?prep)
 ?f1<-(rel_name-sids pcomp ?prep ?prep_saM)
 (s_id-word ?prep ?prp)
 =>
 (printout      ?*fp*   "(using-parser-ids     kriyA-"(lowcase ?prp)"_saMbanXI        "       ?kriyA" "?prep_saM")"crlf)
 (printout      ?*dbug* "(Rule-Rel-ids   prep_p3  kriyA-"?prp"_saMbanXI        "       ?kriyA" "?prep_saM")"crlf)
 )

 ; Ex : The game of life is played for winning . 
 ; Added by Mahalaxmi.

 (defrule prep_p4
 (declare (salience 100))
 ?f0<-(rel_name-sids prep ?kriyA ?prep)
 ?f1<-(rel_name-sids pcomp ?prep ?prep_saM)
 (s_id-word ?prep ?prp)
 (not (rel_name-sids nsubjpass|nsubj ?kriyA ?))
 =>
 (printout      ?*fp*   "(using-parser-ids     viSeRya-"(lowcase ?prp)"_saMbanXI        "       ?kriyA" "?prep_saM")"crlf)
 (printout      ?*dbug* "(Rule-Rel-ids   prep_p4  viSeRya-"?prp"_saMbanXI        "       ?kriyA" "?prep_saM")"crlf)
 )
 ; Ex : He was awakened at dawn by the sound of crying .
 ; Added by Shirisha Manju


(defrule prepc_p
 ?f0<-(rel_name-sids ?prep ?kriyA ?prep_saM)
(test (eq (sub-string 1 (- (str-index "_" ?prep) 1) ?prep) "prepc"));this condition is to stop this rule firing in "conj_and" cases, ex. "Rama , Mohan , Sita and Geeta came to the city."
=>
(retract ?f0)
(if(neq(str-index "_" ?prep) FALSE) then
       (bind ?index(str-index "_"  ?prep))
(printout       ?*fp*   "(using-parser-ids     kriyA-"(sub-string      (+      ?index  1)      20      ?prep)"_saMbanXI        "       ?kriyA" "?prep_saM")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids   prepc_p  kriyA-"(sub-string      (+      ?index  1)      20      ?prep)"_saMbanXI        "       ?kriyA" "?prep_saM")"crlf)
)
)
 ; Ex. Forces engaged in fighting after insurgents attacked .


(defrule rel
(rel_name-sids rel ?kriyA ?obj)
=>
(printout	?*fp*	"(using-parser-ids     kriyA-object	"	?kriyA"	"?obj")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	rel	kriyA-object	"	?kriyA"	"?obj")"crlf)	
)
 ; Ex. I saw the man who you love. I saw the man whose wife you love.


(defrule rel+nsubj
(rel_name-sids rel ?kri ?wh)
(rel_name-sids nsubj ?mu_kri ?sub)
(rel_name-sids rcmod ?x ?kri)
=>
(printout       ?*fp*   "(using-parser-ids     muKya_vAkya-sApekRa_upavAkya  "       ?mu_kri" "?kri")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  rel+nsubj	muKya_vAkya-sApekRa_upavAkya  "       ?mu_kri" "?kri")"crlf)
)
 ; Ex. I saw the man who you love. I saw the man whose wife you love.


(defrule rel+nsubj+wh
(rel_name-sids rel ?kri ?wh)
(rel_name-sids nsubj ?kri ?sub)
(rel_name-sids rcmod ?x ?kri)
(s_id-word ?wh who|which|when|whom)
=>
(printout       ?*fp*   "(using-parser-ids     viSeRya-jo_samAnAXikaraNa   "       ?sub" "?wh")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  rel+nsubj+wh       viSeRya-jo_samAnAXikaraNa   "       ?sub" "?wh")"crlf)
)
 ; Ex. I saw the man who you love. I saw the man whose wife you love.


(defrule csubj
(rel_name-sids csubj ?kriyA ?obj)
=>
(printout	?*fp*	"(using-parser-ids     kriyA-vAkyakarma	"	?obj"	"?kriyA")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	csubj	kriyA-vAkyakarma	"	?obj"	"?kriyA")"crlf)	
)
 ; Ex. What she said makes sense. What she said is not true.

(defrule csubjpass
(rel_name-sids csubjpass ?kriyA ?obj)
=>
(printout	?*fp*	"(using-parser-ids     kriyA-vAkyakarma	"	?obj"	"?kriyA")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	csubjpass	kriyA-vAkyakarma	"	?obj"	"?kriyA")"crlf)	
)
 ; Ex. That she lied was suspected by everyone.

(defrule dep
(rel_name-sids dep ?governor ?dependent)
(not (rel_name-sids amod ? ?governor))
=>
(printout	?*fp*	"(using-parser-ids     viSeRya-viSeRaNa	"	?governor"	"?dependent")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	dep	viSeRya-viSeRaNa	"	?governor"	"?dependent")"crlf)	
)
 ; Ex.  


(defrule num
(rel_name-sids num ?vi ?sa-vi)
=>
(printout	?*fp*	"(using-parser-ids     viSeRya-saMKyA_viSeRaNa	"	?vi"	"?sa-vi")"crlf)	
(printout	?*dbug*	"(Rule-Rel-ids	num	viSeRya-saMKyA_viSeRaNa	"	?vi"	"?sa-vi")"crlf)	
)
 ; Ex. He eats 3 sheep. 


(defrule measure
(rel_name-sids measure ?vi ?vi_n)
=>
(printout       ?*fp*   "(using-parser-ids     viSeRya-viSeRaNa "       ?vi"    "?vi_n")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids	measure	viSeRya-viSeRaNa "       ?vi"    "?vi_n")"crlf)
)
 ; Ex. The director is 65 years old .  


(defrule aux_to
(rel_name-sids aux  ?v ?to)
(s_id-word ?to to)
;(test (eq (- (string_to_integer (sub-string 1 (- (length ?v) 2) ?v)) 1) (string_to_integer (sub-string 1 (- (length ?to) 2) ?to))))
;(s_id-word =(- ?v 1) to) I want to give this condition for the sentences like: "He was to become president." where i can stop firing this rule between 'to' and 'president'. 
(not (rel_name-sids cop ?v ?))
=>
(printout       ?*fp*   "(using-parser-ids     to-infinitive       "       ?to"    "?v")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  aux_to	to-infinitive       "       ?to"    "?v")"crlf)
)
 ; Ex. I want to go. Dick is important to fix the problem.

 (defrule aux_cop
 (rel_name-sids aux ?id ?to)
 (rel_name-sids cop ?id ?inf)
 (s_id-word ?to to)
 =>
	(printout       ?*fp*   "(using-parser-ids     to-infinitive       "       ?to"    "?inf")"crlf)
	(printout       ?*dbug* "(Rule-Rel-ids  aux_cop  to-infinitive       "       ?to"    "?inf")"crlf)
 )
 ;Ex: They seem to resemble each other .
 ;Added by Shirisha Manju
 
(defrule xcomp
(rel_name-sids xcomp  ?kri ?kq_vi)
(not (rel_name-sids cop ?kq_vi ?)) ;Added by Shirisha Manju 
=>
(printout       ?*fp*   "(using-parser-ids     kriyA-kqxanwa_viSeRaNa	"	?kri"    "?kq_vi")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  xcomp	kriyA-kqxanwa_viSeRaNa	"	?kri"	"?kq_vi")"crlf)
)
 ; Ex. I want to go. Dick is important to fix the problem.
 ;It struggled to force its body through that little hole . 

 (defrule xcomp+cop
 (rel_name-sids xcomp ?kri ?id)
 (rel_name-sids cop ?id ?kq_vi)
 =>
 	(printout	?*fp*   "(using-parser-ids     kriyA-kqxanwa_viSeRaNa   "       ?kri"    "?kq_vi")"crlf)
	(printout	?*dbug* "(Rule-Rel-ids  xcomp+cop   kriyA-kqxanwa_viSeRaNa  "       ?kri"   "?kq_vi")"crlf)
	(printout       ?*fp*   "(using-parser-ids     kriyA-object     "?kq_vi"        "?id   ")"crlf)
        (printout       ?*dbug* "(Rule-Rel-ids  xcomp+cop    kriyA-object    "?kq_vi"        "?id   ")"crlf)

 )
 ;Added by Shirisha Manju
 ;Ex : They seem to resemble each other .
 ;Ex : His aim was to become president .

 (defrule xcomp+aux
 (declare (salience 11))
 (rel_name-sids xcomp ?id ?kri)
 (rel_name-sids aux   ?kri ?to)
 (s_id-word ?to to)
 =>
        (printout       ?*fp*   "(using-parser-ids     kriyA-kriyArWa_kriyA   "       ?id"    "?kri")"crlf)
        (printout       ?*dbug* "(Rule-Rel-ids  xcomp+aux   kriyA-kriyArWa_kriyA  "       ?id"   "?kri")"crlf)
 )
 ;Added by Shirisha Manju
 ;I went there to buy a book . It struggled to force its body through that little hole .

(defrule tmod
(rel_name-sids tmod  ?kri ?kAl)
=>
(printout       ?*fp*   "(using-parser-ids     kriyA-kAlavAcI        "       ?kri"    "?kAl")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  tmod	kriyA-kAlavAcI        "       ?kri"    "?kAl")"crlf)
)
 ; Ex.I will go tomorrow.; Last night , I swam in the pool. Though, tmod relation between swam and night is written for this sentence in Stanford Parser's documents but the Parser does not show any such relation in this sentence. 


(defrule quantmod
(rel_name-sids quantmod  ?vi ?vi_ka)
=>
(printout       ?*fp*   "(using-parser-ids     viSeRya-viSeRaka        "       ?vi"    "?vi_ka")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  quantmod   viSeRya-viSeRaka        "       ?vi"    "?vi_ka")"crlf) 
)
 ; Ex. About 200 people came to the party .

(defrule infmod 
(rel_name-sids infmod  ?saMjFA ?kqxanwa)
 =>
(printout       ?*fp*   "(using-parser-ids     saMjFA-kqxanwa        "       ?saMjFA"    "?kqxanwa")"crlf)
(printout       ?*dbug* "(Rule-Rel-ids  quantmod   saMjFA-kqxanwa        "       ?saMjFA"    "?kqxanwa")"crlf)
)
 ; Ex. But my efforts to win his heart have failed . 
 ;Added by Mahalaxmi.


;rel+nsubj rel+nsubj+wh rules are not working properly. Check them.

