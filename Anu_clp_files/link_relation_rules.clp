 (defglobal ?*fp* = open-file)
 (defglobal ?*rel_debug* = debug_fp)
 (defglobal ?*open-orign* = open-orign)
 (defglobal ?*hmng_fp* = hmng_fp)

  (deffunction string_to_integer (?link_id)
; Removes the first character from the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?link_id)))

 (deffacts dummy_facts
 (verb_type-verb-causative_verb-tam)
 (No complete linkages found)
 (link_name-link_expansion)
 (link_name-link_lnode-link_rnode)
 (root-verbchunk-tam-parser_chunkids)
 (lwg_root-verbchunk-tam-chunkids)
 (link_id-root)
 )

 (defrule end
 (declare (salience -100))
 =>
 (close ?*fp*)
 (close ?*rel_debug*)
 (close ?*open-orign*)
 (close ?*hmng_fp*)
 )


;KRIYA-SUBJECT RELATION RULES:

(defrule kriyA-subject1
(link_name-link_expansion    ?lname    S ~F $?vars)
(link_name-link_lnode-link_rnode ?lname  ?lnode ?rnode)
(root-verbchunk-tam-parser_chunkids $? ?rnode)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-subject	"?rnode"	"?lnode	")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-subject1	kriyA-subject	"?rnode"	"?lnode	")"crlf)
)

(defrule kriyA-subject2
(declare (salience 100))
(link_name-link_expansion    ?lname    S ~F $?vars)
?f0<-(link_name-link_lnode-link_rnode ?lname  ?lnode ?rnode)
(root-verbchunk-tam-parser_chunkids $? ?rnode $? ?kriyA)
(root-verbchunk-tam-parser_chunkids ? ? $?ch ?kriyA)
(test (member$ ?rnode $?ch))
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-subject	"?kriyA"	"?lnode	")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-subject2	kriyA-subject	"?kriyA"	"?lnode	")"crlf)
)
; to get the  kriyA-subject relation for all the names  in "Rama, Sita and Bharat did it." I've commented the 'retract'vaalaa part in this rule.  date: 12/02/09

(defrule kriyA-subject3
(link_name-link_expansion    ?lname    S F ~I $?vars)
(link_name-link_lnode-link_rnode  ?lname  ?a ?b)
(link_name-link_lnode-link_rnode  Ost|Opt  ?b ?c)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-GNP_agr_subject	"?b"	"?c")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-subject3	kriyA-GNP_agr_subject	"?b"	"?c")"crlf)	

(printout	?*fp*	"(using-parser-ids 	kriyA-dummy_subject	"?b"	"?a")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-subject3	kriyA-dummy_subject	"?b"	"?a")"crlf)
)
;Ex.	There are flowers in the garden. There is a flower in the garden.

(defrule kriyA-subject4
(declare (salience 720))
(link_name-link_expansion    ?lname    S $?vars)
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_lnode-link_rnode Pv ?y ?z)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-subject	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-subject4	kriyA-subject	"?z"	"?x")"crlf)
)
;Ex.	

;(defrule kriyA-subject_and
;(declare (salience 720))
;(link_name-link_expansion    ?S   S $?vars)
;(link_name-link_lnode-link_rnode ?S ?x ?kri)
;(link_name-link_expansion    ?S1  S $?var)
;(link_name-link_lnode-link_rnode ?S1 ?y ?kri)
;(parser_id-root ?and and)
;(test (< ?and (sub-string  2 4 ?y)))
;=>
;(printout       ?*fp*   "(using-parser-ids      kriyA-subject   "?kri"    "?and")"crlf)
;(printout       ?*rel_debug*    "(Rule-Rel-ids  kriyA-subject_and  kriyA-subject   "?kri"    "?and")"crlf)
;)
;Ex. He and I are friends.

(defrule kriyA-subject5
(declare (salience 200))
?f0<- (link_name-link_expansion    ?lname    S F I $?vars)
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_lnode-link_rnode   Ost|Opt  ?x ?z)
=>
(retract ?f0)
(printout	?*fp*	"(using-parser-ids 	kriyA-GNP_agr_subject	"?x"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-subject5	kriyA-GNP_agr_subject	"?x"	"?z")"crlf)	

(printout	?*fp*	"(using-parser-ids 	kriyA-dummy_subject	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-subject5	kriyA-dummy_subject	"?x"	"?y")"crlf)
)
;Ex.	 Is there  a flower in the garden? Are there  flowers in the garde?

(defrule kriyA-subject_SFI
(link_name-link_expansion    ?lname    S F I $?vars)
(link_name-link_lnode-link_rnode ?lname ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-dummy_subject	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-subject_SFI	kriyA-dummy_subject	"?x"	"?y")"crlf)
)
;Ex.   How important is it to turn the computer off? 

(defrule kriyA-subject_SF
(declare (salience 200))
?f0<- (link_name-link_expansion    ?lname    S F ~I $?vars)
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(root-verbchunk-tam-parser_chunkids $? ?y $? ?kriyA)
(link_name-link_lnode-link_rnode Ost|Opt   ?kriyA ?sub)
=>
(retract ?f0)
(printout	?*fp*	"(using-parser-ids 	kriyA-GNP_agr_subject	"?kriyA"	"?sub")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-subject_SF	kriyA-GNP_agr_subject	"?kriyA"	"?sub")"crlf)	
(printout	?*fp*	"(using-parser-ids 	kriyA-dummy_subject	"?kriyA"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-subject_SF	kriyA-dummy_subject	"?kriyA"	"?x")"crlf)
)
;Ex.     There would be a party today

(defrule kriyA-subject_SF_I
(declare (salience 100))
?f0<- (link_name-link_expansion    ?lname    S F ~I $?vars)
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_lnode-link_rnode I ?x ?sub)
(root-verbchunk-tam-parser_chunkids $? ?y $? ?kriyA)
=>
(retract ?f0)
(printout	?*fp*	"(using-parser-ids 	kriyA-subject	"?kriyA"	"?sub")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-subject_SF_I	kriyA-subject	"?kriyA"	"?sub")"crlf)	

(printout	?*fp*	"(using-parser-ids 	kriyA-dummy_subject	"?kriyA"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-subject_SF	kriyA-dummy_subject	"?kriyA"	"?x")"crlf)
)
;Ex.     To pretend that our program is usable in its current form would be silly

(defrule subject_SF_I
(declare (salience 150))
(link_name-link_expansion    ?lname    S F ~I $?vars)
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_lnode-link_rnode I ?x ?sub)
(link_name-link_lnode-link_rnode Ix ?y ?z)
(link_name-link_lnode-link_rnode Paf ?z ?samA)
=>
(printout	?*fp*	"(using-parser-ids 	subject-subject_samAnAXikaraNa	"?sub"	"?samA")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	subject_SF_I	subject-subject_samAnAXikaraNa	"?sub"	"?samA")"crlf)
)
;Ex.     To pretend that our program is usable in its current form would be silly

(defrule subj-samA
(declare (salience 150))
(link_name-link_expansion    ?S    S  $?vars)
(link_name-link_lnode-link_rnode ?S ?x ?y)
(link_name-link_lnode-link_rnode TO ?y ?z)
(link_name-link_lnode-link_rnode I  ?z ?v)
(link_name-link_lnode-link_rnode Paf|Pa ?v ?samA)
=>
(printout	?*fp*	"(using-parser-ids 	subject-subject_samAnAXikaraNa	"?x"	"?samA")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	subj-samA	subject-subject_samAnAXikaraNa	"?x"	"?samA")"crlf)
)
;Ex.  I started to feel afraid of going out alone at night. 

(defrule obj-samA
(declare (salience 150))
(link_name-link_expansion    ?S    S  $?vars)
(link_name-link_lnode-link_rnode ?S ?x ?y)
(link_name-link_lnode-link_rnode TOo ?y ?z)
(link_name-link_expansion    ?O   O $?var)
(link_name-link_lnode-link_rnode ?O ?y ?ob)
(link_name-link_lnode-link_rnode Ix  ?z ?v)
(link_name-link_lnode-link_rnode Paf ?v ?samA)
=>
(printout	?*fp*	"(using-parser-ids 	object-object_samAnAXikaraNa	"?ob"	"?samA")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	obj-samA	object-object_samAnAXikaraNa	"?ob"	"?samA")"crlf)
)
;Ex.    If you want the rules to be effective , you must explicitly state your requirements 

(defrule subject_SFI
(declare (salience 150))
(link_name-link_expansion    ?lname    S F I $?vars)
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_expansion    ?I  I $?v)
(link_name-link_lnode-link_rnode ?I ?x ?kriyA)
;(root-verbchunk-tam-link_chunkids $? ?x $? ?kriyA)[commented by sheetal for sent. - He made a request that there be an investigation .(4-12-09)]
(link_name-link_lnode-link_rnode Ost|Opt  ?kriyA ?sub)
=>
(printout       ?*fp*   "(using-parser-ids        kriyA-GNP_agr_subject   "?kriyA"        "?sub")"crlf)
(printout       ?*rel_debug*    "(Rule-Rel-ids  subject_SFI     kriyA-GNP_agr_subject   "?kriyA"        "?sub")"crlf)
)
;Ex. would there be a party today.   He made a request that there be an investigation.

(defrule kriyA-subject6
(or (link_name-link_expansion    ?lname    S I $?vars)(link_name-link_expansion    ?lname    S X I))
?f0<-(link_name-link_lnode-link_rnode ?lname ?x ?y)
(root-verbchunk-tam-parser_chunkids ? ? $?chunks ?kriyA)
(test (member$ ?x $?chunks))
=>
(retract ?f0)
(printout	?*fp*	"(using-parser-ids 	kriyA-subject	"?kriyA"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-subject6	kriyA-subject	"?kriyA"	"?y")"crlf)
)	
;Ex.	 Did you eat?

(defrule kriyA-subject8
(link_name-link_lnode-link_rnode        S       ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-subject	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-subject8	kriyA-subject	"?y"	"?x")"crlf)
)
;Ex.      HAILSTORMS beat against the windows.
 
(defrule rule24
(declare (salience 200))
?f0<- (link_name-link_lnode-link_rnode ALx ?x ?y)
?f1<- (link_name-link_lnode-link_rnode Jp ?x ?z)
(link_name-link_expansion ?sub S $?var)
?f2<- (link_name-link_lnode-link_rnode ?sub ?x ?s)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids)
(test (member$ ?s $?chunk_ids))
=>
(retract ?f0 ?f1 ?f2) 
(printout	?*fp*	"(using-parser-ids 	viSeRya-det_viSeRaNa	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule24	viSeRya-det_viSeRaNa	"?z"	"?x")"crlf)	

(printout	?*fp*	"(using-parser-ids 	kriyA-subject	"(nth$	(length	$?chunk_ids)	$?chunk_ids)"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule24	kriyA-subject	"(nth$	(length	$?chunk_ids)	$?chunk_ids)"	"?z")"crlf)
)
;Ex.	ALL THE people are here. All our sisters are coming . 

(defrule rule24_1
(declare (salience 250))
(link_name-link_lnode-link_rnode ALx ?x ?y)
(link_name-link_lnode-link_rnode Jp ?x ?z)
(link_name-link_expansion ?O O $?var)
(link_name-link_lnode-link_rnode ?O ?s ?x)
=>
(printout	?*fp*	"(using-parser-ids 	viSeRya-det_viSeRaNa	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule24_1	viSeRya-det_viSeRaNa	"?z"	"?x")"crlf)
)
;Ex.   He left all his money to the orphanage.

(defrule prep-all
(declare (salience 200))
(link_name-link_lnode-link_rnode Pp ?kriyA ?x)
?f1<-(link_name-link_lnode-link_rnode J ?x ?y)
?f0<- (link_name-link_lnode-link_rnode Jp ?y ?head)
(link_name-link_lnode-link_rnode ALx ?a ?b)
(root-verbchunk-tam-parser_chunkids $?c ?kriyA)
(linkid-word-node_cat ?x ?viBakwi ?)
=>
(retract ?f0 ?f1)
(printout	?*fp*	"(using-parser-ids 	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?head")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	prep-all	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?head")"crlf)
)
;Ex.   The shame of the priest is on all our minds. 

(defrule prep-idiom
(declare (salience 400))
(link_name-link_lnode-link_rnode Pp ?kriyA ?x)
(link_name-link_lnode-link_rnode J|Jp|Js ?x ?y)
(linkid-word-node_cat ?x ?viBakwi ?)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	prep-idiom	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?y")"crlf)
)
;Ex.   His bed was next to the room's only window.

(defrule prep_FM
(declare (salience 200))
(link_name-link_lnode-link_rnode MVp ?kriyA ?x)
(link_name-link_lnode-link_rnode FM  ?x ?y)
(link_name-link_expansion    ?J   J  $?vars)
(link_name-link_lnode-link_rnode ?J  ?y ?head)
(linkid-word-node_cat ?y ?viBakwi ?)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?head")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	prep_FM	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?head")"crlf)
)
;Ex.   From in back of the shed , I heard a scream that seemed to come from on top of the garage.

(defrule prep_FM_1
(declare (salience 200))
(link_name-link_expansion    ?CO  C O  $?var)
(link_name-link_lnode-link_rnode ?CO  ?x ?d)
(link_name-link_lnode-link_rnode FM  ?x ?y)
(link_name-link_expansion    ?ID  I D $?vari)
(link_name-link_lnode-link_rnode ?ID  ?viSeRya ?y)
(link_name-link_expansion    ?J   J  $?vars)
(link_name-link_lnode-link_rnode ?J  ?y ?head)
(linkid-word-node_cat ?y ?viBakwi ?)
=>
(printout	?*fp*	"(using-parser-ids 	viSeRya-"?viBakwi"_saMbanXI	"?viSeRya"	"?head")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	prep_FM_1	viSeRya-"?viBakwi"_saMbanXI	"?viSeRya"	"?head")"crlf)
)
;Ex.   From in back of the shed , I heard a scream that seemed to come from on top of the garage.

(defrule prep_FM_2
(declare (salience 200))
(link_name-link_lnode-link_rnode MVp  ?v ?x)
(link_name-link_lnode-link_rnode FM  ?x ?y)
(link_name-link_expansion    ?ID  I D $?vari)
(link_name-link_lnode-link_rnode ?ID  ?viSeRya ?y)
(link_name-link_expansion    ?J   J  $?vars)
(link_name-link_lnode-link_rnode ?J  ?y ?head)
(linkid-word-node_cat ?y ?viBakwi ?)
=>
(printout	?*fp*	"(using-parser-ids 	viSeRya-"?viBakwi"_saMbanXI	"?viSeRya"	"?head")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	prep_FM_2	viSeRya-"?viBakwi"_saMbanXI	"?viSeRya"	"?head")"crlf)
)
;Ex.   From in back of the shed , I heard a scream that seemed to come from on top of the garage.

(defrule subj_MVp
(declare (salience 200))
(link_name-link_lnode-link_rnode MVp  ?v ?s-s)
(not (link_name-link_lnode-link_rnode FM|J|Js|Jp|FL|IN|ON|Mgp  ?s-s ?y)) ;Her family founded the college in 1895. she has no objection in staying overnight
(link_name-link_expansion    ?S  S ~F $?vari) ;ex. 4 this "~F" condition . There is a dog and a cat here .
(link_name-link_lnode-link_rnode ?S  ?s ?v)
=>
(printout	?*fp*	"(using-parser-ids 	subject-subject_samAnAXikaraNa	"?s"	"?s-s")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	subj_MVp	subject-subject_samAnAXikaraNa	"?s"	"?s-s"	)"crlf)
)
;Ex.  The third tree was cut into large pieces and left alone in the dark . 

(defrule det-all
(declare (salience 200))
(link_name-link_lnode-link_rnode Pp ?kriyA ?x)
?f1<-(link_name-link_lnode-link_rnode J ?x ?y)
?f0<- (link_name-link_lnode-link_rnode Jp ?y ?head)
(link_name-link_lnode-link_rnode ALx ?a ?b)
(root-verbchunk-tam-parser_chunkids $?c ?kriyA)
(linkid-word-node_cat ?x ?viBakwi ?)
=>
(retract ?f0 ?f1)
(printout	?*fp*	"(using-parser-ids 	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?head")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	det-all	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?head")"crlf)
)
;Ex.   The shame of the priest is on all our minds. 

(defrule rule82
(link_name-link_lnode-link_rnode SI|SIs|SIp|SIs*b|SIpx|SXI ?z ?y)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-subject	"?z"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule82	kriyA-subject	"?z"	"?y")"crlf)
)
;Ex.	Is Anand  a doctor, Are you a doctor

(defrule rule136
(link_name-link_lnode-link_rnode SFs|SFsi ?x ?y)
(link_name-link_lnode-link_rnode Osi ?y ?z)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-subject	"?y"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule136	kriyA-subject	"?y"	"?z")"crlf)
)
;Ex.	It is likely that Jane will go. 

(defrule rule140
(declare (salience 180))
(link_name-link_expansion    ?lname   S I $?vars)
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_lnode-link_rnode B*w|Bsw|Bpw|Bsm|Bpm|Bpmt ?z ?a)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-subject	"?a"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule140	kriyA-subject	"?a"	"?y")"crlf)
)
;Ex.	Which book do you want? Who did you see yesterday?

(defrule rule177
(declare (salience 710))
(link_name-link_lnode-link_rnode Spx ?i ?j)
(link_name-link_lnode-link_rnode Pv ?k ?l)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-subject	"?l"	"?i")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule177	kriyA-subject	"?l"	"?i")"crlf)
)
;Ex.	These fruits are to be eaten.

(defrule rule178
(declare (salience 715))
(link_name-link_lnode-link_rnode Spxt ?i ?j)
(link_name-link_lnode-link_rnode Jp ?i ?m)
(link_name-link_lnode-link_rnode Pv ?k ?l)
=>
(printout	?*fp*	"(using-parser-ids 	viSeRya-det_viSeRaNa	"?i"	"?m")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule178	viSeRya-det_viSeRaNa	"?i"	"?m")"crlf)
)
;Ex.	All these fruits are to be eaten.

;KRIYA-OBJECT RELATION RULES:

(defrule rule_O_TI
(or (root-verbchunk-tam-parser_chunkids $?c ?kriyA) (link_name-link_lnode-link_rnode If ?to ?kriyA)  (link_name-link_lnode-link_rnode I ?to ?kriyA)) ; ex. 4 'If' condition: "He was to become president." ex. 4 condition 'I' They seem to resemble each other .
(link_name-link_lnode-link_rnode  O|TI  ?kriyA ?y)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-object	"?kriyA"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule_O_TI	kriyA-object	"?kriyA"	"?y")"crlf)
)
;Ex.    A party is taking place so if you would like to show up you should do so. She was named president of the company .


(defrule rule_O_I_for_Let
(root-verbchunk-tam-parser_chunkids $?c ?kriyA) 
(link_name-link_expansion    ?lname    O x)
(link_name-link_lnode-link_rnode  ?lname ?let ?obj)
(link_name-link_lnode-link_rnode  I  ?let  ?kriyyA)
(linkid-word-node_cat ?let let ?)
=>
(printout       ?*fp*   "(using-parser-ids      kriyA-object    "?kriyA"        "?obj")"crlf)
(printout       ?*rel_debug*    "(Rule-Rel-ids  rule_O_I_for_let       kriyA-object    "?kriyA"        "?obj")"crlf)
)
; Added by Shirisha Manju (suggested by Sheetal)
;Ex : Let us go to the market.


(defrule object_0
(link_name-link_lnode-link_rnode MVzo  ?kriyA1 ?ob)
(link_name-link_lnode-link_rnode Bc ?ob  ?kriyA2)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-object	"?kriyA2"	"?ob")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	object_0	kriyA-object	"?kriyA2"	"?ob")"crlf)
)
;Ex.   Take as much time as you like .

(defrule object_1
(link_name-link_lnode-link_rnode BT ?ob ?kriyA)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-object	"?kriyA"	"?ob")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	object_1	kriyA-object	"?kriyA"	"?ob")"crlf)
)
;Ex. How many years did it last? NOTE: second parse for this sentence is correct.

(defrule det_vi
(link_name-link_lnode-link_rnode TQ ?det ?vi)
=>
(printout	?*fp*	"(using-parser-ids 	viSeRya-det_viSeRaNa	"?vi"	"?det")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	det_vi	viSeRya-det_viSeRaNa	"?vi"	"?det")"crlf)
)
;Ex. How many years did it last? NOTE: second parse for this sentence is correct.

(defrule rule2
(and (link_name-link_expansion    ?lname    O ~F $?v)  (link_name-link_expansion    ?lname    O $?vars ~t) (link_name-link_expansion    ?lname    O $?vars ~c));This "~t" condition is to restrict kriyA-object relation between 'is' and 'doctor' in "He is a doctor".
(or (link_name-link_lnode-link_rnode  ?lname  ?x ?y)(link_name-link_lnode-link_rnode  O  ?x ?y))
;(link_name-link_expansion    ?S_link    S ~F $?) ;this condition is to restrict kriyA-object relation in "are cats" type of groups in the sentences like: There are cats in the garden.
;(link_name-link_lnode-link_rnode    ?S_link    ?a ?x)
;(test (neq $?vars F))
(linkid-word-node_cat ?x ~let ?) ;Added by Manju Ex : Let us go to the market
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-object	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule2	kriyA-object	"?x"	"?y")"crlf)
)
;Ex	."The dog CHASED the CAT"."The dog CHASED the CATS". As a mark of respect he TOOK off his HAT.
 ; Ex : Let us go to the market

(defrule kriyA-object_bit
(declare (salience 715))
?f0<- (link_name-link_expansion    ?O    O $?vars )
(link_name-link_lnode-link_rnode  ?O  ?x ?y)
(linkid-word-node_cat ?y  bit|some  ?)
(link_name-link_lnode-link_rnode  Mp  ?y ?prep)
(link_name-link_expansion    ?J    J $?var )
(link_name-link_lnode-link_rnode  ?J  ?prep ?object)
=>
(retract ?f0)
(printout	?*fp*	"(using-parser-ids 	kriyA-object	"?x"	"?object")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-object_bit	kriyA-object	"?x"	"?object")"crlf)
)
;Ex     I ATE a bit of BICUIT. I know some of the people.

(defrule rule13
(declare (salience 2))
(or(link_name-link_expansion    ?lname    B s ~t)(link_name-link_expansion    ?lname    B p ~t)(link_name-link_expansion    ?lname    B * ~t) (link_name-link_expansion    ?lname    B s )(link_name-link_expansion    ?lname    B p) )
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(not (or (link_name-link_lnode-link_rnode Rn ?x ?z) (link_name-link_lnode-link_rnode MVp ?a ?y)  (link_name-link_lnode-link_rnode RS ?b ?y) (link_name-link_lnode-link_rnode R ?x ?c)))
;Ex. The boy who you called yesterday has arrived. Which of your parents do you feel closer to?
(not (got_relation_for_R_link)) ;this condition is to stop this rule in "The boy who you called yesterday has arrived" such sentences
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-object	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule13	kriyA-object	"?y"	"?x")"crlf)
)
;Ex.	WHO did you SEE yesterday?


;This rule is written to show kriyA-object_1 and kriyA-object_2 relations in the sentences that have ditransitive verbs.
;Date 21/02/09

(defrule rule15
(declare (salience 999))
?f0<-(link_name-link_expansion    ?lname    O $?vars n) 
?f1<-(link_name-link_expansion    ?O    O $?var ~n)
(link_name-link_lnode-link_rnode  ?lname  ?x ?y)
(link_name-link_lnode-link_rnode  ?O  ?x ?z)
=>
(retract ?f1 ?f0)
(printout	?*fp*	"(using-parser-ids 	kriyA-object_2	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule15	kriyA-object_2	"?x"	"?y")"crlf)	

(printout	?*fp*	"(using-parser-ids 	kriyA-object_1	"?x"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule15	kriyA-object_1	"?x"	"?z")"crlf)
)
;Ex.	I gave him on Tuesday five  expensive presents, I gave him on Tuesday an  expensive present

(defrule rule30
(link_name-link_lnode-link_rnode BW ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-object	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule30	kriyA-object	"?y"	"?x")"crlf)
)
;Ex.	 "WHAT do you THINK?".

(defrule  kriyA-obj
(declare (salience 200))
?f0<- (link_name-link_lnode-link_rnode ALx ?x ?y)
?f1<- (link_name-link_lnode-link_rnode Jp ?x ?z)
(link_name-link_expansion ?O O $?var)
?f2<- (link_name-link_lnode-link_rnode ?O ?kriyA ?s)
=>
(retract ?f0 ?f1 ?f2)
(printout	?*fp*	"(using-parser-ids 	kriyA-object	"?kriyA"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-obj	kriyA-object	"?kriyA"	"?z")"crlf)
)
;Ex. One may not have all the competence necessary for doing a task.

(defrule rule36
(link_name-link_lnode-link_rnode AM ?a ?b)
(link_name-link_lnode-link_rnode Oy ?c ?b)
(linkid-word-node_cat ?b much ?)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-object	"?c"	"?a","?b")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule36	kriyA-object	"?c"	"?a","?b")"crlf)
)
;Ex.	He earns as much  as was expected. He earns as much.

;I NEED TO DISCUSS RULES 54 & 55 

(defrule rule55
(declare (salience 102))
(link_name-link_lnode-link_rnode TO ?x ?y)
(link_name-link_lnode-link_rnode I ?y ?z)
(link_name-link_lnode-link_rnode Os|Op|Ox ?z ?a)
(link_name-link_lnode-link_rnode Pa ?b ?x)
=>
;(printout	?*fp*	"(using-parser-ids 	kriyA-ne_ke_liye	"?z"	"?y")"crlf)	
;(printout	?*rel_debug*	"(Rule-Rel-ids	rule55	kriyA-ne_ke_liye	"?z"	"?y")"crlf)	

(printout	?*fp*	"(using-parser-ids 	kriyA-object	"?b"	"?a")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule55	kriyA-object	"?x"	"?a")"crlf)	

(printout	?*fp*	"(using-parser-ids 	kriyA_mUla-object	"?b","?x"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule55	kriyA_mUla-object	"?b","?x"	"?z")"crlf)
)
;Ex. I am eager to read it

(defrule rule68
(declare (salience 105))
(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
(link_name-link_lnode-link_rnode  ?lname  ?x ?y)
(link_name-link_lnode-link_rnode Paf ?y ?z)
(link_name-link_lnode-link_rnode B ?z ?a)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-raised_subject	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule68	kriyA-raised_subject	"?y"	"?x")"crlf)	

(printout	?*fp*	"(using-parser-ids 	kriyA-object	"?y"	"?a")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule68	kriyA-object	"?y"	"?a")"crlf)
)
;Ex.	John is easy to  hit. I am easy to  hit
;THIS RULE IS INCOMPLETE 

(defrule rule144
(declare (salience 290))
(link_name-link_lnode-link_rnode R ?a ?b)
(link_name-link_lnode-link_rnode RS ?b ?c)
(link_name-link_lnode-link_rnode Pv ?c ?d)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-subject	"?d"	"?b")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule144	kriyA-subject	"?d"	"?b")"crlf)	

;(printout	?*fp*	"(using-parser-ids 	passive_kriyA-object	"?d"	"?a")"crlf)	
(printout	?*fp*	"(using-parser-ids 	kriyA-object	"?d"	"?a")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule144	kriyA-object	"?d"	"?a")"crlf)
;(printout	?*rel_debug*	"(Rule-Rel-ids	rule144	passive_kriyA-object	"?d"	"?a")"crlf)
)
;Ex.	The dog which was chased by the man died.

(defrule rule144_1
(declare (salience 290))
;(link_name-link_lnode-link_rnode R ?a ?b)
(link_name-link_lnode-link_rnode RS ?b ?c)
;(link_name-link_lnode-link_rnode Pv ?c ?d)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-subject	"?c"	"?b")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule144_1	kriyA-subject	"?c"	"?b")"crlf)
)
;Ex.   God helps those who help themselves.

(defrule obj_kqxanwa_kriyA
(link_name-link_expansion    ?O O $?v)
(link_name-link_lnode-link_rnode ?O ?a ?b)
(link_name-link_lnode-link_rnode Mv ?b ?c)
=>
(printout	?*fp*	"(using-parser-ids 	object-kqxanwa_kriyA	"?b"	"?c")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	obj_kqxanwa_kriyA	object-kqxanwa_kriyA	"?b"	"?c")"crlf)
)
;Ex.   This is a sample sentence given by me. 
;?????? Disciss this.

(defrule kqxanwa_kriyA-prep
(link_name-link_expansion    ?O O $?v)
(link_name-link_lnode-link_rnode ?O ?a ?b)
(link_name-link_lnode-link_rnode Mv ?b ?c)
(link_name-link_lnode-link_rnode MVp ?c ?d)
(link_name-link_expansion    ?J J $?va)
(link_name-link_lnode-link_rnode ?J ?d ?e)
(linkid-word-node_cat ?d ?viBakwi ?)
=>
(printout	?*fp*	"(using-parser-ids 	kqxanwa_kriyA-"?viBakwi"_saMbanXI	"?b"	"?e")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kqxanwa_kriyA-prep	qxanwa_kriyA-"?viBakwi"_saMbanXI	"?b"	"?e")"crlf)
)
;Ex.   This is a sample sentence given by me. This is a sample sentence written in this room. 

(defrule kriyA-aXi
(declare (salience 200))
(or (link_name-link_expansion    ?S   S ~F $?vars)(link_name-link_expansion  ?S  S ~I $?vars))
(link_name-link_lnode-link_rnode ?S ?x ?y)
(link_name-link_expansion    ?DT   D T  $?var)
(link_name-link_lnode-link_rnode  ?DT ?det ?aXi)
?f0<- (link_name-link_lnode-link_rnode  Mpn ?x ?aXi)
(root-verbchunk-tam-parser_chunkids $? ?y ?head)
=>
(retract ?f0)
(printout	?*fp*	"(using-parser-ids 	kriyA-kAlavAcI	"?head"	"?aXi")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-aXi	kriyA-kAlavAcI	"?head"	"?aXi")"crlf)
)
;Ex.    The party that NIGHT had BEEN a big success

(defrule kriyA-aXi_1
(or (link_name-link_expansion    ?S   S ~F $?vars)(link_name-link_expansion  ?S  S ~I $?vars))
(link_name-link_lnode-link_rnode ?S ?x ?y)
(link_name-link_expansion    ?DT   D T  $?var)
(link_name-link_lnode-link_rnode  ?DT ?det ?aXi)
(link_name-link_lnode-link_rnode  Mpn ?x ?aXi)
(root-verbchunk-tam-parser_chunkids $? ?head)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kAlavAcI	"?head"	"?aXi")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-aXi_1	kriyA-kAlavAcI	"?head"	"?aXi")"crlf)
)
;Ex.    The party that NIGHT was a big success

(defrule kriyA-aXi_2
(declare (salience 520))
(or (link_name-link_expansion    ?S   S ~F $?vars)(link_name-link_expansion  ?S  S ~I $?vars))
(link_name-link_lnode-link_rnode ?S ?x ?y)
(link_name-link_expansion    ?DT   D T  $?var)
(link_name-link_lnode-link_rnode  ?DT ?det ?aXi)
(link_name-link_expansion    ?CO C O $?vari)
(link_name-link_lnode-link_rnode  ?CO ?aXi ?x)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kAlavAcI	"?y"	"?aXi")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-aXi_2	kriyA-kAlavAcI	"?y"	"?aXi")"crlf)
)
;Ex.     Last week I saw a great movie.

;KRIYA-AXIKARANA RELATION RULES:
(defrule rule16
(declare (salience 97))
(link_name-link_lnode-link_rnode MVp ?a ?b)
(link_name-link_lnode-link_rnode IN ?b ?c)
(link_name-link_lnode-link_rnode TA ?d ?c)
=>
(printout	?*fp*	"(using-parser-ids 	viSeRya-viSeRaNa	"?d"	"?c")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule16	viSeRya-viSeRaNa	"?d"	"?c")"crlf)
)
;Ex.	I did it in late December.

(defrule rule17
(link_name-link_lnode-link_rnode PF ?x ?y)
(linkid-word-node_cat ?x when ?)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kAlavAcI	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule17	kriyA-kAlavAcI	"?y"	"?x")"crlf)
)
;Ex.	When will it be?

(defrule where_1
(link_name-link_lnode-link_rnode PF|WR ?x ?y)
(linkid-word-node_cat ?x where ?)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-lupwa_prep_saMbanXI	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	where_1	kriyA-lupwa_prep_saMbanXI	"?y"	"?x")"crlf)
)
;Ex.    Where are you? Where did you put the milk?

(defrule rule18
(declare (salience 510))
(link_name-link_lnode-link_rnode TD ?x ?y)
?f0<- (link_name-link_lnode-link_rnode MVpn ?z ?x)
=>
(retract ?f0)
(printout	?*fp*	"(using-parser-ids 	kriyA-kAlavAcI	"?z"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule18	kriyA-kAlavAcI	"?z"	"?y")"crlf)	

(printout	?*fp*	"(using-parser-ids 	viSeRya-viSeRaNa	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule18	viSeRya-viSeRaNa	"?x"	"?y")"crlf)
)
;Ex.	We will do it Monday morning

(defrule rule41
(declare (salience 525))
(link_name-link_lnode-link_rnode DTi ?x ?y)
?f0<- (link_name-link_lnode-link_rnode MVpn ?z ?y)
=>
(retract ?f0)
(printout	?*fp*	"(using-parser-ids 	kriyA-kAlavAcI	"?z"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule41	kriyA-kAlavAcI	"?z"	"?y")"crlf)	

(printout	?*fp*	"(using-parser-ids 	viSeRya-viSeRaNa	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule41	viSeRya-viSeRaNa	"?y"	"?x")"crlf)
)
;Ex.	"I'm going to London NEXT WEEK".

(defrule rule43
(declare (salience 535))
(link_name-link_lnode-link_rnode DTn ?x ?y)
(link_name-link_lnode-link_rnode MVpn ?z ?y)
(not (link_name-link_lnode-link_rnode Pa|Paf ?a ?z)) ;to stop this rel in the such sents: "The yield of kharif crops was not good this season."
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kAlavAcI	"?z"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule43	kriyA-kAlavAcI	"?z"	"?y")"crlf)	

(printout	?*fp*	"(using-parser-ids 	viSeRya-det_viSeRaNa	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule43	viSeRya-det_viSeRaNa	"?y"	"?x")"crlf)
)
;Ex.	I'm going to London THIS MONDAY

(defrule rule64
(link_name-link_lnode-link_rnode MVp ?a ?b)
(link_name-link_lnode-link_rnode TY ?c ?d)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kAlavAcI	"?a"	"?d")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule64	kriyA-kAlavAcI	"?a"	"?d")"crlf)
)
;Ex.	I saw him on January 21 , 1990

(defrule rule65
(link_name-link_lnode-link_rnode MVp ?a ?b)
(link_name-link_lnode-link_rnode TM ?c ?d)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kAlavAcI	"?a"	"?d")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule65	kriyA-kAlavAcI	"?a"	"?d")"crlf)
)
;Ex.	I saw him on January 21 , 1990

(defrule kriyA-kAlavAcI_1
(link_name-link_lnode-link_rnode MVpn ?a ?b)
(link_name-link_lnode-link_rnode Ye ?b ?d)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kAlavAcI	"?a"	"?d")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-kAlavAcI_1	kriyA-kAlavAcI	"?a"	"?d")"crlf)
)
;Ex.    Someone is mugged in New York every five minutes. We swim every three weeks.

(defrule rule66
(link_name-link_lnode-link_rnode MVp|Ix ?a ?b)
(link_name-link_lnode-link_rnode TW ?c ?d)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kAlavAcI	"?a"	"?c")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule66	kriyA-kAlavAcI	"?a"	"?c")"crlf)	

(printout	?*fp*	"(using-parser-ids 	kriyA-kAlavAcI	"?a"	"?d")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule66	kriyA-kAlavAcI	"?a"	"?d")"crlf)
)
;Ex.	The meeting will be on MONDAY, JANUARY 21

(defrule rule67
(link_name-link_lnode-link_rnode MVp|Ix ?a ?b)
(link_name-link_lnode-link_rnode TM ?c ?d)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kAlavAcI	"?a"	"?d")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule67	kriyA-kAlavAcI	"?a"	"?d")"crlf)
)
;Ex.	The meeting will be on Monday, January 21 

(defrule rule83
(link_name-link_lnode-link_rnode Q ?a ?b)
;(link_name-link_lnode-link_rnode I*d|I ?b ?c)
(root-verbchunk-tam-parser_chunkids ? ? $?chunks ?kriyA)
(test (member$ ?b $?chunks))
(linkid-word-node_cat ?a when ?)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kAlavAcI	"?kriyA"	"?a")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule83	kriyA-kAlavAcI	"?kriyA"	"?a")"crlf)
)
;Ex.	When did he go?  When are you going?

(defrule MVs+Mv
(link_name-link_lnode-link_rnode MVs ?a ?b)
(link_name-link_lnode-link_rnode Mv  ?b ?c)
;(root-verbchunk-tam-parser_chunkids ? ? $?chunks ?kriyA)
;(test (member$ ?b $?chunks))
(linkid-word-node_cat ?b when ?)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kAlavAcI	"?a"	"?b")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	MVs+Mv	kriyA-kAlavAcI	"?a"	"?b")"crlf)	

(printout	?*fp*	"(using-parser-ids 	kriyA-kAlavAcI	"?c"	"?b")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	MVs+Mv	kriyA-kAlavAcI	"?c"	"?b")"crlf)
)
;Ex.   She cried when asked about it.

(defrule where
(link_name-link_lnode-link_rnode Q ?a ?b)
(link_name-link_lnode-link_rnode I*d|I ?b ?c)
(linkid-word-node_cat ?a where ?)
(not(link_name-link_lnode-link_rnode MVp ?c ?y)) ;Ex. 4 this condition: "Where did they come from?"
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-lupwa_prep_saMbanXI	"?c"	"?a")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	where	kriyA-lupwa_prep_saMbanXI	"?c"	"?a")"crlf)
)
;Ex.    Where did he go.

(defrule where-con
(link_name-link_expansion    ?S S $?var)
(link_name-link_lnode-link_rnode ?S ?a ?v)
(link_name-link_lnode-link_rnode MVp ?v ?prep)
(linkid-word-node_cat ?prep ?viBakwi ?)
(link_name-link_lnode-link_rnode Cs  ?c ?a)
(parser_id-root ?prep ?now)
(not (parser_id-root ?prep again|later|here|there|somewhere|anywhere|everywhere|now|outside|longer))
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-"?viBakwi"_saMbanXI	"?v"	"?c")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	where-con	kriyA-"?viBakwi"_saMbanXI	"?v"	"?c")"crlf)
)
;Ex.    Can you tell us where those strange ideas came from?

(defrule rule125
(link_name-link_lnode-link_rnode MVpn ?z ?x)
(not (link_name-link_lnode-link_rnode Pa|Paf ?y ?z)) ;to stop this rel in the such sents: "The yield of kharif crops was not good this season."
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kAlavAcI	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule125	kriyA-kAlavAcI	"?z"	"?x")"crlf)
)
;Ex.	He came early today.

(defrule S_Pa_MVpn
(link_name-link_expansion    ?S S $?var)
(link_name-link_lnode-link_rnode ?S ?s ?v)
(link_name-link_expansion    ?Pa P a $?vari)
(link_name-link_lnode-link_rnode ?Pa  ?v ?p)
(link_name-link_lnode-link_rnode MVpn ?p ?kal)
=>
(printout       ?*fp*   "(using-parser-ids      kriyA-kAlavAcI  "?v"    "?kal")"crlf)
(printout       ?*rel_debug*    "(Rule-Rel-ids	S_Pa_MVpn kriyA-kAlavAcI  "?v"    "?kal")"crlf)
)
;Ex.   The yield of kharif crops was not good this season.

;VISERYA-VISERANA RELATION RULES:
(defrule rule71
(declare (salience 1))
?f0<- (link_name-link_lnode-link_rnode ALx ?x ?y)
?f1<- (link_name-link_lnode-link_rnode Jp ?x ?z)
=>
(retract ?f0 ?f1)
(printout	?*fp*	"(using-parser-ids 	viSeRya-viSeRaNa	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule71	viSeRya-viSeRaNa	"?z"	"?x")"crlf)
)
;Ex.	we worked all the time

(defrule rule74
(link_name-link_expansion    ?lname    D $?vars)
(link_name-link_lnode-link_rnode  ?lname  ?x ?y)
(link_name-link_lnode-link_rnode La ?x ?z)
=>
(printout	?*fp*	"(using-parser-ids 	viSeRya-viSeRaNa	"?y"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule74	viSeRya-viSeRaNa	"?y"	"?z")"crlf)
)
;Ex.	He has the biggest room, he has the biggest bats, he has the biggest bat,  he has the biggest car

(defrule rule3
(link_name-link_expansion    ?lname    A)
(link_name-link_lnode-link_rnode  ?lname  ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	viSeRya-viSeRaNa	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule3	viSeRya-viSeRaNa	"?y"	"?x")"crlf)
)
;Ex.	The BIG BLACK UGLY DOG chased me.


;VISERYA-det_VISERANA RELATION RULES:
(defrule rule4
(link_name-link_expansion    ?lname    D $?vars)
(link_name-link_lnode-link_rnode  ?lname  ?x ?y)
(not (link_name-link_lnode-link_rnode  YS|YP  ?z ?x)) ;ex. 4 this cond. His bed was next to the room's only window.
=>
(printout	?*fp*	"(using-parser-ids 	viSeRya-det_viSeRaNa	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule4	viSeRya-det_viSeRaNa	"?y"	"?x")"crlf)
)
;Ex.	"THE DOG chased A CAT and SOME BIRDS"."I saw SOME BIRDS"."he eats 	MUCH RICE"."THE DOG barks"."She was such A good PROGRAMMER that they had to keep her.""WHICH BOOK do you want?""WHICH BOOK do you want?"

(defrule rule77
(link_name-link_lnode-link_rnode NSa ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	viSeRya-det_viSeRaNa	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule77	viSeRya-det_viSeRaNa	"?y"	"?x")"crlf)
)
;Ex.	I saw him A WEEK ago". ,"I saw him AN YEAR ago".

;kriyA-kriyA_viSeRaNa RELATION RULES:
(defrule rule5
(link_name-link_lnode-link_rnode  MVa  ?x ?y)
(not(link_name-link_lnode-link_rnode Yt ?z ?y)) ;Ex. 4 this condition: "I saw him three weeks ago."
(not(link_name-link_lnode-link_rnode Pa|Paf|Pam ?z ?x)) ;Ex. 4 this condition: "It was biting cold outside."
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kriyA_viSeRaNa	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule5	kriyA-kriyA_viSeRaNa	"?x"	"?y")"crlf)
)
;Ex. 	He runs quickly",

(defrule kriyA_vi_kala
(link_name-link_lnode-link_rnode  MVa|MVs  ?x ?y)
(link_name-link_lnode-link_rnode Yt ?z ?y)
(linkid-word-node_cat ?y ?viBakwi ?)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-"?viBakwi"_saMbanXI	"?x"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA_vi_kala	kriyA-"?viBakwi"_saMbanXI	"?x"	"?z")"crlf)	

(printout	?*fp*	"(using-parser-ids 	kriyA-kAlavAcI	"?x"	"?y")"	crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA_vi_kala	kriyA-kAlavAcI	"?x"	"?y")"	crlf)
)
;Ex. I saw him three weeks ago. I saw him a week ago.

(defrule kriyA_vi
(link_name-link_lnode-link_rnode  MVl  ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kriyA_viSeRaNa	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA_vi	kriyA-kriyA_viSeRaNa	"?x"	"?y")"crlf)
)
;Ex. Such flowers are found mainly in Europe.  

(defrule kriyA_vi_1
(link_name-link_lnode-link_rnode  Q  ?x ?y)
(link_name-link_expansion   ?I I $?vars)
(link_name-link_lnode-link_rnode ?I ?y ?z)
(linkid-word-node_cat ?x how ?)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kriyA_viSeRaNa	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA_vi_1	kriyA-kriyA_viSeRaNa	"?z"	"?x")"crlf)
)
;Ex. HOW do you OPERATE this machine?

(defrule kriyA_vi_2
(link_name-link_lnode-link_rnode  EI  ?x ?y)
(link_name-link_expansion   ?MV   M V $?vars)
(link_name-link_lnode-link_rnode ?MV   ?v   ?y)
;(linkid-word-node_cat ?x how ?)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kriyA_viSeRaNa	"?v"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA_vi_2	kriyA-kriyA_viSeRaNa	"?v"	"?x")"crlf)
)
;Ex. I left soon after I saw you.

(defrule kriyA_vi_vi
(link_name-link_lnode-link_rnode  EEh  ?x ?y)
(linkid-word-node_cat ?x how ?)
(not (linkid-word-node_cat ?y much ?)) ;Ex. How much more efficient are they?
=>
(printout	?*fp*	"(using-parser-ids 	kriyA_viSeRaNa-viSeRaka	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA_vi_vi	kriyA_viSeRaNa-viSeRaka	"?y"	"?x")"crlf)
)
;Ex.   I wonder how quickly Jane ran.

(defrule vi_vi_1
(link_name-link_expansion   ?EE   E E x $?var)
;(link_name-link_lnode-link_rnode  EEx  ?x ?y)
(link_name-link_lnode-link_rnode  ?EE  ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	viSeRaNa-viSeRaka	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	vi_vi_1	viSeRaNa-viSeRaka	"?y"	"?x")"crlf)
)
;Ex.  Of her childhood we know very littl. 
; Modified by manju (09-11-09) To generalise the rule
;       Ex: It is hard to absorb so much information . in this link name is EExk


(defrule viSeRya_vi
(link_name-link_expansion    ?EC   E C $?vars)
(link_name-link_lnode-link_rnode  ?EC  ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	viSeRaNa-viSeRaka	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	viSeRya_vi	viSeRaNa-viSeRaka	"?y"	"?x")"crlf)
)
;Ex.  How much more efficient are they?

(defrule rule32
(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_lnode-link_rnode Ca ?z	 ?x)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kriyA_viSeRaNa	"?y"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule32	kriyA-kriyA_viSeRaNa	"?y"	"?z")"crlf)
)
;Ex.	I wonder how QUICKLY Jane RAN?

(defrule ruleEm
(link_name-link_lnode-link_rnode E|Em ?x ?head_id)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids)
(test (member$ ?head_id $?chunk_ids))
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kriyA_viSeRaNa	"(nth$	(length	$?chunk_ids)	$?chunk_ids)"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	ruleEm	kriyA-kriyA_viSeRaNa	"(nth$	(length	$?chunk_ids)	$?chunk_ids)"	"?x")"crlf)
)
;Ex.    He is APPARENTLY LEAVING.
;The "Em" vaalii condition is added to handle this sentence:  He has been frequently coming. 

(defrule kriyA-kriya_vi
(link_name-link_expansion    ?EB   E B $?vars)
(link_name-link_lnode-link_rnode ?EB ?x ?y)
(root-verbchunk-tam-parser_chunkids  $?ids ?head_id)
(linkid-word-node_cat ?y ?word&~not ?) 
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kriyA_viSeRaNa	"?head_id"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-kriyA_vi	kriyA-kriyA_viSeRaNa	"?head_id"	"?y")"crlf)
)
;Ex.He IS APPARENTLY a good programmer. A man , APPARENTLY in a bad mood , WAS there.

(defrule rule47
(link_name-link_lnode-link_rnode EEh ?x ?y)
(link_name-link_lnode-link_rnode I*d ?a ?b)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kriyA_viSeRaNa	"?b"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule47	kriyA-kriyA_viSeRaNa	"?b"	"?y")"crlf)
)
;Ex.	"How QUICKLY did you RUN"

(defrule  rule48
(link_name-link_lnode-link_rnode MVa ?x ?y)
(link_name-link_lnode-link_rnode I*d ?a ?b)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kriyA_viSeRaNa	"?b"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule48	kriyA-kriyA_viSeRaNa	"?b"	"?y")"crlf)
)
;Ex.

(defrule rule49
(link_name-link_lnode-link_rnode EF ?x ?y)
(link_name-link_lnode-link_rnode MVa ?a ?b)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kriyA_viSeRaNa	"?a"	"?b")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule49	kriyA-kriyA_viSeRaNa	"?a"	"?b")"crlf)
)
;Ex.	"He didn't run QUICKLY ENOUGH". 

(defrule rule_EF
(declare (salience 600))
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids);Ex. this condition is to stop "
(link_name-link_expansion    ?S    S $?var)
(link_name-link_lnode-link_rnode  ?S ?s ?v)
(link_name-link_expansion    ?Pa   P a $?vars)
(link_name-link_lnode-link_rnode  ?Pa =(nth$ (length $?chunk_ids) $?chunk_ids) ?y)
(link_name-link_lnode-link_rnode EF  ?y ?z)
=>
(assert (got_relation_for_pa))
(printout	?*fp*	"(using-parser-ids 	subject-subject_samAnAXikaraNa	"?s"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule_EF	subject-subject_samAnAXikaraNa	"?s"	"?z"	)"crlf)	

(printout	?*fp*	"(using-parser-ids 	viSeRaNa-viSeRaka	"?z"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule_EF	viSeRaNa-viSeRaka	"?z"	"?y")"crlf)
)
;Ex.    "He is GOOD ENOUGH.",  

(defrule rule_MXpx
(link_name-link_lnode-link_rnode MVp ?a ?b)
(link_name-link_expansion    ?J    J $?vars)
(link_name-link_lnode-link_rnode  ?J ?b ?c)
(link_name-link_lnode-link_rnode MXpx ?c ?d)
(link_name-link_expansion    ?J1    J $?var)
(link_name-link_lnode-link_rnode  ?J1 ?d ?e)
(linkid-word-node_cat ?d ?viBakwi ?)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-"?viBakwi"_saMbanXI	"?a"	"?e")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule_MXpx	kriyA-"?viBakwi"_saMbanXI	"?a"	"?e")"crlf)
)
;Ex.    We like to eat at restaurants , particularly on weekends .

(defrule saMKyA-saMKyA
(link_name-link_lnode-link_rnode NN ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	saMKyA-saMKyA	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	saMKyA-saMKyA	saMKyA-saMKyA	"?x"	"?y")"crlf)	

;(printout	?*fp*	"(using-parser-ids 	kriyA-kriyA_viSeRaNa	"?z"	"?x","?y")"crlf)	
;(printout	?*rel_debug*	"(Rule-Rel-ids	rule51	kriyA-kriyA_viSeRaNa	"?z"	"?x","?y")"crlf)
)
;Ex.	"I didn't wait FOR LONG". 

(defrule rule100
(link_name-link_lnode-link_rnode Em ?x ?y)
(link_name-link_lnode-link_rnode MVi ?z ?y)
=>
;(printout	?*fp*	"(using-parser-ids 	kriyA_viSeRaNa-ke_liye	"?x"	"?y")"crlf)	
;(printout	?*rel_debug*	"(Rule-Rel-ids	rule100	kriyA_viSeRaNa-ke_liye	"?x"	"?y")"crlf)	

(printout	?*fp*	"(using-parser-ids 	kriyA-kriyA_viSeRaNa	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule100	kriyA-kriyA_viSeRaNa	"?z"	"?x")"crlf)
)
;Ex.	I had to run fast to catch the bus.

(defrule rule135
(link_name-link_lnode-link_rnode SFs|SFsi ?x ?y)
(link_name-link_lnode-link_rnode Paf ?y ?z)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kriyA_viSeRaNa	"?y"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule135	kriyA-kriyA_viSeRaNa	"?y"	"?z")"crlf)
)
;Ex.	It is likely that Jane will go. 

(defrule rule9
(link_name-link_lnode-link_rnode Us ?i ?j)
(linkid-word-node_cat ?i per ?)
=>
(printout	?*fp*	"(using-parser-ids 	hara-saMjFA	"?i"	"?j")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule9	hara-saMjFA	"?i"	"?j")"crlf)
)
;Ex.	We spend four dollars  per student.

(defrule rule14
(link_name-link_lnode-link_rnode YP|YS ?x ?y)
(link_name-link_expansion    ?lname    D $?vars)
(link_name-link_lnode-link_rnode  ?lname ?x ?z)
=>
(printout	?*fp*	"(using-parser-ids 	viSeRya-RaRTI_viSeRaNa	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule14	viSeRya-RaRTI_viSeRaNa	"?z"	"?x")"crlf)
)
;Ex.	John 's dog is black". The students' rooms are large

(defrule RaRTI_saMbanXI
(declare (salience 535))
(link_name-link_expansion    ?lname    D $?vars)
?f0<-(link_name-link_lnode-link_rnode  ?lname ?x ?y)
(linkid-word-node_cat ?x  his|her|my|our|your|their|its  ?)
=>
(retract ?f0)
(printout	?*fp*	"(using-parser-ids 	viSeRya-RaRTI_viSeRaNa	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	RaRTI_saMbanXI	viSeRya-RaRTI_viSeRaNa	"?y"	"?x")"crlf)
)
;Ex.	This is HIS BOOK. What is YOUR NAME?

(defrule RaRTI_saMbanXI_1
(declare (salience 545))
?f0<-(link_name-link_lnode-link_rnode  DD ?x ?y)
(linkid-word-node_cat ?x  his|her|my|our|your|their|its  ?)
(link_name-link_expansion    ?D   D $?var)
(link_name-link_lnode-link_rnode  ?D ?y ?z)
=>
(retract ?f0)
(printout	?*fp*	"(using-parser-ids 	viSeRya-RaRTI_viSeRaNa	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	RaRTI_saMbanXI_1	viSeRya-RaRTI_viSeRaNa	"?z"	"?x")"crlf)
)
;Ex.   My three sisters are coming next week.

(defrule rule20
(link_name-link_lnode-link_rnode Pa**j ?x ?y)
(link_name-link_lnode-link_rnode Os|Op|Ox ?x ?z)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-object_samAnAXikaraNa	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule20	kriyA-object_samAnAXikaraNa	"?x"	"?y")"crlf)	

(printout	?*fp*	"(using-parser-ids 	object-object_samAnAXikaraNa	"?z"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule20	object-object_samAnAXikaraNa	"?z"	"?y")"crlf)
)
;Ex.	 "I MADE him HAPPY", "You MAKE me HAPPY".


;(defrule rule21
;(link_name-link_lnode-link_rnode AF ?x ?y)
;(link_name-link_lnode-link_rnode SIs|SIpx ?y ?z)
;=>
;(printout	?*fp*	"(using-parser-ids 	kriyA-viSeRaNa	"?y"	"?x")"crlf)	
;(printout	?*rel_debug*	"(Rule-Rel-ids	rule21	kriyA-viSeRaNa	"?y"	"?x")"crlf)	

;(printout	?*fp*	"(using-parser-ids 	subject-subject_samAnAXikaraNa	"?z"	"?x")"crlf)	
;(printout	?*rel_debug*	"(Rule-Rel-ids	rule22	subject-subject_samAnAXikaraNa	"?z"	"?x"	)"crlf)	

;(printout	?*fp*	"(using-parser-ids 	viSeRya-viSeRaNa	"?z"	"?x")"crlf)	
;(printout	?*rel_debug*	"(Rule-Rel-ids	rule21	viSeRya-viSeRaNa	"?z"	"?x")"crlf)	
;)
;Ex.	How big is it? How much more efficient are they? 
;currently I don't find any use of this relation. dt: 19/06/09

(defrule sub-s_s
(link_name-link_expansion ?SI    S I $?var)
(link_name-link_lnode-link_rnode ?SI ?x ?sub)
(link_name-link_lnode-link_rnode Pam   ?kriyA  ?s_s)
(link_name-link_expansion ?I I $?vari)
(link_name-link_lnode-link_rnode ?I ?x ?kriyA)
=>
(printout	?*fp*	"(using-parser-ids 	subject-subject_samAnAXikaraNa	"?sub"	"?s_s")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	sub-s_s	subject-subject_samAnAXikaraNa	"?sub"	"?s_s")"crlf)
)
;Ex. Which of your parents do you feel closer to?

(defrule sub-s_s_1
(link_name-link_expansion ?S    S  $?var)
(link_name-link_lnode-link_rnode ?S ?sub ?v)
(link_name-link_lnode-link_rnode Pv ?v ?p_v)
(link_name-link_expansion ?Pa    P a  $?vari)
(link_name-link_lnode-link_rnode ?Pa    ?p_v ?s_s)
=>
(printout	?*fp*	"(using-parser-ids 	subject-subject_samAnAXikaraNa	"?sub"	"?s_s")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	sub-s_s_1	subject-subject_samAnAXikaraNa	"?sub"	"?s_s")"crlf)
)
;Ex. 

(defrule subject_samAnAXikaraNa
(declare (salience 300))
(link_name-link_lnode-link_rnode AF|AFm ?x ?y)
(link_name-link_expansion  ?SI  S I $?vars)
(link_name-link_lnode-link_rnode  ?SI   ?y ?z)
=>
(printout	?*fp*	"(using-parser-ids 	subject-subject_samAnAXikaraNa	"?z"	"?x")"	crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	subject_samAnAXikaraNa	subject-subject_samAnAXikaraNa	"?z"	"?x"	)"crlf)
)
;Ex.	How good are your friends? How big is it? How much better is it? 

(defrule rule22
(link_name-link_lnode-link_rnode AFm ?x ?y)
(link_name-link_lnode-link_rnode SIs ?y ?z)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-viSeRaNa	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule22	kriyA-viSeRaNa	"?y"	"?x")"crlf)	

(printout	?*fp*	"(using-parser-ids 	viSeRya-viSeRaNa	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule22	viSeRya-viSeRaNa	"?z"	"?x")"crlf)
)
;Ex.	How much better is it?

(defrule rule26
(link_name-link_lnode-link_rnode AN ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	samAsa	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule26	samAsa	"?y"	"?x")"crlf)
)
;Ex.	The TAX PROPOSAL was rejected.

(defrule rule27
(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_lnode-link_rnode BIt ?y ?z)
=>
;(printout	?*fp*	"(using-parser-ids 	kriyA-subject_samAnAXikaraNa	"?y"	"?z")"crlf)	commenting this because this is not useful. 01/10/09
;(printout	?*rel_debug*	"(Rule-Rel-ids	rule27	kriyA-subject_samAnAXikaraNa	"?y"	"?z")"crlf)	

(printout	?*fp*	"(using-parser-ids 	subject-subject_samAnAXikaraNa	"?x"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule27	subject-subject_samAnAXikaraNa	"?x"	"?z")"crlf)
)
;Ex.	He is president of the company.

(defrule rule28
(link_name-link_lnode-link_rnode MVp|Pp|MVx ?z ?x)
(link_name-link_lnode-link_rnode Js|Jp|J|IN|ON|TI ?x ?y) ;"TI" is added for the ex. "Mr . John Smith , 66 years old , will succeed him as president."
(linkid-word-node_cat ?x ?viBakwi ?)
(not (got_relation_for_MVp_link))
(not (link_name-link_lnode-link_rnode Pg|Pgf|Paf ?a ?z)) 
(not (link_name-link_lnode-link_rnode MF ?xx ?x));ex. 4 this: Many people were injured , some of them children. 
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-"?viBakwi"_saMbanXI	"?z"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule28	kriyA-"?viBakwi"_saMbanXI	"?z"	"?y")"crlf)
)
;Ex. the dog RAN in the YARD". We did it in December. I saw him on January 21. Ravana was killed by RAma.  There are flowers in the garden. He was in the yard. John left ,   with the dog. 

(defrule Paf_MVp
(link_name-link_lnode-link_rnode Pa|Paf ?v ?x)
(link_name-link_lnode-link_rnode MVp|Pp|MVx ?x ?y)
(link_name-link_lnode-link_rnode Js|Jp|J|IN|ON|FM|FL ?y ?z)
(linkid-word-node_cat ?y ?viBakwi ?)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-"?viBakwi"_saMbanXI	"?v"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	Paf_MVp	kriyA-"?viBakwi"_saMbanXI	"?v"	"?z")"crlf)
)
;Ex.  These shoes that I bought will look nice with that hat. Running is good for health. It will look nice for long.

(defrule rule_MF
(link_name-link_lnode-link_rnode Pv ?kri ?z)
(link_name-link_lnode-link_rnode MVp|Pp|MVx ?z ?x)
(link_name-link_lnode-link_rnode Js|Jp|J|IN|ON ?x ?y)
(link_name-link_lnode-link_rnode MF  ?a ?x)
(link_name-link_expansion  ?ID   I D  $?vars)
(link_name-link_lnode-link_rnode ?ID  ?prep ?x)
(linkid-word-node_cat ?prep ?viBakwi ?)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-"?viBakwi"_saMbanXI	"?kri"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule_MF	kriyA-"?viBakwi"_saMbanXI	"?kri"	"?y")"crlf)
)
;Ex. Many people were injured , some of them children.

(defrule prep-kriyA_vi
(declare (salience 300))
(link_name-link_lnode-link_rnode MVl ?x ?y)
?f0<- (link_name-link_lnode-link_rnode MVp ?y ?z)
(link_name-link_expansion    ?J   J $?vars)
(or(link_name-link_lnode-link_rnode ?J ?z ?a) (link_name-link_lnode-link_rnode IN ?z ?a)(link_name-link_lnode-link_rnode ON ?z ?a))
(linkid-word-node_cat ?z ?viBakwi ?)
=>
(retract ?f0)
(printout	?*fp*	"(using-parser-ids 	kriyA-"?viBakwi"_saMbanXI	"?x"	"?a")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	prep-kriyA_vi	kriyA-"?viBakwi"_saMbanXI	"?x"	"?a")"crlf)
)
;Ex. Such flowers are found mainly in Europe.  

(defrule rule29
(link_name-link_expansion    ?lname   S I $?vars)
(or (link_name-link_lnode-link_rnode ?lname ?x ?y)(link_name-link_lnode-link_rnode SXI ?x ?y))
(link_name-link_lnode-link_rnode BIt ?x ?z)
=>
(printout	?*fp*	"(using-parser-ids 	subject-subject_samAnAXikaraNa	"?y"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule29	subject-subject_samAnAXikaraNa	"?y"	"?z")"crlf)
)
;Ex.	"IS he PRESIDENT of the company".

;(defrule rule33
;(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
;(link_name-link_lnode-link_rnode ?lname ?x ?y)
;(link_name-link_expansion  ?Pa P a $?va)
;(link_name-link_lnode-link_rnode ?Pa ?y ?z)
;(not(link_name-link_lnode-link_rnode EAy ?a ?z))
;(not (got_relation_for_pa))
;=>
;(printout	?*fp*	"(using-parser-ids 	subject-subject_samAnAXikaraNa	"?x"	"?z")"crlf)	
;(printout	?*rel_debug*	"(Rule-Rel-ids	rule33	subject-subject_samAnAXikaraNa	"?x"	"?z")"crlf)
;)
;Ex.	HE is more INTELLIGENT than attractive.

(defrule s-s_s
(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_expansion  ?Pa P a $?va)
(link_name-link_lnode-link_rnode ?Pa ?y ?z)
(link_name-link_lnode-link_rnode EAy ?a ?z)
=>
(printout	?*fp*	"(using-parser-ids 	subject-subject_samAnAXikaraNa	"?x"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	s-s_s	subject-subject_samAnAXikaraNa	"?x"	"?z")"crlf)
)
;Ex.    

(defrule rule34
(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_lnode-link_rnode Pa|Paf ?y ?z)
(link_name-link_lnode-link_rnode Pafc ?a ?b)
=>
(printout	?*fp*	"(using-parser-ids 	subject-subject_samAnAXikaraNa	"?x"	"?b")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule34	subject-subject_samAnAXikaraNa	"?x"	"?b")"crlf)
)
;Ex.	HE is more intelligent than ATTRACTIVE.

(defrule  subject_samAnAXikaraNa_2
(declare (salience 300))
(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
?f1<- (link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_lnode-link_rnode  ALx  ?x ?s)
(link_name-link_lnode-link_rnode  Jp ?x ?sub)
?f0<- (link_name-link_lnode-link_rnode Paf ?y ?z)
=>
(retract ?f0 ?f1)
(printout	?*fp*	"(using-parser-ids 	subject-subject_samAnAXikaraNa	"?sub"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	subject_samAnAXikaraNa_2	subject-subject_samAnAXikaraNa	"?sub"	"?z")"crlf)	

(printout	?*fp*	"(using-parser-ids 	kriyA-subject	"?y"	"?sub")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	subject_samAnAXikaraNa_2	subject-subject_samAnAXikaraNa	"?y"	"?sub")"crlf)
)
;Ex.    All his books are good.

(defrule subject_samAnAXikaraNa_1
(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_lnode-link_rnode Pa|Paf ?z ?a)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids)
(test (member$ ?y $?chunk_ids)) ;this & the below condition is added to handle cases where Pa* and S* links are not directly related.
(test (member$ ?z $?chunk_ids))
;(not(link_name-link_lnode-link_rnode EAy ?a ?z))
=>
(printout	?*fp*	"(using-parser-ids 	subject-subject_samAnAXikaraNa	"?x"	"?a")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	subject_samAnAXikaraNa_1	subject-subject_samAnAXikaraNa	"?x"	"?a")"crlf)
)
;Ex.	 you should be proud of your achievment. These shoes that I bought will look nice with that hat.

(defrule subject_samAnAXi3
(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_lnode-link_rnode TO ?y ?z)
(link_name-link_lnode-link_rnode Ix  ?z ?b)
(link_name-link_expansion  ?Pa P a $?)
(link_name-link_lnode-link_rnode ?Pa ?b ?a)
=>
(printout	?*fp*	"(using-parser-ids 	subject-subject_samAnAXikaraNa	"?x"	"?a")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	subject_samAnAXi3	subject-subject_samAnAXikaraNa	"?x"	"?a")"crlf)
)
;Ex.   


;(defrule rule35
;(link_name-link_lnode-link_rnode BIh ?a ?b)
;=>
;(printout	?*fp*	"(using-parser-ids 	EsA+kriyA-kyoMki	"?a"	"?b")"crlf)	;here	"EsA+"	word	means	"EsA"	Sabxa	kA	aXyAhAra	karanA	hE	
;(printout	?*rel_debug*	"(Rule-Rel-ids	rule35	EsA+kriyA-kyoMki	"?a"	"?b")"crlf)	
;)
;Ex.	"This IS BECAUSE he is stupid".

(defrule rule37
(link_name-link_lnode-link_rnode AA ?x ?y)
(link_name-link_lnode-link_rnode Ds ?y ?z)
=>
(printout	?*fp*	"(using-parser-ids 	viSeRya-viSeRaNa	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule37	viSeRya-viSeRaNa	"?z"	"?x")"crlf)
)
;Ex.	How BIG A dog was it?


;(defrule rule38
;(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
;(link_name-link_lnode-link_rnode ?lname ?x ?y)
;(or (link_name-link_expansion    ?lname1   S ~F $?vars)(link_name-link_expansion  ?lname1  S ~I $?vars))
;(link_name-link_lnode-link_rnode ?lname ?z ?a)
;(or(link_name-link_lnode-link_rnode Ce ?s ?z)(link_name-link_lnode-link_rnode Cet ?s ?z)(link_name-link_lnode-link_rnode Ci ?s ?z))
;=>
;(printout	?*fp*	"(using-parser-ids 	kriyA-vAkyakarma	"?y"	"?a")"crlf)	
;(printout	?*rel_debug*	"(Rule-Rel-ids	rule38	kriyA-vAkyakarma	"?y"	"?a")"crlf)	
;)

;		THIS RULE IS NOT WORKING PROPERLY. IT DOES NOT SHOW kriyA-subject RELATION BETWEEN"I retorted" IN THE SENTENCE"  "I retorted we should go" SO IT NEEDS TO BE MODIFIED
;Ex	.I like the WAY YOU do that"

(defrule rule39
(link_name-link_expansion    ?K   K $?vars) ;this condition is added for ex.  "We put the pie straight in." where 'Kx' and 'Ky' links are used.
(link_name-link_lnode-link_rnode ?K ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-upasarga	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule39	kriyA-upasarga	"?x"	"?y")"crlf)
)
;Ex.	"He STOOD UP and WALKED OUT"

(defrule rule40
(link_name-link_lnode-link_rnode DG ?x ?y)
(not (link_name-link_lnode-link_rnode Cs ?y ?z))
(not (link_name-link_lnode-link_rnode ER ?y ?z));ex. 4 this condition: The better it is, the more people will use it.
(not (link_name-link_lnode-link_rnode ER ?z ?y));ex. 4 this condition: The better it is, the more people will use it.
;I left the moment I saw him.
;The better it is, the more people will use it.
;Axi vAkyoM ko rokane ke liye haya subject vAlI xUsarI condition hE
=>
(printout	?*fp*	"(using-parser-ids 	proper_noun-det_viSeRaNa	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule40	proper_noun-det_viSeRaNa	"?y"	"?x")"crlf)
)
;Ex.	The Emir of Kuwait died.

(defrule rule42
(link_name-link_expansion    ?lname   S I $?vars)
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_lnode-link_rnode Pa ?x ?z)
=>
(printout	?*fp*	"(using-parser-ids 	subject-subject_samAnAXikaraNa	"?y"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule42	subject-subject_samAnAXikaraNa	"?y"	"?z")"crlf)
)
;Ex.	 Are you ready for next week

(defrule rule45
(link_name-link_lnode-link_rnode EAy|EAh|EA|EAm|EAxk|Ec ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	viSeRaNa-viSeRaka	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule45	viSeRaNa-viSeRaka	"?y"	"?x")"crlf)
)
;Ex.    She is a VERY GOOD player. John is less intelligent than Tom. John is more intelligent than Tom.We must adopt only good values from other cultures. "HOW STUPID can you be?" He was not as late as I expected. He is as smart.

(defrule rule46
(link_name-link_lnode-link_rnode EE ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule46	kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka	"?y"	"?x")"crlf)
)
;Ex.	"He ran VERY QUICKLY". 

(defrule rule50
(link_name-link_lnode-link_rnode DG ?a ?b)
(link_name-link_lnode-link_rnode DG ?c ?d)
(link_name-link_lnode-link_rnode ER ?b ?d)
=>
(printout	?*fp*	"(using-parser-ids 	jiwanA-wulnAwmaka_viSeRaNa	"?a"	"?b")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule50	jiwanA-wulnAwmaka_viSeRaNa	"?a"	"?b")"crlf)	

(printout	?*fp*	"(using-parser-ids 	uwanA-wulnAwmaka_viSeRaNa	"?c"	"?d")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule50	uwanA-wulnAwmaka_viSeRaNa	"?c"	"?d")"crlf)
)
;Ex.	The FASTER it is, the MORE they will like it

(defrule rule52
(link_name-link_lnode-link_rnode G ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	proper_noun-waxviSiRta_proper_noun	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule52	proper_noun-waxviSiRta_proper_noun	"?x"	"?y")"crlf)
)
;Ex.	"GEORGE HERBERT WALKER BUSH is here."

(defrule rule53
(link_name-link_lnode-link_rnode GN ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	saMjFA-saMjFA_samAnAXikaraNa	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule53	saMjFA-saMjFA_samAnAXikaraNa	"?y"	"?x")"crlf)
)
;Ex.	 "The ACTOR Eddie MURPHY attended the event".

(defrule rule56
(link_name-link_lnode-link_rnode MG ?x ?y)
(link_name-link_lnode-link_rnode JG ?y ?z)
(linkid-word-node_cat ?y ?viBakwi ?)
=>
(printout	?*fp*	"(using-parser-ids 	viSeRya-"?viBakwi"_saMbanXI	"?x"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule56	viSeRya-"?viBakwi"_saMbanXI	"?x"	"?z")"crlf)
)
;Ex.	 "The EMIR OF Kuwait is here".

(defrule vi_ya-viB_vi_Na
(declare (salience 200))
(link_name-link_lnode-link_rnode Pa  ?v  ?vi_ya)
(link_name-link_lnode-link_rnode MVp ?vi_ya ?prep)
(link_name-link_expansion    ?J J $?ver)
(link_name-link_lnode-link_rnode ?J  ?prep ?vi_Na)
(linkid-word-node_cat ?prep  ?viBakwi ?)
=>
(assert (got_relation_for_MVp_link))
(printout	?*fp*	"(using-parser-ids 	viSeRya-"?viBakwi"_saMbanXI	"?vi_ya"	"?vi_Na")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	vi_ya-viB_vi_Na	viSeRya-"?viBakwi"_saMbanXI	"?vi_ya"	"?vi_Na")"crlf)
)
;Ex.     She is very careful about her work. She is angry about the decision.

(defrule vi_ya-viB_vi_Na_1
(declare (salience 200))
(link_name-link_lnode-link_rnode Ma  ?v  ?vi_ya)
(link_name-link_lnode-link_rnode MVp ?vi_ya ?prep)
(link_name-link_expansion    ?J J $?ver)
(link_name-link_lnode-link_rnode ?J  ?prep ?vi_Na)
(linkid-word-node_cat ?prep  ?viBakwi ?)
=>
(assert (got_relation_for_MVp_link))
(printout	?*fp*	"(using-parser-ids 	viSeRya-"?viBakwi"_saMbanXI	"?vi_ya"	"?vi_Na")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	vi_ya-viB_vi_Na_1	viSeRya-"?viBakwi"_saMbanXI	"?vi_ya"	"?vi_Na")"crlf)
)
;Ex.     We need a programmer knowledgeable about Lisp.

(defrule dummy-jo_samAnAXikaraNa
(declare (salience 200))
(root-verbchunk-tam-parser_chunkids ? ? $?chunks ?y)
(link_name-link_lnode-link_rnode Bp|Bs ?z ?y)
(link_name-link_expansion    ?lname1 R n $?vars1)
(link_name-link_lnode-link_rnode ?lname1 ?z ?a)
=>
(printout	?*fp*	"(using-parser-ids 	viSeRya-jo_samAnAXikaraNa	"?z"	"10000")"	crlf)	
(printout	?*fp*	"(using-parser-ids 	kriyA-object	"?y	"	10000)"	crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	dummy-jo_samAnAXikaraNa	kriyA-object	"?y"	10000)"	crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	dummy-jo_samAnAXikaraNa	viSeRya-jo_samAnAXikaraNa	"?z"	"10000")"	crlf)	
(printout	?*hmng_fp*	"(id-HM-source	10000	jo	Relative_clause)"	crlf)	
(printout	?*open-orign*	"(id-original_word	10000	who)"	crlf)
)
;Ex.  The dog I chased was black .


(defrule subject_insertion
(declare (salience 200))
(link_name-link_expansion    ?S   S $?var)
(link_name-link_lnode-link_rnode  ?S  ?x ?y)
(id-original_word ?id0 ?word);to get word, that can be inserted as subject
(link_name-link_lnode-link_rnode  Pv  ?y ?z)
(link_name-link_lnode-link_rnode  ?S  ?x ?verb)
(root-verbchunk-tam-parser_chunkids ? ? ? $?c_ids)
(parserid-wordid  ?x ?id0);including this line the next two lines are to purely integer ids bcoz in link relations the ids we've are in term of Lids, e.g. L1, L2 etc.
(parserid-wordid  ?y ?id1)
(parserid-wordid  ?verb ?id2)
(test (and (> ?id2 ?id1) (member$ ?verb $?c_ids)));the > function is to stop firing this relation with the first verb (asked) in the sentence
=>
(printout       ?*fp*   "(using-parser-ids         kriyA-subject       "(nth$  (length $?c_ids)    $?c_ids)"    "10001")"       crlf)
(printout       ?*rel_debug*    "(Rule-Rel-ids	subject_insertion	kriyA-subject       "(nth$  (length $?c_ids)    $?c_ids)"    "10001")"       crlf)
  
(printout       ?*hmng_fp*      "(id-HM-source  10001   mng_to_be_decided_for_inserted_sub    "?id0")"       crlf)
(printout       ?*open-orign*   "(id-original_word      10001   "?word")"   crlf)
)
;Ex.  She was asked about the pay increase but made no comment . 

(defrule dummy_id
(link_name-link_lnode-link_rnode  MVs  ?x ?y)
(link_name-link_lnode-link_rnode  Mv   ?y ?z)
(linkid-word-node_cat ?b when ?)
=>
(printout	?*fp*	"(using-parser-ids 	wall_conjunction	1000)"	crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	dummy_id	wall_conjunction	1000)"	crlf)	
(printout	?*fp*	"(using-parser-ids 	kriyA-kAlavAcI	"?x	"	1000)"	crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	dummy_id	kriyA-kAlavAcI	"?x"	1000)"	crlf)	
(printout	?*hmng_fp*	"(id-HM-source	1000	waba	Relative_clause)"	crlf)	
(printout	?*open-orign*	"(id-original_word	1000	then)"	crlf)
)
;Ex.  We will go when you are ready. She cried when asked about it.

(defrule rule_OF_kqxanwa
(declare (salience 500)) 
(link_name-link_expansion  ?D  D $?)
(link_name-link_lnode-link_rnode ?D ?det ?a)
?f0 <-(link_name-link_lnode-link_rnode OF ?a ?b)
(link_name-link_expansion  ?J  J $?var)
(link_name-link_lnode-link_rnode ?J ?b ?c)
(linkid-word-node_cat ?b ?viBakwi ?)
=>
(retract ?f0);This condition is added to stop rule2, which shows kriyA_object relation
(printout	?*fp*	"(using-parser-ids 	kqxanwa-"?viBakwi"_saMbanXI	"?a"	"?c")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule_OF_kqxanwa	kqxanwa-"?viBakwi"_saMbanXI	"?a"	"?c")"crlf)
)
;Ex. He made a mistake in the inviting of John.

(defrule rule60
(declare (salience 103))
(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
(link_name-link_lnode-link_rnode  ?lname  ?x ?y)
(link_name-link_lnode-link_rnode Ost|Opt ?y ?z)
(link_name-link_lnode-link_rnode Bs|Bp ?z ?a)
(link_name-link_lnode-link_rnode R ?b ?c)
=>
(printout	?*rel_debug*	"(Rule-Rel-ids	rule60	subject-subject_samAnAXikaraNa	"?x"	"?z")"crlf)	
(printout	?*fp*	"(using-parser-ids 	subject-subject_samAnAXikaraNa	"?x"	"?z")"crlf)
)
;Ex. those are the boys who want to do it", They were my parents who wanted to do it

(defrule sub-sub_s
(declare (salience 103))
(link_name-link_expansion    ?lname   S I $?vars)
(link_name-link_lnode-link_rnode  ?lname  ?x ?y)
(link_name-link_lnode-link_rnode Ost|Opt  ?x  ?z)
=>
(printout	?*rel_debug*	"(Rule-Rel-ids	sub-sub_s	subject-subject_samAnAXikaraNa	"?y"	"?z")"crlf)	
(printout	?*fp*	"(using-parser-ids 	subject-subject_samAnAXikaraNa	"?y"	"?z")"crlf)
)
;Ex. Is he my brother.

(defrule OF_1
(declare (salience 500))
?f0 <- (link_name-link_lnode-link_rnode OF ?a ?b)
(link_name-link_lnode-link_rnode J|Js|Jp ?b ?c)
(link_name-link_lnode-link_rnode Pa ?d ?a)
=>
(retract ?f0);This condition is added to stop rule2, which shows kriyA_object relation) ;Date 21/02/09
;(printout	?*fp*	"(using-parser-ids 	saMjFA"/"sarvanAma-para	"?c"	"?b")"crlf)	
;(printout	?*rel_debug*	"(Rule-Rel-ids	OF_1	saMjFA"/"sarvanAma-para	"?c"	"?b")"crlf) ; commented on 2-1-10 bcoz there is no use of this relation.

(printout	?*fp*	"(using-parser-ids 	kriyA-of_saMbanXI	"?d"	"?c")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	OF_1	kriyA-of_saMbanXI	"?d"	"?c")"crlf)
)
;Ex.I am proud of Rama". are they proud of him".I am proud of  you.

(defrule OF_2
(declare (salience 5))
?f0 <- (link_name-link_lnode-link_rnode OF ?a ?b)
(link_name-link_lnode-link_rnode J|Js|Jp ?b ?c)
(not(link_name-link_lnode-link_rnode Wq ?which ?a)) ;Ex.4 this condition is: Which of your parents do you feel closer to?
=>
(retract ?f0);This condition is added to stop rule2, which shows kriyA_object relation) ;Date 21/02/09
(printout	?*fp*	"(using-parser-ids 	kriyA-of_saMbanXI	"?a"	"?c")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	OF_2	kriyA-of_saMbanXI	"?a"	"?c")"crlf)
)
;Ex.   He talks, mostly of revolution.	

(defrule OF_3
(declare (salience 215))
(link_name-link_expansion  ?CO    C O $?vari)
(link_name-link_lnode-link_rnode  ?CO  ?a  ?y)
(link_name-link_expansion  ?S     S  $?var)
(link_name-link_lnode-link_rnode  ?S  ?y ?v) 
?f0 <- (link_name-link_lnode-link_rnode OF ?a ?b)
(link_name-link_lnode-link_rnode J|Js|Jp ?b ?c)
=>
(retract ?f0);This condition is added to stop rule2, which shows kriyA_object relation) ;Date 21/02/09
(printout	?*fp*	"(using-parser-ids 	viSeRya-of_saMbanXI	"?a"	"?c")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	OF_3	viSeRya-of_saMbanXI	"?a"	"?c")"crlf)	

(printout	?*fp*	"(using-parser-ids 	kriyA-of_saMbanXI	"?v"	"?c")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	OF_3	kriyA-of_saMbanXI	"?v"	"?c")"crlf)
)
;Ex.   Because of the rain we decided to stay home.

(defrule  kriyA-prep_saMbanXI
(declare (salience 500))
(link_name-link_lnode-link_rnode Pam ?kriyA ?s_s)
(link_name-link_lnode-link_rnode MVp ?s_s ?prep)
(link_name-link_lnode-link_rnode Wq ?a ?v_s)
(linkid-word-node_cat ?prep ?viBakwi ?)
=>
;(retract ?f0);This condition is added to stop rule2, which shows kriyA_object relation) ;Date 21/02/09
(printout	?*fp*	"(using-parser-ids 	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?v_s")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-prep_saMbanXI	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?v_s")"crlf)
)
;Ex.  Which of your parents do you feel closer to?

(defrule rule_OF
(declare (salience 500)) ;This condition is added to stop rule2, which shows kriyA_object relation. ;Date 21/02/09 
?f0 <-(link_name-link_lnode-link_rnode OF ?a ?b)
(link_name-link_lnode-link_rnode Mgp ?b ?c)
(link_name-link_lnode-link_rnode Pa ?d ?a)
=>
(retract ?f0);This condition is added to stop rule2, which shows kriyA_object relation)
(printout	?*fp*	"(using-parser-ids 	kriyA-of_saMbanXI	"?d"	"?c")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule_OF	kriyA-of_saMbanXI	"?d"	"?c")"crlf)
)
;Ex. I have always been afraid of flying .

(defrule rule_OF_PP
(declare (salience 500)) ;This condition is added to stop rule2, which shows kriyA_object relation.
?f0 <-(link_name-link_lnode-link_rnode OF ?a ?b)
(link_name-link_lnode-link_rnode Mgp ?b ?c)
(link_name-link_lnode-link_rnode PP ?d ?a)
=>
(retract ?f0);This condition is added to stop rule2, which shows kriyA_object relation)
(printout	?*fp*	"(using-parser-ids 	kriyA-of_saMbanXI	"?a"	"?c")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule_OF_PP	kriyA-of_saMbanXI	"?a"	"?c")"crlf)
)
;Ex. I have often dreamed of going to distant places .

(defrule rule62
(link_name-link_lnode-link_rnode OD ?a ?b)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-measurement	"?a"	"?b")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule62	kriyA-measurement	"?a"	"?b")"crlf)
)	;ex.	
;Ex.	GM stock fell five points".GM stock fell 2%". GM stock fell 2 1/2". the water column rose four feet

(defrule rule63
(declare (salience 104))
(link_name-link_lnode-link_rnode TO|TOt ?x ?y)
(link_name-link_lnode-link_rnode I ?y ?z)
(link_name-link_lnode-link_rnode Pa ?b ?x)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-ne_ke_liye	"?z"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule63	kriyA-ne_ke_liye	"?z"	"?y")"crlf)	

(printout	?*fp*	"(using-parser-ids 	kriyA_mUla-object	"?b","?x"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule63	kriyA_mUla-object	"?b","?x"	"?z")"crlf)
)
;Ex. I am eager to read 
;	NOTE: I HAVE WRITTEN TWO DIFFERENT RULES; RULE55 AND RULE63 TO HANDLE THE SENTENCES LIKE  "I am eager to read it" AND "I am eager to read" BECAUSE THE 55TH RULE WAS NOT WORKING FOR "I am eager to read"

(defrule subject_opener
(link_name-link_expansion  ?CO    C O $?)
(link_name-link_lnode-link_rnode  ?CO ?x ?y)
(link_name-link_expansion  ?S    S $?)
(link_name-link_lnode-link_rnode  ?S ?y ?z)
(root-verbchunk-tam-parser_chunkids ? ? $?chunks ?z)
(parser_id-root ?z ?be)
(not (got_relation_for_CO))
=>
(if (eq ?be be) then  
(printout	?*fp*	"(using-parser-ids 	subject-subject_samAnAXikaraNa	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	subject_opener	subject-subject_samAnAXikaraNa	"?y"	"?x")"crlf)	
else
;(printout	?*fp*	"(using-parser-ids 	kriyA-subject_samAnAXikaraNa	"?y"	"?x")"crlf)   commenting this because this is not useful. 01/10/09	
;(printout	?*rel_debug*	"(Rule-Rel-ids	subject_opener	kriyA-subject_samAnAXikaraNa	"?y"	"?x")"crlf)
)
)
;Ex.	On Tuesday, they went to a movie. Apparently, they went to a movie. If RAma comes then we will go

(defrule subject_opener_1
(link_name-link_expansion  ?CO    C O $?)
(link_name-link_lnode-link_rnode  ?CO ?x ?y)
(link_name-link_expansion  ?S    S $?)
(link_name-link_lnode-link_rnode  ?S ?y ?z)
(not  (got_relation_for_CO))
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-sentence_opener	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	subject_opener_1	kriyA-sentence_opener	"?z"	"?x")"crlf)
)
;Ex.  Once upon a time there was a king whose name was Ashoka. 
;This is a general rule to handle sentence openers.

(defrule rule73
(link_name-link_lnode-link_rnode Jm ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	jyAxA-preposition	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule73	jyAxA-preposition	"?x"	"?y")"crlf)
)
;Ex.	He did it in more. He did it by more.  He did it in more

(defrule rule75
(link_name-link_lnode-link_rnode LI ?x ?y)
(linkid-word-node_cat ?y ?viBakwi ?)
(link_name-link_expansion ?J J $?vari)
(link_name-link_lnode-link_rnode ?J ?y ?z)
(link_name-link_expansion ?S S $?var)
(link_name-link_lnode-link_rnode ?S ?sub ?kri)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids)
(test (member$ ?kri $?chunk_ids))
;=>
;(retract ?f0)
;(printout	?*fp*	"(using-parser-ids 	kriyA-dummy_subject	"(nth$	(length	$?chunk_ids)	$?chunk_ids)"	
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-"?viBakwi"_saMbanXI	"(nth$	(length	$?chunk_ids)	$?chunk_ids)"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule75	kriyA-"?viBakwi"_saMbanXI	"(nth$	(length	$?chunk_ids)	$?chunk_ids)"	"?z")"crlf)
)
;Ex.	"I FEEL LIKE a fool." I am feeling like a fool

(defrule rule78
(link_name-link_lnode-link_rnode NT ?x ?y)
(link_name-link_lnode-link_rnode I ?y ?z)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kriyA_niReXaka	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule78	kriyA-kriyA_niReXaka	"?z"	"?x")"crlf)
)
;Ex.	I told you not to come.

(defrule N_kriyA_niReXaka 
(link_name-link_expansion    ?S   S  $?vars)
(link_name-link_lnode-link_rnode ?S  ?x  ?y)
(link_name-link_lnode-link_rnode NT|N  ?y ?z)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids)
(test (member$ ?y $?chunk_ids))
=>
(printout       ?*fp*   "(using-parser-ids         kriyA-kriyA_niReXaka    "(nth$  (length $?chunk_ids)    $?chunk_ids)"    "?z")"crlf)
(printout       ?*rel_debug*    "(Rule-Rel-ids  N_kriyA_niReXaka   kriyA-kriyA_niReXaka    "(nth$  (length $?chunk_ids)    $?chunk_ids)"    "?z")"crlf)
)
;Ex. He is not coming. He is not related to me.

(defrule rule80
(link_name-link_lnode-link_rnode Paf ?verb ?m-up)
(link_name-link_lnode-link_rnode EAm ?m ?m-up)
(link_name-link_lnode-link_rnode MVt ?m-up ?t)
(linkid-word-node_cat ?m ?more ?)
(link_name-link_expansion  ?O O ? c)
?f0<-(link_name-link_lnode-link_rnode ?O  ?t ?t-up)
=>
(retract ?f0)
(printout	?*fp*	"(using-parser-ids 	"?more"_upameya-than_upamAna	"?m-up"	"?t-up")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule80	"?more"_upameya-than_upamAna	"?m-up"	"?t-up")"crlf)
)
;Ex.	He is more intelligent than John. He is more intelligent than the boys

(defrule rule81
(link_name-link_expansion    ?lname   S ~F $?vars)
(link_name-link_lnode-link_rnode ?lname  ?y  ?z)
(link_name-link_lnode-link_rnode Ost|Opt ?z ?x)
=>
(printout	?*fp*	"(using-parser-ids 	subject-subject_samAnAXikaraNa	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule81	subject-subject_samAnAXikaraNa	"?y"	"?x")"crlf)
)
;Ex.	I am a player, Anand is a player, Is Anand  a doctor, Are you a doctor
(defrule sub_samA_been
(link_name-link_expansion    ?S   S ~F $?vars)
(link_name-link_lnode-link_rnode ?S  ?y  ?z)
(link_name-link_lnode-link_rnode PPf  ?z  ?been)
(link_name-link_lnode-link_rnode Ost|Opt|Pa|Paf ?been ?sub_samA)
=>
(printout	?*fp*	"(using-parser-ids 	subject-subject_samAnAXikaraNa	"?y"	"?sub_samA")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	sub_samA_been	subject-subject_samAnAXikaraNa	"?y"	"?sub_samA")"crlf)
)
;Ex.    The Richard Milhous Nixon LIBRARY has been a big SUCCESS. The coverage on TV and on the radio has been terrible. I have always been afraid of flying. 
(defrule rule84
(link_name-link_lnode-link_rnode Jw|JQ ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	sarvanAma-preposition	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule84	sarvanAma-preposition	"?y"	"?x")"crlf)
)
;Ex.	To whom were you speaking? In which room were you sleeping? To which person were you speaking? The room in which I was working was cold

(defrule rule85_3
(declare (salience 250))
(link_name-link_expansion  ?Js J $?vari)
(link_name-link_lnode-link_rnode ?Js  ?x ?b)
?f0<- (link_name-link_lnode-link_rnode Jw|JQ ?x ?y)
?f1<- (link_name-link_lnode-link_rnode Wj|Mj ?z ?x)
(link_name-link_lnode-link_rnode Qd|Cs  ?x ?kri)
(link_name-link_expansion  ?S S  $?var)
(link_name-link_lnode-link_rnode ?S  ?kri ?sub)
;(linkid-word-node_cat ?x to|To|with ?) ;Is that the film in which he kills his mother?
(linkid-word-node_cat ?x ?viBakwi ?)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids)
(test (member$ ?kri $?chunk_ids))
=>
(retract ?f0 ?f1)
(printout	?*fp*	"(using-parser-ids 	kriyA-dummy_subject	kriyA-"?viBakwi"_saMbanXI	"(nth$	(length	$?chunk_ids)	$?chunk_ids)"	"?b")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule85_3	kriyA-"?viBakwi"_saMbanXI	"(nth$	(length	$?chunk_ids)	$?chunk_ids)"	"?b")"crlf)
)
;Ex.   To which person were you speaking?, The man to whom I was speaking was tall. 
(defrule rule85
(declare (salience 200))
?f0<- (link_name-link_lnode-link_rnode Jw|JQ ?x ?y)
?f1<- (link_name-link_lnode-link_rnode Wj|Mj ?z ?x)
(link_name-link_lnode-link_rnode Qd|Cs ?x ?sub)
(link_name-link_expansion  ?S S  $?var)
(link_name-link_lnode-link_rnode ?S ?sub  ?kriyA)
;(linkid-word-node_cat ?x to|To|with ?) ;Is that the film in which he kills his mother?
(linkid-word-node_cat ?x ?viBakwi ?)
=>
(retract ?f0 ?f1)
(printout	?*fp*	"(using-parser-ids 	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule85	kriyA-"?viBakwi"_saMbanXI_11111	"?kriyA"	"?y")"crlf)
)
;Ex.	To whom were you speaking? To which person were you speaking?, The man to whom I was speaking was tall. The man with whom I play tennis is here. Is that the film in which he kills his mother?

(defrule rule85_1
(declare (salience 210))
(link_name-link_expansion    ?Js    J $?var)
(link_name-link_lnode-link_rnode  ?Js  ?x ?head)
?f0<- (link_name-link_lnode-link_rnode Jw|JQ ?x ?y)
?f1<- (link_name-link_lnode-link_rnode Wj|Mj ?z ?x)
(link_name-link_lnode-link_rnode Qd|Cs ?x ?sub)
(link_name-link_expansion  ?S S  $?vari)
(link_name-link_lnode-link_rnode ?S ?sub  ?kriyA)
;(linkid-word-node_cat ?x to|To|with ?) ;Is that the film in which he kills his mother?
(linkid-word-node_cat ?x ?viBakwi ?)
=>
(retract ?f0 ?f1)
(printout	?*fp*	"(using-parser-ids 	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?head")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule85_1	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?head")"crlf)
)
;Ex.    To which person were you speaking?

(defrule rule87
(link_name-link_lnode-link_rnode Zs|Zc ?x ?y)
(linkid-word-node_cat ?x as ?)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kriyA_viSeRaNa	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule87	kriyA-kriyA_viSeRaNa	"?y"	"?x")"crlf)
)
;Ex.	As we expected, he was late". He was not as late as I expected

(defrule rule90
(link_name-link_lnode-link_rnode NIa ?a ?b)
(link_name-link_lnode-link_rnode NId ?a ?c)
(link_name-link_lnode-link_rnode NIc ?a ?d)
(linkid-word-node_cat ?b ?word ?)
(linkid-word-node_cat ?d ?word1 ?)
=>
(printout	?*fp*	"(using-parser-ids 	"?word"	se	"?word1"	waka	"?b",	"?c",	"?d",	"?c")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule90	"?word"	se	"?word1"	waka	"?b",	"?c",	"?d",	"?c")"crlf)
)
;Ex.	I have between 5 and 20 dogs



;kaaraka relations:-

;aXikaraNa_kAraka:	 rule16, rule17, rule18, rule19, rule41, rule43, rule64, rule65, rule66, rule67 rule83 and rule125 are also for aXikaraNa kAraka

(defrule rule93
(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(root-verbchunk-tam-parser_chunkids $? ?y ?head)
(link_name-link_lnode-link_rnode Ss*q|Spxq ?a ?b)
(test (neq ?lname Ss*q))
=>
(printout	?*fp*	"(using-parser-ids 	subject-vAkyasamAnAXikarNa	"?a"	"?head")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule93	subject-vAkyasamAnAXikarNa	"?a"	"?head")"crlf)
)
;Ex.	The question is who killed Nicole.  The question was  who killed Nicole.  The questions are  who killed Nicole.

(defrule rule94
(declare (salience 3))
(link_name-link_lnode-link_rnode EAh ?x ?y)
(link_name-link_lnode-link_rnode SI|SIs|SIs*b|SIp|SIp*i|SIpx|SXI ?z ?a)
=>
(printout	?*fp*	"(using-parser-ids 	subject-subject_samAnAXikaraNa	"?a"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule94	subject-subject_samAnAXikaraNa	"?a"	"?y")"crlf)
)
;Ex.	"How stupid  can you be?"

(defrule rule95
(declare (salience 4))
(link_name-link_lnode-link_rnode EBm ?x ?y)
(linkid-word-node_cat ?y not ?)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kriyA_niReXaka	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule95	kriyA-kriyA_niReXaka	"?x"	"?y")"crlf)
)
;Ex.	you are not late. he is not late.  He is not a doctor


;(defrule rule98
;(link_name-link_lnode-link_rnode ECa ?x ?y)
;(link_name-link_lnode-link_rnode EAm ?y ?z)
;=>
;(printout	?*fp*	"(using-parser-ids 	Ora-jyAxA	"?x"	"?y")"crlf)	
;(printout	?*rel_debug*	"(Rule-Rel-ids	rule98	Ora-jyAxA	"?x"	"?y")"crlf)	

;(printout	?*fp*	"(using-parser-ids 	jyAxA-wulanAwmaka_viSeRaNa	"?y"	"?z")"crlf)	
;(printout	?*rel_debug*	"(Rule-Rel-ids	rule98	jyAxA-wulanAwmaka_viSeRaNa	"?y"	"?z")"crlf)	
;)
;Ex.	How much more efficient are they?
;currently I don't find any use of this relation. dt: 19/06/09

(defrule rule99
(link_name-link_expansion    ?lname    D $?vars)
(link_name-link_lnode-link_rnode  ?lname  ?x ?y)
(link_name-link_lnode-link_rnode ECn ?z ?x)
(link_name-link_lnode-link_rnode H ?a ?z)
=>
(printout	?*fp*	"(using-parser-ids 	kiwanA-Ora	"?a","?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule99	kiwanA-Ora	"?a","?z"	"?x")"crlf)	

(printout	?*fp*	"(using-parser-ids 	Ora-object	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule99	Ora-object	"?x"	"?y")"crlf)
)
;Ex.	How much more money do you have?

(defrule rule101
(link_name-link_lnode-link_rnode MVi ?z ?y)
(link_name-link_lnode-link_rnode I ?y ?a)
(not (link_name-link_lnode-link_rnode Pa|Paf|Pam ?x ?z))
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kriyArWa_kriyA	"?z"	"?a")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule101	kriyA-kriyArWa_kriyA	"?z"	"?a")"crlf)
)
;Ex.	I had to run fast to catch the bus. I went to read.
;Ex.	I had to run fast to catch the bus.  went to walk. I went to read. I want to do it

(defrule rule104
(link_name-link_lnode-link_rnode EN ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	viSeRya-viSeRaka	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule104	viSeRya-viSeRaka	"?y"	"?x")"crlf)
)
;Ex.	"The class has NEARLY FIFTY students". It will cost almost 400 million dollars.  They died    almost 400 million years ago. "I have about 50 dollars".

(defrule rule106
(link_name-link_lnode-link_rnode QI*d ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-praSnavAcI	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule106	kriyA-praSnavAcI	"?x"	"?y")"crlf)
)
;Ex.	I wonder what  to buy. I wonder where  to go.  I wonder when  to go. I am wondering which question to ask first. 
	
(defrule QI+R+B
(link_name-link_expansion ?QI   Q I $?var d)
(link_name-link_lnode-link_rnode  ?QI    ?x ?ob)
(link_name-link_expansion ?B    B $?vars)
(link_name-link_lnode-link_rnode  ?B     ?ob ?v)
(link_name-link_expansion ?R    R $?vari)
(link_name-link_lnode-link_rnode  ?R     ?ob  ?sub)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-object	"?v"	"?ob")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	QI+R+B	kriyA-object	"?v"	"?ob")"crlf)
)
;Ex.    I wonder what  to buy. I wonder where  to go.  I wonder when  to go. I am wondering which question to ask first. 

(defrule MVp_QI
(link_name-link_lnode-link_rnode QI ?x ?y)
(link_name-link_lnode-link_rnode MVp	?z ?x)
(linkid-word-node_cat ?x ?viBakwi ?)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-"?viBakwi"_saMbanXI	"?z"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	MVp_QI	kriyA-"?viBakwi"_saMbanXI	"?z"	"?y")"crlf)
)
;Ex.    We had an argument over whether it was a good movie.

(defrule rule109
(link_name-link_lnode-link_rnode Om ?x ?y)
(link_name-link_lnode-link_rnode MVa ?x ?z)
=>
(printout	?*fp*	"(using-parser-ids 	jyAxA-kriyA_viSeRaNa	"?y"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule109	jyAxA-kriyA_viSeRaNa	"?y"	"?z")"crlf)
)
;Ex.	He runs more quickly. He runs more quickly than do I .

(defrule rule110
(link_name-link_lnode-link_rnode Jr ?x ?y)
(linkid-word-node_cat ?x of ?)
(linkid-word-node_cat ?y whom ?)
=>
(printout	?*fp*	"(using-parser-ids 	jinameM-se	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule110	jinameM-se	"?y"	"?x")"crlf)
)
;Ex.	The doctors, many of whom are surgeons, were angry.

(defrule rule111
(link_name-link_lnode-link_rnode EEy ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA_viSeRaNa-viSeRaka	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule111	kriyA_viSeRaNa-viSeRaka	"?y"	"?x")"crlf)
)
;Ex.	He runs as quickly. He runs as fast.

(defrule rule111_1
(link_name-link_lnode-link_rnode EZ ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	viSeRaNa-viSeRaka	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule111_1	viSeRaNa-viSeRaka	"?y"	"?x")"crlf)
)
;Ex.  I did it almost as quickly as he did.

(defrule rule111_2
(link_name-link_lnode-link_rnode  MVzp   ?x ?y)
(link_name-link_lnode-link_rnode  CX     ?y ?v)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kriyA_viSeRaNa	"?v"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule111_2	kriyA-kriyA_viSeRaNa	"?v"	"?y")"crlf)
)
;Ex.  I did it almost as quickly as he did.

(defrule rule113
(link_name-link_lnode-link_rnode AM ?a ?b)
(linkid-word-node_cat ?b much ?)
=>
(printout	?*fp*	"(using-parser-ids 	uwanA	"?a"	"?b")"crlf).	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule113	uwanA	"?a"	"?b")"crlf)
)
;Ex.	He earns as much money.

(defrule rule114
(link_name-link_lnode-link_rnode CPi ?a ?b)
(link_name-link_lnode-link_rnode SFsi ?c ?b)
=>
(printout	?*fp*	"(using-parser-ids 	EsA-lagawA_hE	"?c"	"?b")"crlf).	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule114	EsA-lagawA_hE	"?c"	"?b")"crlf)
)
;Ex.	The President is busy, it seems.

(defrule rule115
(link_name-link_lnode-link_rnode Pvf ?a ?b)
=>
(printout	?*fp*	"(using-parser-ids 	honA_kriyA-passive_kriyA	"?a"	"?b")"crlf).	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule115	honA_kriyA-passive_kriyA	"?a"	"?b")"crlf)
)
;Ex.	He earns as much  as was expected. It was known that it was a problem.


(defrule rule119
(link_name-link_lnode-link_rnode Rnx ?a ?b)
(linkid-word-node_cat ?a only ?)
=>
(printout	?*fp*	"(using-parser-ids 	kevala-subject	"?a"	"?b")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule119	kevala-subject	"?a"	"?b")"crlf)
)	
;Ex	Only you would say that.

(defrule rule120
(link_name-link_lnode-link_rnode Rnx ?a ?b)
(linkid-word-node_cat ?a even ?)
=>
(printout	?*fp*	"(using-parser-ids 	yahAz_waka_ki-karwA	"?a"	"?b")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule120	yahAz_waka_ki-karwA	"?a"	"?b")"crlf)
)	
;Ex	Even you would say that.

(defrule rule121
(link_name-link_lnode-link_rnode H ?a ?b)
(linkid-word-node_cat ?b many ?)
=>
(printout	?*fp*	"(using-parser-ids 	kiwane	"?a"	"?b")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule121	kiwane	"?a"	"?b")"crlf)
)
;Ex.	How many years did it last?

(defrule rule122
(link_name-link_lnode-link_rnode H ?a ?b)
(linkid-word-node_cat ?b much ?)
=>
(printout	?*fp*	"(using-parser-ids 	kiwanA	"?a"	"?b")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule122	kiwanA	"?a"	"?b")"crlf)
)
;Ex.	How much more money do you have?

(defrule rule123
(link_name-link_lnode-link_rnode EL ?a ?b)
=>
(printout	?*fp*	"(using-parser-ids 	sarvanAma-Ora	"?a"	"?b")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule123	sarvanAma-Ora	"?a"	"?b")"crlf)
)
;Ex.	What else is new? Someone else is coming.

(defrule rule133
(link_name-link_lnode-link_rnode Eq ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-vAkyakarma	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule133	kriyA-vAkyakarma	"?x"	"?y")"crlf)
)
;Ex.	The players, she said, played well.

(defrule kriyA-vAkyakarma
(link_name-link_lnode-link_rnode  Wi ?x ?y)
(link_name-link_lnode-link_rnode Pa  ?y ?z)
(root-verbchunk-tam-chunkids ? said $? ?said)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-vAkyakarma	"?said"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-vAkyakarma	kriyA-vAkyakarma	"?said"	"?y")"crlf)
)
;Ex.    keep quiet, she said. Be careful, she said.

(defrule kriyA-kqxanwa_karma
(link_name-link_lnode-link_rnode  QI   ?x ?y)
(link_name-link_lnode-link_rnode  TOn  ?y ?z)
(link_name-link_lnode-link_rnode  I    ?z ?a)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kqxanwa_karma	"?x"	"?a")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-kqxanwa_karma	kriyA-kqxanwa_karma	"?x"	"?a")"crlf)
)
;Ex. I wonder where to go. 
;Ex. I wonder, where to go. Parser failed in this sentence.  

(defrule kriyA-vAkyakarma_2
(link_name-link_expansion ?S S $?var)
(link_name-link_lnode-link_rnode  ?S   ?x ?y)
(link_name-link_expansion ?I  I $?vari d)
(link_name-link_lnode-link_rnode  ?I   ?y ?kri)
(link_name-link_expansion ?QI Q I $?va)
(link_name-link_lnode-link_rnode  ?QI   ?kri  ?z)
(link_name-link_lnode-link_rnode  H  ?z ?a)
(link_name-link_expansion ?B B $?varia)
(link_name-link_lnode-link_rnode  ?B  ?a  ?va_k)
=>
;(printout	?*fp*	"(using-parser-ids 	kriyA-kqxanwa_vAkyakarma	"?kri"	"?va_k")"crlf)	
;(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-vAkyakarma_2	kriyA-kqxanwa_vAkyakarma	"?kri"	"?va_k")"crlf)	

(printout	?*fp*	"(using-parser-ids 	kriyA-vAkyakarma	"?kri"	"?va_k")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-vAkyakarma_2	kriyA-vAkyakarma	"?kri"	"?va_k")"crlf)
)
;Ex. I did not know how much to bring.
 
(defrule kriyA-vAkyakarma_3
(link_name-link_expansion ?I  I $?var)
(link_name-link_lnode-link_rnode  ?I   ?x ?y)
(link_name-link_lnode-link_rnode  MVz  ?y ?z)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-vAkyakarma	"?y"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-vAkyakarma_3	kriyA-vAkyakarma	"?y"	"?z")"crlf)
)
;Ex.  

(defrule rule135
(link_name-link_expansion ?S S F $?var)
?f0<- (link_name-link_lnode-link_rnode ?S ?x ?y)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids)
(test (member$ ?y $?chunk_ids))
=>
(retract ?f0)
(printout	?*fp*	"(using-parser-ids 	kriyA-dummy_subject	"(nth$	(length	$?chunk_ids)	$?chunk_ids)"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule135	kriyA-dummy_subject	"(nth$	(length	$?chunk_ids)	$?chunk_ids)"	"?x")"crlf)
)
;Ex.  It may not be possible to fix the problem. 
;Ex.    It is likely that Jane will go. It  is Jane who wants to do it.

(defrule rule138
(declare (salience 200))
(link_name-link_lnode-link_rnode SFs|SFsi ?x ?y)
(link_name-link_lnode-link_rnode Osi ?y ?z)
(link_name-link_lnode-link_rnode R ?y ?c)
(link_name-link_lnode-link_rnode RS ?c ?a)
=>
;(printout	?*fp*	"(using-parser-ids 	dummy_subject-subject_samAnAXikaraNa	"?x"	"?z")"crlf)	
;(printout	?*rel_debug*	"(Rule-Rel-ids	rule138	dummy_subject-subject_samAnAXikaraNa	"?x"	"?z")"crlf)	

(printout	?*fp*	"(using-parser-ids 	viSeRya-jo_samAnAXikaraNa	"?x"	"?c")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule138	viSeRya-jo_samAnAXikaraNa	"?x"	"?c")"crlf)	

(printout	?*fp*	"(using-parser-ids 	kriyA-subject	"?a"	"?c")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule138	kriyA-subject	"?a"	"?c")"crlf)
)	
;Ex. It is Jane who wants to do it

(defrule rule141
(link_name-link_lnode-link_rnode Pg|Pgf ?a ?b)
(not (link_name-link_lnode-link_rnode MVp  ?b ?x))
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-object	"?a"	"?b")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule141	kriyA-object	"?a"	"?b")"crlf)
)
;Ex.	I enjoy running. The students enjoyed taking that course.

(defrule kri-viB_sam
(link_name-link_lnode-link_rnode MVp  ?b ?x)
(link_name-link_lnode-link_rnode J|Js|Jp|IN|ON|FL ?x ?y)
(linkid-word-node_cat ?x ?viBakwi ?)
(not (got_relation_for_MVp_link))
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-"?viBakwi"_saMbanXI	"?b"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kri-viB_sam	kriyA-"?viBakwi"_saMbanXI	"?b"	"?y")"crlf)
)
;Ex.   I saw her sitting in the garden. I did not wait for long.

(defrule rule142
(link_name-link_lnode-link_rnode Mp ?z ?x)
(link_name-link_lnode-link_rnode J|Js|Jp|IN|ON|Mgp ?x ?y)
(linkid-word-node_cat ?x ?viBakwi ?)
(linkid-word-node_cat ?z ?bit ?)
=>
(if (or ( eq ?bit bit) ( eq ?bit some))then  ;Ex. I ate a bit of biscuit. I know some of the people.
(printout	?*fp*	"(using-parser-ids 	viSeRya-"?viBakwi"_saMbanXI	"?y"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule142	viSeRya-"?viBakwi"_saMbanXI	"?y"	"?z")"crlf)	
else
(printout	?*fp*	"(using-parser-ids 	viSeRya-"?viBakwi"_saMbanXI	"?z"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule142	viSeRya-"?viBakwi"_saMbanXI	"?z"	"?y")"crlf)
)
)
;Ex. 	The SALARIES of the PROGRAMMERS are excellent. Some of the programmers are excellent. There were three cacti in front of us. I like the idea of living in the countryside but I am not sure I would like the reality .

(defrule prep_IDIOM_1
(link_name-link_lnode-link_rnode Mp  ?x ?y)
(link_name-link_expansion ?ID I D $?Var)
(link_name-link_lnode-link_rnode ?ID ?z ?y)
(link_name-link_lnode-link_rnode J|Js|Jp|Jw  ?y ?a)
(linkid-word-node_cat ?z ?viBakwi ?)
(linkid-word-node_cat ?y ?viBakwi1 ?)
=>
(printout	?*fp*	"(using-parser-ids 	viSeRya-"?viBakwi"_"?viBakwi1"_saMbanXI	"?x"	"?a")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	prep_IDIOM_1	viSeRya-"?viBakwi"_"?viBakwi1"_saMbanXI	"?x"	"?a")"crlf)
)
;Ex. They are having a party in front of the building. The children left dirty marks all over the kitchen floor.

(defrule prep_IDIOM_2
(link_name-link_lnode-link_rnode Mp|MVp  ?x ?y)
(link_name-link_expansion ?ID I D $?Var)
(link_name-link_lnode-link_rnode ?ID ?a ?b)
(link_name-link_expansion ?ID1 I D $?Va)
(link_name-link_lnode-link_rnode ?ID1 ?b ?y)
(link_name-link_lnode-link_rnode J|Js|Jp|Jw  ?y ?c)
(linkid-word-node_cat ?a ?viBakwi ?)
(linkid-word-node_cat ?b ?viBakwi1 ?)
(linkid-word-node_cat ?y ?viBakwi2 ?)
=>
(printout       ?*fp*   "(using-parser-ids         viSeRya-"?viBakwi"_"?viBakwi1"_"?viBakwi2"_saMbanXI "?x"    "?c")"crlf)
(printout       ?*rel_debug*    "(Rule-Rel-ids  prep_IDIOM_2       viSeRya-"?viBakwi"_"?viBakwi1"_"?viBakwi2"_saMbanXI "?x"    "?c")"crlf)
)
;Ex. They are having a party in front of the building.
;See the second linkage of this sentence for this rule.
(defrule  rule145
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids ?x) ;Ex. this condition is to stop "kriyA-kqxanwa_viSeRaNa" in "It is important to note that it does not denote absolute past time ."
(or (link_name-link_expansion ?TO_MVi   T O $?var) (link_name-link_expansion ?TO_MVi   M V i $?vari)) ;ex. for MVi condition: I sleep to take rest.
(link_name-link_lnode-link_rnode ?TO_MVi ?x ?y)
(link_name-link_expansion ?I   I $?vari)
(link_name-link_lnode-link_rnode ?I ?y ?z) 
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kqxanwa_karma	"?x"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule145	kriyA-kqxanwa_karma	"?x"	"?z")"crlf)
)
;Ex.     I am trying to be a good learner.  From in back of the shed , I heard a scream that seemed to come from on top of the garage

(defrule  kriyA-kq_vi
(link_name-link_lnode-link_rnode AF ?x ?kriyA)
(link_name-link_expansion ?TO   T O $?var)
(link_name-link_lnode-link_rnode ?TO ?x ?y)
(link_name-link_lnode-link_rnode I ?y ?z)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kqxanwa_karma	"?kriyA"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-kq_vi	kriyA-kqxanwa_karma	"?kriyA"	"?z")"crlf)
)
;Ex.     

(defrule  kriyA-kq_vi1
(link_name-link_expansion ?S   S $?var)
(link_name-link_lnode-link_rnode ?S ?s ?kriyA)
(link_name-link_lnode-link_rnode MVg ?kriyA ?z)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kqxanwa_viSeRaNa	"?kriyA"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-kq_vi1	kriyA-kqxanwa_viSeRaNa	"?kriyA"	"?z")"crlf)
)
;Ex.  He walked out of the room, glaring coldly at Sarah. 
;Link Parser's second linkage is correct for this sentence. In this sentence the relation between walked and glaring be "kriyA-kqxanwa_viSeRaNa" or kriyA-kqxanwa_kriyA_viSeRaNa" ?

(defrule  kriyA-kq_vi2
(link_name-link_lnode-link_rnode Pg    ?kriyA  ?kq_vi)
(link_name-link_lnode-link_rnode Ox    ?kriyA  ?o)
(link_name-link_lnode-link_rnode MVp   ?kq_vi  ?x)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kqxanwa_karma	"?kriyA"	"?kq_vi")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-kq_vi2	kriyA-kqxanwa_karma	"?kriyA"	"?kq_vi")"crlf)

;(printout       ?*fp*   "(using-parser-ids	viSeRya-kqxanwa_viSeRaNa	"?o"	"?kq_vi")"crlf)
;(printout       ?*rel_debug*    "(Rule-Rel-ids	kriyA-kq_vi2	viSeRya-kqxanwa_viSeRaNa	"?o"	"?kq_vi")"crlf)
)
;Ex.    I saw her sitting in the garden.


(defrule  rule_MVi
(link_name-link_lnode-link_rnode Pa|Paf|Pam ?x ?y)
(link_name-link_lnode-link_rnode MVi ?y ?z)
(link_name-link_lnode-link_rnode I ?z ?a)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids)
(test (member$ ?x $?chunk_ids))
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kqxanwa_viSeRaNa	"(nth$  (length $?chunk_ids)    $?chunk_ids)"	"?a")"crlf)
(printout	?*rel_debug*	"(Rule-Rel-ids	rule_MVi	kriyA-kqxanwa_viSeRaNa	"(nth$  (length $?chunk_ids)    $?chunk_ids)"	"?a")"crlf)
)
;Ex.   Dick is important to fix the problem.
;????????? should it be  kriyA-kqxanwa_viSeRaNa or kriyA-kqxanwa_karma ? 

(defrule  rule148
(link_name-link_lnode-link_rnode QI ?x ?y)
(link_name-link_lnode-link_rnode I ?a ?b)
(not (got_relation_for_when))
(linkid-word-node_cat ?y ?how ?)
=>
(if (eq ?how how)then
(printout	?*fp*	"(using-parser-ids 	kriyA-kriyA_viSeRaNa	"?b	"	"?y")"	crlf) ;Ex. We should teach children how to read and write.	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule148	kriyA-kriyA_viSeRaNa	"?b	"	"?y")"	crlf)	
	
(printout	?*fp*	"(using-parser-ids 	kriyA-praSnavAcI	"?b"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule148	kriyA-praSnavAcI	"?b"	"?y")"crlf)	

else

(printout	?*fp*	"(using-parser-ids 	kriyA-praSnavAcI	"?b"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule146	kriyA-praSnavAcI	"?b"	"?y")"crlf)
)
)
;Ex.     I wonder when he will come. He wondered why she will not go. I wonder where to go.

(defrule  rule149
(link_name-link_lnode-link_rnode Cs ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	subject-conjunction	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule149	subject-conjunction	"?y"	"?x")"crlf)
)
;Ex.     I wonder when he will come. He wondered why she will not go. Nobody knows when he will arrive.

(defrule  viXi_vAkyakarma_1
(declare (salience 1625))
(link_name-link_lnode-link_rnode TS ?x ?y)
(or (link_name-link_expansion ?S S I $?var) (link_name-link_expansion ?S S F I $?var))
(link_name-link_lnode-link_rnode ?S  ?y ?subjn)
(link_name-link_expansion ?I  I ?v j)
(link_name-link_lnode-link_rnode ?I ?y ?verb)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids)
(test (member$ ?verb $?chunk_ids))
=>
(undefrule sAmAnya_vAkya)
(printout	?*fp*	"(using-parser-ids 	viXi_vAkya	)"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	viXi_vAkyakarma_1	viXi_vAkya	)"crlf)	

(printout	?*fp*	"(using-parser-ids 	kriyA-viXi_vAkyakarma	"?x"	"(nth$	(length	$?chunk_ids)	$?chunk_ids)")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	viXi_vAkyakarma_1	kriyA-viXi_vAkyakarma	"?x"	"(nth$	(length	$?chunk_ids)	$?chunk_ids)")"crlf)	

(printout	?*fp*	"(using-parser-ids 	kriyA-subject	"(nth$	(length	$?chunk_ids)	$?chunk_ids)"	"?subjn")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	viXi_vAkyakarma_1	kriyA-subject	"(nth$	(length	$?chunk_ids)	$?chunk_ids)"	"?subjn")"crlf)	

(printout	?*fp*	"(using-parser-ids 	subject-conjunction	"?subjn"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	viXi_vAkyakarma_1	subject-conjunction	"?subjn"	"?y")"crlf)
)
;Ex.     They were asked that he be allowed to go.
;Ex.     I suggested that  he go.

(defrule  viXi_vAkyakarma_2
(declare (salience 1625))
(link_name-link_expansion ?S S I $?var j)
(link_name-link_lnode-link_rnode ?S  ?y ?subjn)
(link_name-link_expansion ?I  I ?v j)
(link_name-link_lnode-link_rnode ?I ?y ?verb)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids)
(test (member$ ?verb $?chunk_ids))
=>
(undefrule sAmAnya_vAkya)
(printout	?*fp*	"(using-parser-ids 	viXi_vAkya	)"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	viXi_vAkyakarma_2	viXi_vAkya	)"crlf)	

(printout	?*fp*	"(using-parser-ids 	kriyA-viXi_vAkyakarma	"?y"	"(nth$	(length	$?chunk_ids)	$?chunk_ids)")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	viXi_vAkyakarma_2	kriyA-viXi_vAkyakarma	"?y"	"(nth$	(length	$?chunk_ids)	$?chunk_ids)")"crlf)	

(printout	?*fp*	"(using-parser-ids 	kriyA-subject	"(nth$	(length	$?chunk_ids)	$?chunk_ids)"	"?subjn")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	viXi_vAkyakarma_2	kriyA-subject	"(nth$	(length	$?chunk_ids)	$?chunk_ids)"	"?subjn")"crlf)
)
;Ex.    I suggested he go to the party. 

(defrule  viXi_vAkya_sub-sub_samA
(declare (salience 1625))
(link_name-link_expansion ?S S I $?var j)
(link_name-link_lnode-link_rnode ?S  ?y ?subjn)
(link_name-link_expansion ?I  I ?v j)
(link_name-link_lnode-link_rnode ?I ?y ?verb)
(link_name-link_lnode-link_rnode Pa  ?verb ?s_s)
=>
(printout	?*fp*	"(using-parser-ids 	subject-subject_samAnAXikaraNa	"?subjn"	"?s_s")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	viXi_vAkya_sub-sub_samA	subject-subject_samAnAXikaraNa	"?subjn"	"?s_s")"crlf)
)
;Ex.    

(defrule  rule152
(link_name-link_lnode-link_rnode TSi ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA_viSeRaNa-ki	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule152	kriyA_viSeRaNa-ki	"?x"	"?y")"crlf)
)
;Ex.     It is important that he go.

(defrule  rule153
(link_name-link_lnode-link_rnode MVp ?kri ?x)
(link_name-link_lnode-link_rnode Ys ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kAlavAcI	"?kri"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule153	kriyA-kAlavAcI  "?kri"  "?y")"crlf)
)
;Ex.    I'd like to see him 100 times a day.

(defrule  viSeRya-saMKyA
(link_name-link_lnode-link_rnode ND|NSn ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	viSeRya-saMKyA_viSeRaNa	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	viSeRya-saMKyA	viSeRya-saMKyA_viSeRaNa	"?y"	"?x")"crlf)
)
;Ex.    I saw him three weeks ago. FIFTY PERCENT of them were women. THREE OTHER people are coming.

(defrule  viSeRya-saMKyA_1
(link_name-link_lnode-link_rnode ND ?x ?y)
(link_name-link_lnode-link_rnode Ytm  ?y ?z)
=>
(printout	?*fp*	"(using-parser-ids 	viSeRya-saMKyA_viSeRaNa	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	viSeRya-saMKyA_1	viSeRya-saMKyA_viSeRaNa	"?z"	"?x")"crlf)
)
;Ex.   

(defrule  saMKyA_samAsa
(link_name-link_lnode-link_rnode NW ?x ?y)
(link_name-link_lnode-link_rnode NF ?y ?z)
=>
(printout	?*fp*	"(using-parser-ids 	saMKyA_idiom	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	saMKyA_samAsa	saMKyA_idiom	"?x"	"?y")"crlf)
)
;Ex.    He lives TWO THIRDS of a mile from here.

(defrule  rule157
(link_name-link_lnode-link_rnode Ye ?x ?y)
(linkid-word-node_cat ?x every ?)
=>
(printout	?*fp*	"(using-parser-ids 	hara-samayvAcaka_Sabxa	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule157	hara-samayvAcaka_Sabxa	"?x"	"?y")"crlf)
)
;Ex.    We swim every three weeks

(defrule rule159
(link_name-link_lnode-link_rnode MVp ?x ?y)
(link_name-link_lnode-link_rnode Yd ?z ?y)
(linkid-word-node_cat ?y ?viBakwi ?)
=>
(printout	?*fp*	"(using-parser-ids 	saMjFA-"?viBakwi"_viBakwi	"?z"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule159	saMjFA-"?viBakwi"_viBakwi	"?z"	"?y")"crlf)
)
;Ex.	We swam three miles away.

(defrule Yd+ND
(link_name-link_lnode-link_rnode MVp ?x ?y)
(link_name-link_lnode-link_rnode Yd ?z ?y)
(link_name-link_lnode-link_rnode ND ?a ?z)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-measurement	"?x"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	Yd+ND	kriyA-measurement	"?x"	"?z")"crlf)
)
;Ex.    

(defrule Yd
(link_name-link_lnode-link_rnode Yd ?viSeRya ?y)
(link_name-link_expansion    ?J   J  $?vars)
(link_name-link_lnode-link_rnode ?J  ?y ?head)
(linkid-word-node_cat ?y ?viBakwi ?)
=>
(printout	?*fp*	"(using-parser-ids 	viSeRya-"?viBakwi"_saMbanXI	"?viSeRya"	"?head")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	Yd	viSeRya-"?viBakwi"_saMbanXI	"?viSeRya"	"?head")"crlf)
)
;Ex.   He lives two thirds of a mile from here. 

(defrule Yd_1
(link_name-link_lnode-link_rnode MVp ?x ?y)
(link_name-link_lnode-link_rnode Yd ?z ?y)
(link_name-link_lnode-link_rnode NJ ?prep ?z)
(linkid-word-node_cat ?prep ?viBakwi ?)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-"?viBakwi"_saMbanXI	"?x"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	Yd_1	kriyA-"?viBakwi"_saMbanXI	"?x"	"?z")"crlf)
)
;Ex.   He lives two thirds of a mile from here. 

(defrule Yd+ND
(link_name-link_lnode-link_rnode MVp ?x ?y)
(link_name-link_lnode-link_rnode Yd ?z ?y)
(link_name-link_lnode-link_rnode ND ?a ?z)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-measurement	"?x"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	Yd+ND	kriyA-measurement	"?x"	"?z")"crlf)
)
;Ex.  

(defrule  rule160
(link_name-link_lnode-link_rnode Ya ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	parimANavAcI-viSeRaNa	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule160	parimANavAcI-viSeRaNa	"?x"	"?y")"crlf)
)
;Ex.    He is three FEET TALL.

(defrule  rule161
(link_name-link_lnode-link_rnode WN ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	samayavAcI-jaba	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule161	samayavAcI-jaba	"?x"	"?y")"crlf)
)
;Ex.	The YEAR WHEN we lived in England was wonderful.

(defrule  rule162
(link_name-link_lnode-link_rnode THb ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-ki	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule162	kriyA-ki	"?x"	"?y")"crlf)
)
;Ex.	The problem IS THAT John is coming.


;(defrule  that_conj
;(link_name-link_lnode-link_rnode TH|THi|THb|THc ?x ?y)
;(link_name-link_expansion ?Ce   C e $?var)
;(link_name-link_lnode-link_rnode  ?Ce ?y ?z)
;=>
;(printout	?*fp*	"(using-parser-ids 	subject-conjunction	"?z"	"?y")"crlf)	
;(printout	?*rel_debug*	"(Rule-Rel-ids	that_conj	subject-conjunction	"?z"	"?y")"crlf)	
;)
;Ex.    The problem IS THAT John is coming.

(defrule  rule164
(declare (salience 400))
?f0<- (link_name-link_lnode-link_rnode OXi ?x ?y)
=>
(retract ?f0)
(printout	?*fp*	"(using-parser-ids 	kriyA-dummy_object	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule164	kriyA-dummy_object	"?x"	"?y")"crlf)
)
;Ex.	 "That MAKES IT unlikely that she will come".

(defrule  rule165
(link_name-link_lnode-link_rnode OXi ?x ?y)
(link_name-link_lnode-link_rnode Paf*j ?x ?z)
=>
(printout	?*fp*	"(using-parser-ids 	object-viSeRaNa	"?y"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule165	object-viSeRaNa	"?y"	"?z")"crlf)
)
;Ex.	 "That makes IT UNLIKELY that she will come".

(defrule  rule166
(link_name-link_lnode-link_rnode OT ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-samayavAcI_object	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule166	kriyA-samayavAcI_object	"?x"	"?y")"crlf)
)
;Ex.	 "It LASTED five HOURS".

(defrule rule167
(link_name-link_lnode-link_rnode TOo ?z ?y)
(link_name-link_lnode-link_rnode I ?y ?a)
=>
;(printout	?*fp*	"(using-parser-ids 	kriyA-ke_liye	"?a"	"?y")"crlf)	
;(printout	?*rel_debug*	"(Rule-Rel-ids	rule167	kriyA-ke_liye	"?a"	"?y")"crlf)	

(printout	?*fp*	"(using-parser-ids 	kriyA-aBiprewa_kriyA	"?z"	"?a")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule167	kriyA-aBiprewa_kriyA	"?z"	"?a")"crlf)
)
;Ex.	I told him TO LEAVE. I TOLD him to LEAVE.

; RULES ON SENTENCE LEVEL 
	
(defrule sAmAnya_vAkya
(declare (salience 1520)) 
(link_name-link_expansion ?lname ?var&~N)
(link_name-link_lnode-link_rnode Wd|Wdc ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	sAmAnya_vAkya)"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	sAmAnya_vAkya	sAmAnya_vAkya)"crlf)
)
;Ex.	I told him to leave. He is working hard.

(defrule AjFArWaka_vAkya
(declare (salience 1510))
(link_name-link_lnode-link_rnode Wi ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	AjFArWaka_vAkya)"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	AjFArWaka_vAkya	AjFArWaka_vAkya)"crlf)	

(printout	?*fp*	"(using-parser-ids 	AjFArWaka_kriyA	"	?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	AjFArWaka_vAkya	AjFArWaka_kriyA	"	?y")"crlf)
)
;Ex.	Go to the class. GO away

(defrule subject_question_wh_type
(declare (salience 1500))
(link_name-link_lnode-link_rnode Ws ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	subject_question_wh_type)"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	subject_question_wh_type	subject_question_wh_type)"crlf)
)
;Ex.	Who did you hit? Who is coming? What is your name?

(defrule yes_no_question
(declare (salience 1501))
(link_name-link_lnode-link_rnode Qd ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	yes_no_question)"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	yes_no_question	yes_no_question)"crlf)
)
;Ex.	 Is there any water in the glass? Could I go to the library?

(defrule wh_question
(declare (salience 1502))
(link_name-link_lnode-link_rnode Wq|Wj ?x ?y)
(linkid-word-node_cat ?y ?word&~here  ?)
=>
(printout	?*fp*	"(using-parser-ids 	wh_question)"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	wh_question	wh_question)"crlf)
)
;Ex.	Who did you hit? Who is coming? Is there any water in the glass? Could I go to the library? To whom did you speak?

(defrule niReXAwmaka_vAkya
(declare (salience 1540))
(or (link_name-link_expansion    ?Wd  W d $?vars)(link_name-link_expansion  ?Wd  W d $?vars))
?f0<-(link_name-link_lnode-link_rnode ?Wd ?a ?b) ;This condition is to retract Wd link so that rule "sAmAnya_vAkya" won't fire.
(link_name-link_lnode-link_rnode N ?x ?y)
=>
(retract ?f0)
(printout	?*fp*	"(using-parser-ids 	niReXAwmaka_vAkya)"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	niReXAwmaka_vAkya	niReXAwmaka_vAkya)"crlf)
)
;Ex.    He had not gone. He was not speaking to Fred. I will not do it.

(defrule rule174
(declare (salience 610))
(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
?f0<- (link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_lnode-link_rnode Pa|Paf|Pam  ?y ?z)
(link_name-link_lnode-link_rnode Os|Op|Ox  ?y ?a)
=>
(retract ?f0)
(printout	?*fp*	"(using-parser-ids 	object-object_samAnAXikaraNa	"?a"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule174	object-object_samAnAXikaraNa	"?a"	"?z")"crlf)
)
;Ex.	 I found HIM INTELLIGENT.

(defrule object_samAnAXikaraNa
(declare (salience 610))
(link_name-link_expansion    ?O   O $?vars)
(link_name-link_lnode-link_rnode ?O ?x ?y)
(link_name-link_lnode-link_rnode Ma  ?y ?z)
=>
(printout	?*fp*	"(using-parser-ids 	object-object_samAnAXikaraNa	"?y"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	object_samAnAXikaraNa	object-object_samAnAXikaraNa	"?y"	"?z")"crlf)
)
;Ex.	We need a programmer knowledgeable about Lisp. These are people unhappy about the economy. 

(defrule obj_samA
(declare (salience 610))
(link_name-link_expansion    ?O   O $?vars)
(link_name-link_lnode-link_rnode ?O ?x ?y)
(link_name-link_lnode-link_rnode ALx|AL ?y ?z)
(link_name-link_lnode-link_rnode Jp  ?y ?obj)
(link_name-link_lnode-link_rnode Ma  ?obj ?obj-s)
=>
(printout	?*fp*	"(using-parser-ids 	object-object_samAnAXikaraNa	"?obj"	"?obj-s")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	obj_samA	object-object_samAnAXikaraNa	"?obj"	"?obj-s")"crlf)
)
;Ex.   One may not have all the competence necessary for doing a task. 

(defrule obj_samA_1
(link_name-link_expansion ?O O $?var)
(link_name-link_lnode-link_rnode ?O ?x ?ob)
(link_name-link_lnode-link_rnode AZ ?x ?as)
(link_name-link_lnode-link_rnode Paf ?as ?ob_s)
=>
(printout	?*fp*	"(using-parser-ids 	object-object_samAnAXikaraNa	"?ob"	"?ob_s")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	obj_samA_1	object-object_samAnAXikaraNa	"?ob"	"?ob_s")"crlf)
)
;Ex.    He viewed HIM as STUPID.

(defrule subj_samAnAXikaraNa
(declare (salience 610))
(link_name-link_expansion    ?S   S $?vars)
(link_name-link_lnode-link_rnode ?S ?x ?y)
(link_name-link_lnode-link_rnode Ma  ?x ?z)
=>
(printout	?*fp*	"(using-parser-ids 	subject-subject_samAnAXikaraNa	"?x"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	subj_samAnAXikaraNa	subject-subject_samAnAXikaraNa	"?x"	"?z")"crlf)
)
;Ex.  Voters angry about the economy will probably vote for Clinton. 

(defrule object_samAnAXikaraNa_1
(declare (salience 610))
(link_name-link_expansion    ?O   O X $?vars)
(link_name-link_lnode-link_rnode ?O ?x ?obj)
(link_name-link_expansion    ?TO   T O $?var)
(link_name-link_lnode-link_rnode ?TO ?x ?y)
(link_name-link_lnode-link_rnode Ix  ?y ?z)
(link_name-link_lnode-link_rnode Paf ?z ?o_s)
=>
(printout	?*fp*	"(using-parser-ids 	object-object_samAnAXikaraNa	"?obj"	"?o_s")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	object_samAnAXikaraNa_1	object-object_samAnAXikaraNa	"?obj"	"?o_s")"crlf)
)
;Ex.   

(defrule sub_samAnAXikaraNa_1
(declare (salience 610))
(link_name-link_expansion    ?S   S $?vari)
(link_name-link_lnode-link_rnode ?S ?b ?x)
(link_name-link_expansion    ?O   O $?vars)
(link_name-link_lnode-link_rnode ?O ?x ?y)
(link_name-link_expansion    ?J   J $?var)
(link_name-link_lnode-link_rnode ?J  ?y ?z)
(link_name-link_lnode-link_rnode Ma   ?z ?a)
=>
(printout	?*fp*	"(using-parser-ids 	subject-subject_samAnAXikaraNa	"?b"	"?a")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	sub_samAnAXikaraNa_1	subject-subject_samAnAXikaraNa	"?b"	"?a")"crlf)
)
;Ex.    The river is half a mile wide here and 300 feet deep. 

(defrule rule176
(link_name-link_lnode-link_rnode DG ?a ?b)
(link_name-link_lnode-link_rnode DG ?c ?d)
(link_name-link_lnode-link_rnode ER ?b ?d)
(link_name-link_lnode-link_rnode AF ?b ?e)
(link_name-link_lnode-link_rnode Ss ?f ?e)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-subject	"?e"	"?f")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule176	kriyA-subject	"?e"	"?f")"crlf)	

(printout	?*fp*	"(using-parser-ids 	subject-subject_samAnAXikaraNa	"?e"	"?b")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule176	subject-subject_samAnAXikaraNa	"?e"	"?b")"crlf)
)
;Ex.	The FASTER it IS, the more they will like it.

(defrule rule179
(link_name-link_lnode-link_rnode Am ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	viSeRya-wulanAwmaka_viSeRaNa	"?y"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule179	viSeRya-wulanAwmaka_viSeRaNa	"?y"	"?x")"crlf)
)
;Ex.	He is a TALLER MAN. The little young girl will present a beautiful doll to her YOUNGER BROTHER.

(defrule rule180
(link_name-link_lnode-link_rnode MVp ?x ?y)
(link_name-link_lnode-link_rnode Bs|Bp ?a ?y)
(link_name-link_lnode-link_rnode Rn|R ?a ?b)
(linkid-word-node_cat ?y ?viBakwi ?)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-"?viBakwi"_saMbanXI	"?x"	"?b")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule180	kriyA-"?viBakwi"_saMbanXI	"?x"	"?b")"crlf)
)	
;Ex	The planet that we live on is of medium size. These are the principles which we all believe in.

(defrule rule181
(declare (salience 715))
(link_name-link_lnode-link_rnode B*w|Bsw|Bsm|Bpm ?x ?y)
(link_name-link_lnode-link_rnode MVp ?z ?y)
(linkid-word-node_cat ?y ?viBakwi ?)
(root-verbchunk-tam-parser_chunkids $?ch ?z) ;Ex. 4 this condition: Which of your parents do you feel closer to?
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-"?viBakwi"_saMbanXI	"?z"	"?x")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule181	kriyA-"?viBakwi"_saMbanXI	"?z"	"?x")"crlf)
)
;Ex.	WHICH place are you COMING from ?

(defrule rule182
(link_name-link_lnode-link_rnode MVp|MVb|Pp ?a ?b)
(linkid-word-node_cat ?b again|later|here|there|somewhere|anywhere|everywhere|now|outside|longer|alone|next ?)
(not (link_name-link_lnode-link_rnode J|Jp|Js|IN|ON ?b ?x));ex. I went outside of the room.
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-lupwa_prep_saMbanXI	"?a"	"?b")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule182	kriyA-lupwa_prep_saMbanXI	"?a"	"?b")"crlf)
)
;Ex.	I WENT THERE. He IS HERE. I will do it later. He talked longer than usual. He was sitting next to Mohan's brother .

(defrule rule183
(link_name-link_expansion  ?ID    I D $?)
(link_name-link_lnode-link_rnode  ?ID ?a ?b)
=>
(printout	?*fp*	"(using-parser-ids 	idiom_type_1	"?a"	"?b")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule183	idiom_type_1	"?a"	"?b")"crlf)
)
;Ex. 	 Passion is a must to reach your potential.

(defrule how-to-drive
(link_name-link_lnode-link_rnode  TOn ?how ?to)
(link_name-link_lnode-link_rnode  I ?to ?drive)
(linkid-word-node_cat ?how how ?)
(linkid-word-node_cat ?to to ?)
(linkid-word-node_cat ?drive drive ?)
=>
(printout       ?*fp*   "(using-parser-ids	idiom_type_1	"?how"	"?to")"crlf)
(printout       ?*rel_debug*    "(Rule-Rel-ids	how-to-drive	idiom_type_1	"?how"	"?to"	"?drive")"crlf)
)
;Ex.	She knows how to drive a car .

(defrule MVx+ID
(link_name-link_expansion  ?ID    I D $?)
(link_name-link_lnode-link_rnode  ?ID ?a ?b)
(link_name-link_lnode-link_rnode  Pa|Pv ?z ?c)
(link_name-link_lnode-link_rnode MVx  ?c ?b)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kriyA_viSeRaNa	"?c"	"?b")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	MVx+ID	kriyA-kriyA_viSeRaNa	"?c"	"?b")"crlf)
)
;Ex. The project was finished on schedule, as usual. 

(defrule MVp+ID
(link_name-link_expansion  ?ID    I D $?)
(link_name-link_lnode-link_rnode  ?ID ?a ?b)
(link_name-link_lnode-link_rnode  Pa|Pv ?z ?c)
(link_name-link_lnode-link_rnode MVp  ?c ?b)
(linkid-word-node_cat ?a ?viBakwi ?)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-"?viBakwi"_saMbanXI	"?c"	"?b")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	MVp+ID	kriyA-"?viBakwi"_saMbanXI	"?c"	"?b")"crlf)
)
;Ex. The project was finished on schedule, as usual. 

(defrule rule112
(declare (salience 108))
(link_name-link_expansion    ?lname   S $?vars)
(link_name-link_lnode-link_rnode ?lname ?x ?y) 
(link_name-link_lnode-link_rnode I*j|Ifj ?y ?z)
(test (not (or (member$ I $?vars) (member$ F $?vars) (member$ j $?vars)))) ;ex. 4 this:  "I suggested he go to the party."
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-preraka_kriyA	"?z"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule112	kriyA-preraka_kriyA	"?z"	"?y")"crlf)
)
;Ex.	I made him go. The teacher made the students stay after class. She had her children cook dinner for her. Peter made her do her homework. Smith HAD the mechanic TAKE out the brakes.

(defrule rule184
(declare (salience 505))
(link_name-link_lnode-link_rnode TO ?a ?b)
(link_name-link_lnode-link_rnode I ?b ?c)
(link_name-link_lnode-link_rnode I*j|Ifj ?c ?d)
(linkid-word-node_cat ?a have|has|had ?)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-preraka_kriyA	"?d"	"?c")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule184	kriyA-preraka_kriyA	"?d"	"?c")"crlf)
)
;Ex.	 She had to make her children cook dinner for her.

(defrule rule185
(declare (salience 505))
(link_name-link_lnode-link_rnode I*j|Ifj ?c ?d)
(link_name-link_expansion    ?object        O $?)
(link_name-link_lnode-link_rnode  ?object ?c ?e)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-prayojya_karwA	"?d"	"?e")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule185	kriyA-prayojya_karwA	"?d"	"?e")"crlf)
)
;The object of the first verb (i.e. causative verb) becomes prayojya_karwA according to Sanskrit grammar, so we have given this object a prayojya_karwA relation but we are also showing the prayojya_karwA as an object of the causative verb. e.g. "Peter made her(1) do her homework." here 'her(1)' is prayojya_karwA and is the object of 'made'.

;Ex.	 She had to make her children cook dinner for her.

(defrule rule186
(declare (salience 510))
(link_name-link_lnode-link_rnode Pg*b|Pgfb|Pgf|PP|I|Ix|If ?y ?z)
(link_name-link_lnode-link_rnode I*j|Ifj ?z ?d)
(linkid-word-node_cat ?y is|are|am|was|had|has|have|were|been|be ?)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-preraka_kriyA	"?d"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule186	kriyA-preraka_kriyA	"?d"	"?z")"crlf)
)
;Ex.	 She has made her children cook dinner for her.

(defrule rule187
(link_name-link_expansion  ?lname  S ~I $?vars)
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_lnode-link_rnode AFdi ?z ?y)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-conjunction	"?y"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule187	kriyA-conjunction	"?y"	"?z")"crlf)
)
;Ex	It is more likely that Joe will come than it is that Fred will go.

(defrule rule188
(link_name-link_lnode-link_rnode MVs ?x ?y)
(link_name-link_lnode-link_rnode Mgp ?y ?z)
(or(linkid-word-node_cat ?z ?samAnakAlika_kriyA v)(linkid-word-node_cat ?z ?samAnakAlika_kriyA g))	
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-samAnakAlika_kriyA	"?x"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule188	kriyA-samAnakAlika_kriyA	"?x"	"?z")"crlf)
)
;Ex	Rama was TALKING while EATING fruits.

(defrule viSeRya-kqxanwa_viSeRaNa
(link_name-link_lnode-link_rnode Mg ?x ?y)
=>
(printout	?*fp*	"(using-parser-ids 	viSeRya-kqxanwa_viSeRaNa	"?x"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	viSeRya-kqxanwa_viSeRaNa	viSeRya-kqxanwa_viSeRaNa	"?x"	"?y")"crlf)
)
;Ex	The boy running in the garden plucked the flower. The dog chasing the man died.

(defrule rule189
(link_name-link_expansion  ?V    V $?)
(link_name-link_lnode-link_rnode  ?V ?a ?b)
=>
(printout	?*fp*	"(using-parser-ids 	idiom_type_2	"?a"	"?b")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule189	idiom_type_2	"?a"	"?b")"crlf)
)
;Ex. 	 He did nothing but complain. I took him for granted. I held him responsible. He kept watch.

(defrule rule190
(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
(link_name-link_lnode-link_rnode ?lname ?x ?y)
(link_name-link_expansion  ?object    O $?)
(link_name-link_lnode-link_rnode  ?object ?y ?z)
(link_name-link_lnode-link_rnode Pv ?y ?a)
(linkid-word-node_cat ?y have|has|had ?)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-preraka_kriyA	"?a"	"?y")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule190	kriyA-preraka_kriyA	"?a"	"?y")"crlf)
)
;Ex.	 I had my hair cut yesterday.

(defrule rule191
(declare (salience 510))
(link_name-link_lnode-link_rnode Pg*b|Pgfb|Pgf|PP|I|Ix|If ?y ?z)
(link_name-link_expansion  ?object    O $?)
(link_name-link_lnode-link_rnode  ?object ?z ?a)
(link_name-link_lnode-link_rnode Pv ?z ?b)
(linkid-word-node_cat ?y is|are|am|was|had|has|have|were|been|be ?)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-preraka_kriyA	"?b"	"?z")"	crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule191	kriyA-preraka_kriyA	"?b"	"?z")"crlf)
)
;Ex.	 I have had the walls painted.

(defrule rule192
(link_name-link_lnode-link_rnode MVp ?x ?y)
(link_name-link_lnode-link_rnode Mgp ?y ?z)
(linkid-word-node_cat ?y ?viBakwi ?)
(or(linkid-word-node_cat ?z ?gerund verb)(linkid-word-node_cat ?z ?gerund gerund))	
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-"?viBakwi"_saMbanXI	"?x"	"?z")"	crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule192	kriyA-"?viBakwi"_saMbanXI	"?x"	"?z")"crlf)
)
;Ex	He wants to go out for playing.

(defrule rule192_1
(declare (salience 200))
(link_name-link_lnode-link_rnode MVp ?x ?y)
(link_name-link_lnode-link_rnode Mgp ?y ?z)
(link_name-link_lnode-link_rnode Mgn ?z ?a)
(linkid-word-node_cat ?y ?viBakwi ?)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-"?viBakwi"_saMbanXI	"?x"	"?a")"	crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule192_1	kriyA-"?viBakwi"_saMbanXI	"?x"	"?a")"crlf)
)
;Ex   I prevented her from doing it by praising her for not doing it. 

(defrule kriyA-prep_saM
(link_name-link_lnode-link_rnode Pp ?x ?y)
(link_name-link_lnode-link_rnode Mgp ?y ?z)
(linkid-word-node_cat ?y ?viBakwi ?)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-"?viBakwi"_saMbanXI	"?x"	"?z")"	crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-prep_saM	kriyA-"?viBakwi"_saMbanXI	"?x"	"?z")"crlf)
)
;Ex    This was in keeping with the convention of warships being launched by a lady.

(defrule pUrva_kriyA-ananwara_kriyA
(link_name-link_expansion    ?S    S ~F $?vars)
(link_name-link_lnode-link_rnode ?S  ? ?x)
(link_name-link_lnode-link_rnode MVs ?x ?y)
(link_name-link_lnode-link_rnode Cs  ?y ?z)
(linkid-word-node_cat ?y after ?)
(link_name-link_expansion    ?S1    S ~F $?vars)
(link_name-link_lnode-link_rnode ?S1  ?z ?a)
=>
(printout	?*fp*	"(using-parser-ids 	pUrvakAlika_kriyA-ananwarakAlika_kriyA	"?a"	"?x")"	crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	pUrva_kriyA-ananwara_kriyA	pUrvakAlika_kriyA-ananwarakAlika_kriyA	"?a"	"?x")"	crlf)
)
;Ex	The man I SAW after I LEFT your party is here .
(defrule kriyA-samAnakAlika_kriyA
(declare (salience 34))
(link_name-link_expansion    ?S    S ~F $?vars)
(link_name-link_lnode-link_rnode ?S  ? ?x)
(link_name-link_lnode-link_rnode MVs ?x ?y)
(link_name-link_lnode-link_rnode Cs  ?y ?z)
(linkid-word-node_cat ?y when ?)
(link_name-link_expansion    ?S1    S ~F $?vars)
(link_name-link_lnode-link_rnode ?S1  ?z ?a)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-samAnakAlika_kriyA	"?a"	"?x")"	crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-samAnakAlika_kriyA	kriyA-samAnakAlika_kriyA	"?a"	"?x")"	crlf)	

(printout	?*fp*	"(using-parser-ids 	kriyA-kAlavAcI	"?a"	"?y")"	crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-samAnakAlika_kriyA	kriyA-kAlavAcI	"?a"	"?y")"	crlf)	

(printout	?*fp*	"(using-parser-ids 	kriyA-kAlavAcI	"?x"	"?y")"	crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-samAnakAlika_kriyA	kriyA-kAlavAcI	"?x"	"?y")"	crlf)
)
;Ex	I LEFT when I SAW you .

(defrule kriyA-samAnakAlika_kriyA_1
(link_name-link_expansion    ?S    S ~F $?vars)
(link_name-link_lnode-link_rnode ?S  ?b ?x)
(link_name-link_expansion    ?CO   C O $?var)
(link_name-link_lnode-link_rnode ?CO ?y ?z)
(link_name-link_lnode-link_rnode Cs  ?y ?b)
(linkid-word-node_cat ?y when ?)
(link_name-link_expansion    ?S1    S ~F $?va)
(link_name-link_lnode-link_rnode ?S1  ?z ?a)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-samAnakAlika_kriyA	"?x"	"?a")"	crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-samAnakAlika_kriyA_1	kriyA-samAnakAlika_kriyA	"?x"	"?a")"	crlf)	

(printout	?*fp*	"(using-parser-ids 	kriyA-kAlavAcI	"?x"	"?y")"	crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-samAnakAlika_kriyA_1	kriyA-kAlavAcI	"?x"	"?y")"	crlf)	

(printout	?*fp*	"(using-parser-ids 	kriyA-kAlavAcI	"?a"	"?y")"	crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA-samAnakAlika_kriyA_1	kriyA-kAlavAcI	"?a"	"?y")"	crlf)
)
;Ex	When I SAW you, I LEFT  .

(defrule saMjFA-samA
(link_name-link_expansion  ?MX M X $?var)
(link_name-link_lnode-link_rnode ?MX  ?a ?b) 
(not (link_name-link_lnode-link_rnode J|Js|Jp  ?b ?x))
=>
(printout	?*fp*	"(using-parser-ids 	saMjFA-saMjFA_samAnAXikaraNa	"?a"	"?b")"	crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	saMjFA-samA	saMjFA-saMjFA_samAnAXikaraNa	"?a"	"?b")"	crlf)
)
;Ex    The DOG, WHO was black, barked loudly. Rama gave a book to DASHARAT, the KING of Ayodhya.

(defrule kriyA_mUla
(link_name-link_lnode-link_rnode   Wi  ?a ?b)
(link_name-link_lnode-link_rnode Pa  ?b ?c)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kriyA_mUla	"?b"	"?c")"	crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA_mUla	kriyA-kriyA_mUla	"?b"	"?c")"	crlf)
)
;Ex     keep quiet, she said. Be careful, she said.

(defrule kriyA_karwA
(link_name-link_expansion    ?O    O $?vars)
(link_name-link_lnode-link_rnode   ?O  ?a ?b)
(link_name-link_lnode-link_rnode TOo  ?a ?c)
(link_name-link_lnode-link_rnode I ?c ?d)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-karwA	"?d"	"?b")"	crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	kriyA_karwA	kriyA-karwA	"?d"	"?b")"	crlf)
)
;Ex   I want the students to go. I want Rama to go. I want him to go

(defrule wall-conjunction
(link_name-link_lnode-link_rnode   Wc  ?a ?b)
=>
(printout	?*fp*	"(using-parser-ids 	wall_conjunction	"?b")"	crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	wall-conjunction	wall_conjunction	"?b")"	crlf)
)
;Ex   But my efforts to win his heart have failed. And Jane screamed.
; This rule is just to give a name to the sentence initial conjunctions and this is not a relation.

(defrule wall-conjunction_1
(declare (salience 510))
(link_name-link_expansion    ?W   W $?var)
(link_name-link_lnode-link_rnode   ?W  ?a ?b)
(link_name-link_expansion    ?CO   C O $?vars)
?f0<-(link_name-link_lnode-link_rnode   ?CO  ?c  ?b)
(not (got_relation_for_CO_link))
(not (link_name-link_lnode-link_rnode   TI  ?c ?x)) ;Ex. As president of the company , it is my decision.
(not (link_name-link_lnode-link_rnode   IN  ?c ?x)) ;Ex. In January 1990 , a historic new law was passed . 
=>
(assert (got_relation_for_CO))
(printout	?*fp*	"(using-parser-ids 	wall_conjunction	"?c")"	crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	wall-conjunction_1	wall_conjunction	"?c")"	crlf)
)
;Ex  However the user needs some training to use the software effectively

(defrule wall-conjunction_2
(declare (salience 520))
(link_name-link_expansion    ?W   W $?var)
(link_name-link_lnode-link_rnode   ?W  ?a ?b)
(link_name-link_expansion    ?CO   C O $?vars)
?f0<-(link_name-link_lnode-link_rnode   ?CO  ?c  ?b)
(link_name-link_expansion    ?J    J $?vari)
(link_name-link_lnode-link_rnode  ?J  ?c ?d)
=>
(assert (got_relation_for_CO_link))
(printout	?*fp*	"(using-parser-ids 	wall_conjunction	"?d")"	crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	wall-conjunction_2	wall_conjunction	"?d")"	crlf)
)
;Ex  Of her childhood we know very little.

(defrule wall-conjunction_3
(declare (salience 540))
(link_name-link_expansion    ?W   W $?var)
(link_name-link_lnode-link_rnode   ?W  ?a ?b)
(link_name-link_expansion    ?CO   C O $?vars)
(link_name-link_lnode-link_rnode   ?CO  ?c  ?b)
(link_name-link_lnode-link_rnode  Mgp  ?c ?d)
=>
(assert (got_relation_for_CO_link))
(printout	?*fp*	"(using-parser-ids 	wall_conjunction	"?d")"	crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	wall-conjunction_3	wall_conjunction	"?d")"	crlf)
)
;Ex  By going there you can earn more money.

(defrule sub-conj
(link_name-link_lnode-link_rnode   CC  ?a ?c)
(link_name-link_expansion    ?W   W $?vars)
(link_name-link_lnode-link_rnode   ?W  ?c  ?b)
=>
(printout	?*fp*	"(using-parser-ids 	subject-conjunction	"?b"	"?c")"	crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	sub-conj	subject-conjunction	"?b"	"?c")"	crlf)
)
;Ex We caught him up although he was walking very fast.

(defrule wall_prep_saM
(declare (salience 530))
(link_name-link_expansion    ?CO   C O $?vars)
(link_name-link_lnode-link_rnode   ?CO  ?c  ?b)
?f0<-(link_name-link_lnode-link_rnode   Mgp|OF  ?c  ?d)
(link_name-link_expansion    ?S   S $?vari)
(link_name-link_lnode-link_rnode   ?S  ?b ?kri)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids)
(test (member$ ?kri $?chunk_ids))
(linkid-word-node_cat ?c ?viBakwi ?)
=>
(retract ?f0)
(printout	?*fp*	"(using-parser-ids 	kriyA-"?viBakwi"_saMbanXI	"(nth$	(length	$?chunk_ids)	$?chunk_ids)"	"?d")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	wall_prep_saM	kriyA-"?viBakwi"_saMbanXI	"(nth$	(length	$?chunk_ids)	$?chunk_ids)"	"?d")"crlf)
)
;Ex  By going there you can earn more money.
;Ex  By going there you earn more money.

(defrule wall_prep_saM_2
(declare (salience 530))
(link_name-link_expansion    ?CO   C O $?vars)
(link_name-link_lnode-link_rnode   ?CO  ?c  ?b)
(link_name-link_lnode-link_rnode  IN ?c  ?d)
(link_name-link_lnode-link_rnode  TY ?d  ?e)
(link_name-link_expansion    ?S   S $?vari)
(link_name-link_lnode-link_rnode   ?S  ?b ?kri)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids)
(test (member$ ?kri $?chunk_ids))
(linkid-word-node_cat ?c ?viBakwi ?)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-"?viBakwi"_saMbanXI	"(nth$	(length	$?chunk_ids)	$?chunk_ids)"	"?e")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	wall_prep_saM_2	kriyA-"?viBakwi"_saMbanXI	"(nth$	(length	$?chunk_ids)	$?chunk_ids)"	"?e")"crlf)
)
;Ex In January 1990 , a historic new law was passed 

(defrule nAma-saMkRipwa
(link_name-link_lnode-link_rnode  MX   ?nAma      ?saMkRipwa_nAma)
(link_name-link_lnode-link_rnode  Xd   ?punc      ?saMkRipwa_nAma)
(link_name-link_lnode-link_rnode  Xc   ?saMkRipwa_nAma     ?punc1) 
(parserid-wordid   ?saMkRipwa_nAma   ?id) 
(id-word_cap_info ?id  all_caps) ;to stop this rule in "This is Rama, a doctor." type sentences.
=>
(printout	?*fp*	"(using-parser-ids 	nAma-saMkRipwa_nAma	"?nAma"	"?saMkRipwa_nAma")"	crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	nAma-saMkRipwa	nAma-saMkRipwa_nAma	"?nAma"	"?saMkRipwa_nAma	")"	crlf)
)
;Ex   The International Institute of Information Technology (IIIT) is good.

(defrule saMjFA-kqxanwa_rule
(declare (salience 100))
(link_name-link_expansion ?Tname T O $?)
(link_name-link_lnode-link_rnode ?Tname ?Tlnode ?Trnode)
(link_name-link_lnode-link_rnode I|If ?Trnode ?Irnode)
(not (root-verbchunk-tam-parser_chunkids $? ?Tlnode $?)) ;The public seem to love him, no matter what he does. I managed to go. It  is Jane who wants to do it.
=>
(printout	?*fp*	"(using-parser-ids 	saMjFA-kqxanwa	"?Tlnode	"	"?Irnode")"	crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	saMjFA-kqxanwa_rule	saMjFA-kqxanwa	"?Tlnode	"	"?Irnode")"	crlf)
)
;Ex He wasted his golden opportunity to play in the national team

(defrule vi_Na-to_inf
(declare (salience 100))
(link_name-link_lnode-link_rnode TOi ?Tlnode ?Trnode)
(link_name-link_lnode-link_rnode I|If ?Trnode ?Irnode)
=>
(printout	?*fp*	"(using-parser-ids 	saMjFA-kqxanwa	"?Tlnode	"	"?Irnode")"	crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	vi_Na-to_inf	saMjFA-kqxanwa	"?Tlnode	"	"?Irnode")"	crlf)
)
;Ex	It is fun   to try to beat the program.

(defrule to_inf-to_inf
(declare (salience 100))
(link_name-link_lnode-link_rnode I ?y ?z)
(link_name-link_expansion ?TO_1  T O $?va)
(link_name-link_lnode-link_rnode ?TO_1 ?z ?a)
(link_name-link_lnode-link_rnode I ?a ?b)
=>
(printout	?*fp*	"(using-parser-ids 	kqxanwa-kqxanwa	"?z	"	"?b")"	crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	to_inf-to_inf	kqxanwa-kqxanwa	"?z	"	"?b")"	crlf)
)
;Ex  It is fun   to try to beat the program.

(defrule to_inf_sub
(declare (salience 100))
(link_name-link_expansion ?SF S F $?v)
(link_name-link_lnode-link_rnode ?SF ?x ?y)
(link_name-link_lnode-link_rnode I ?x ?z)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-subject	"?y	"	"?z")"	crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	to_inf_sub	kriyA-subject	"?y	"	"?z")"	crlf)
)
;Ex  to beat the program is fun.

;(defrule to_inf_ob
;(declare (salience 100))
;(link_name-link_expansion ?SF S F $?v)
;(link_name-link_lnode-link_rnode ?SF ?x ?y)
;(link_name-link_expansion ?O O $?va)
;(link_name-link_lnode-link_rnode ?O ?a ?b)
;(link_name-link_lnode-link_rnode Pa|Paf ?y ?z)
;=>
;	(printout	?*fp*	"(using-parser-ids 	object-object_samAnAXikaraNa	"?b	"	"?z")"	crlf)	
;	(printout	?*rel_debug*	"(Rule-Rel-ids	to_inf_ob	object-object_samAnAXikaraNa	"?b	"	"?z")"	crlf)	
;)
;Ex  To beat the program is fun. To try to beat the program is fun

(defrule idiom_rule
(root-verbchunk-tam-parser_chunkids $? ?rnode)
(link_name-link_lnode-link_rnode Pv ?rnode ?z)
(link_name-link_expansion ?ID I D $?)
(link_name-link_lnode-link_rnode ?ID ?w ?z)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-kqxanwa_viSeRaNa	"?rnode"	"?z")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	idiom_rule	kriyA-kqxanwa_viSeRaNa	"?rnode"	"?z")"crlf)
)
;Ex Ravan is dead. This table is made up of wood
;?????? This should be viSeRya-kqxanwa_viSeRaNa
; this kqxanwa_viSeRaNa occurs always in predicative position.

(defrule wh-stranded_prep
(link_name-link_lnode-link_rnode MVp ?kriyA  ?prep)
(link_name-link_expansion ?Q  Q $?)
(link_name-link_lnode-link_rnode ?Q ?wh ?aux)
(root-verbchunk-tam-parser_chunkids $? ?aux $? ?kriyA)
(linkid-word-node_cat ?prep ?viBakwi ?)
(not (link_name-link_lnode-link_rnode Qd ?wh ?aux)) ;Ex 4 this: Can you tell us where those strange ideas came from?
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?wh")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	wh-stranded_prep	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?wh")"crlf)
)
;Ex. Where is the figure taken from? Where are you coming from? Where is she coming from?

(defrule CO_link
(link_name-link_expansion ?CO  C O $?)
(link_name-link_lnode-link_rnode ?CO ?prep ?sub)
(link_name-link_expansion ?S  S  $?)
(link_name-link_lnode-link_rnode ?S ?sub ?kriyA)
(root-verbchunk-tam-parser_chunkids $? ?kriyA)
(link_name-link_expansion ?J  J $?)
(link_name-link_lnode-link_rnode ?J ?prep ?noun)
(linkid-word-node_cat ?prep ?viBakwi ?)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?noun")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	CO_link	kriyA-"?viBakwi"_saMbanXI	"?kriyA"	"?noun")"crlf)
)
;Ex.  In this world no one lives without air.

(defrule CO_link_1
(link_name-link_expansion ?CO  C O $?)
(link_name-link_lnode-link_rnode ?CO ?prep ?sub)
(link_name-link_expansion ?S  S  $?)
(link_name-link_lnode-link_rnode ?S ?sub ?kriyA)
(root-verbchunk-tam-parser_chunkids $? ?kriyA $? ?head)
(link_name-link_expansion ?J  J $?)
(link_name-link_lnode-link_rnode ?J ?prep ?noun)
(linkid-word-node_cat ?prep ?viBakwi ?)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-"?viBakwi"_saMbanXI	"?head"	"?noun")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	CO_link_1	kriyA-"?viBakwi"_saMbanXI	"?head"	"?noun")"crlf)
)
;Ex. In this world no one can live without air. 

(defrule rule80
(link_name-link_lnode-link_rnode Paf ?verb ?m-up)
(link_name-link_lnode-link_rnode EAm ?m ?m-up)
(link_name-link_lnode-link_rnode MVt ?m-up ?t)
(linkid-word-node_cat ?m ?more ?)
(link_name-link_expansion  ?O O ? c)
?f0<-(link_name-link_lnode-link_rnode ?O  ?t ?t-up)
=>
(retract ?f0)
(printout	?*fp*	"(using-parser-ids 	"?more"_upameya-than_upamAna	"?m-up"	"?t-up")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule80	"?more"_upameya-than_upamAna	"?m-up"	"?t-up")"crlf)
)
;Ex.    He is more intelligent than John. He is more intelligent than the boys

(defrule rule23
(link_name-link_lnode-link_rnode Paf ?x ?m-up)
(link_name-link_lnode-link_rnode EAm ?m ?m-up)
(link_name-link_lnode-link_rnode MVta ?m-up ?t)
(link_name-link_expansion ?C  C $?)
(link_name-link_lnode-link_rnode ?C ?t ?t-up)
(link_name-link_lnode-link_rnode AFd ?t ?verb)
=>
(printout	?*fp*	"(using-parser-ids 	more_upameya-than_upamAna	"?m-up"	"?t-up")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule23	more_upameya-than_upamAna	"?m-up"	"?t-up")"crlf)
)
;Ex.    He is more intelligent than I am.

(defrule more-than
(link_name-link_lnode-link_rnode MVt ?x ?y)
(link_name-link_expansion ?O  O $?)
(link_name-link_lnode-link_rnode ?O ?x ?m-up)
(link_name-link_expansion ?D  D m $?)
(link_name-link_lnode-link_rnode ?D ?m ?m-up)
(link_name-link_lnode-link_rnode Osc|Opc  ?y ?t-up)
(linkid-word-node_cat ?m ?more ?)
=>
(printout	?*fp*	"(using-parser-ids 	"?more"_upameya-than_upamAna	"?m-up"	"?t-up")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	more-than	"?more"_upameya-than_upamAna	"?m-up"	"?t-up")"crlf)
)
;Ex. He has more MONEY than TIME.

(defrule more-than_1
(link_name-link_lnode-link_rnode MVt ?x ?than)
(link_name-link_lnode-link_rnode MVp ?y ?prep)
(link_name-link_expansion ?J  J $?)
(link_name-link_lnode-link_rnode ?J ?prep ?more_upameya)
(link_name-link_lnode-link_rnode MVpt ?than ?prep1)
(link_name-link_expansion ?J1  J $?)
(link_name-link_lnode-link_rnode ?J1 ?prep1 ?upamAna)
=>
(printout	?*fp*	"(using-parser-ids 	more_upameya-than_upamAna	"?more_upameya"	"?upamAna")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	more-than_1	more_upameya-than_upamAna	"?more_upameya"	"?upamAna")"crlf)
)
;Ex. We do this more for pleasure than for money.

(defrule upameyopamAna
(link_name-link_lnode-link_rnode EBmm|EB*m ?x ?y)
(link_name-link_lnode-link_rnode Paf ?x ?a)
(link_name-link_lnode-link_rnode MVt ?a ?b)
(link_name-link_lnode-link_rnode Pafc ?b ?c)
(linkid-word-node_cat ?y ?more ?)
=>
(printout	?*fp*	"(using-parser-ids 	"?more"_upameya-than_upamAna	"?a"	"?c")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	upameyopamAna	"?more"_upameya-than_upamAna	"?a"	"?c")"crlf)
)
;Ex.    He is more intelligent than attractive.

(defrule upameyopamAna_1
(link_name-link_expansion ?S  S $?)
(link_name-link_lnode-link_rnode ?S ?m-up ?x)
(link_name-link_expansion ?Pa  P a $?v)
(link_name-link_lnode-link_rnode ?Pa ?x ?up)
(link_name-link_lnode-link_rnode MVt ?up ?t)
(link_name-link_expansion ?O O ? c)
(link_name-link_lnode-link_rnode ?O ?t ?t-up)
=>
(printout	?*fp*	"(using-parser-ids 	more_upameya-than_upamAna	"?m-up"	"?t-up")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	upameyopamAna_1	more_upameya-than_upamAna	"?m-up"	"?t-up")"crlf)
)
;Ex.    He is stronger than me.

(defrule upameyopamAna_2
(link_name-link_expansion ?Ot  O $? t)
(link_name-link_lnode-link_rnode ?Ot ?v ?m-up)
(link_name-link_lnode-link_rnode EBmm ?v ?m)
(link_name-link_lnode-link_rnode MVt ?v ?t)
(link_name-link_expansion ?O O $? c)
(link_name-link_lnode-link_rnode ?O ?t ?t-up)
=>
(printout	?*fp*	"(using-parser-ids 	more_upameya-than_upamAna	"?m-up"	"?t-up")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	upameyopamAna_2	more_upameya-than_upamAna	"?m-up"	"?t-up")"crlf)
)
;Ex.    He is more a teacher than a scholar.

(defrule upameyopamAna_3
(link_name-link_lnode-link_rnode MVb ?v ?m-up)
(link_name-link_lnode-link_rnode MVt ?v ?t-up)
(link_name-link_expansion ?ID I D $?)
(link_name-link_lnode-link_rnode ?ID ?t ?t-up)
=>
(printout	?*fp*	"(using-parser-ids 	more_upameya-than_upamAna	"?m-up"	"?t-up")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	upameyopamAna_3	more_upameya-than_upamAna	"?m-up"	"?t-up")"crlf)	

(printout	?*fp*	"(using-parser-ids 	kriyA-kriyA_viSeRaNa	"?v"	"?m-up")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	upameyopamAna_3	kriyA-kriyA_viSeRaNa	"?v"	"?m-up")"crlf)
)
;Ex.   He talked longer than usual. He is working harder than usual. 

(defrule upameyopamAna_4
(declare (salience 495))
(link_name-link_lnode-link_rnode   MVt   ?v  ?t)
?f0<- (link_name-link_lnode-link_rnode    Om   ?v  ?obj)     
(link_name-link_expansion  ?O  O ? c)
(link_name-link_lnode-link_rnode   ?O    ?t   ?paxa_head)
(link_name-link_expansion    ?D D $?va)
(link_name-link_lnode-link_rnode   ?D       ?det   ?paxa_head)
=>
(retract ?f0)
(printout	?*fp*	"(using-parser-ids 	kriyA-object	"?v"	"?paxa_head")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	upameyopamAna_4	kriyA-object	"?v"	"?paxa_head")"crlf)
)
;Ex.   Jerry has more than five dollars.

(defrule upameyopamAna_5
(declare (salience 495))
(link_name-link_expansion    ?S S $?var)
(link_name-link_lnode-link_rnode   ?S       ?sub   ?v)
(link_name-link_expansion  ?O  O ? t)
?f0<- (link_name-link_lnode-link_rnode   ?O   ?v  ?x)
(link_name-link_lnode-link_rnode   Mam   ?x  ?paxa_head)
(link_name-link_expansion    ?D D $?va)
(link_name-link_lnode-link_rnode   ?D       ?det   ?x)
=>
(retract ?f0)
(printout	?*fp*	"(using-parser-ids 	subject-subject_samAnAXikaraNa	"?sub"	"?paxa_head")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	upameyopamAna_5	subject-subject_samAnAXikaraNa	"?v"	"?paxa_head")"crlf)
)
;Ex.  Gorge is five years older than Margaret.

(defrule upameyopamAna_6
(declare (salience 595))
(link_name-link_expansion    ?S S $?var)
(link_name-link_lnode-link_rnode   ?S       ?m-up   ?v)
(link_name-link_expansion  ?O  O ? t)
(link_name-link_lnode-link_rnode   ?O   ?v  ?x)
(link_name-link_lnode-link_rnode   Mam   ?x  ?y)
(link_name-link_lnode-link_rnode   MVt   ?y  ?t)
(link_name-link_expansion    ?Oc O ? c)
(link_name-link_lnode-link_rnode   ?Oc       ?t   ?t-up)
=>
(printout	?*fp*	"(using-parser-ids 	more_upameya-than_upamAna	"?m-up"	"?t-up")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	upameyopamAna_6	more_upameya-than_upamAna	"?m-up"	"?t-up")"crlf)
)
;Ex.  Gorge is five years older than Margaret.

(defrule upameyopamAna_7
(declare (salience 595))
(link_name-link_expansion    ?S S $?var)
(link_name-link_lnode-link_rnode   ?S       ?w-up   ?v)
(link_name-link_expansion  ?Pa  P a $?va)
(link_name-link_lnode-link_rnode   ?pa   ?v  ?s-s)
(link_name-link_lnode-link_rnode   EAy ?as1 ?s-s) 
(link_name-link_lnode-link_rnode   MVp   ?s-s  ?as) 
(link_name-link_expansion    ?J J $?)
(link_name-link_lnode-link_rnode   ?J       ?as   ?up)
=>
(printout	?*fp*	"(using-parser-ids 	wulya_upameya-upamAna	"?w-up"	"?up")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	upameyopamAna_7	wulya_upameya-upamAna	"?w-up"	"?up")"crlf)
)
;Ex. I am as intelligent as John. It was as frail as eggshell. 

(defrule upameyopamAna_8
(declare (salience 595))
(link_name-link_expansion    ?E    E A $?var)
(link_name-link_lnode-link_rnode   ?E   ?more  ?x)
(linkid-word-node_cat ?more ?mor_or_less ?)
(link_name-link_expansion    ?LE   L E $?vari)
(link_name-link_lnode-link_rnode   ?LE    ?x   ?than)
(root-verbchunk-tam-parser_chunkids ? ? $?chunk ?m_up)
(root-verbchunk-tam-parser_chunkids ? ? $?chunks ?t_up)
(test (> (string_to_integer ?m_up) (string_to_integer ?x)))
(test (> (string_to_integer ?t_up) (string_to_integer ?than)))
(test (neq ?m_up ?t_up))
=>
(printout	?*fp*	"(using-parser-ids 	"?mor_or_less"_upameya-than_upamAna	"?m_up"	"?t_up")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	upameyopamAna_8	"?mor_or_less"_upameya-than_upamAna	"?m_up"	"?t_up")"crlf)
)
;Ex. It is more likely that Joe will go than that Fred will go.

(defrule upameyopamAna_9
(declare (salience 595))
(link_name-link_expansion    ?E    E A $?var)
(link_name-link_lnode-link_rnode   ?E   ?more  ?x)
(linkid-word-node_cat ?more ?mor_or_less ?)
(link_name-link_expansion    ?LE   L E $?vari)
(link_name-link_lnode-link_rnode   ?LE    ?x   ?than)
(link_name-link_lnode-link_rnode   I   ?more  ?x)
(root-verbchunk-tam-parser_chunkids ? ? $?chunk ?m_up)
(root-verbchunk-tam-parser_chunkids ? ? $?chunks ?t_up)
(test (> (string_to_integer ?m_up) (string_to_integer ?x)))
(test (> (string_to_integer ?t_up) (string_to_integer ?than)))
(test (neq ?m_up ?t_up))
=>
(printout	?*fp*	"(using-parser-ids 	"?mor_or_less"_upameya-than_upamAna	"?m_up"	"?t_up")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	upameyopamAna_9	"?mor_or_less"_upameya-than_upamAna	"?m_up"	"?t_up")"crlf)
)
;Ex.  He is less likely to go than to stay.

(defrule upameyopamAna_10
(declare (salience 595))
(link_name-link_expansion    ?S1    S ?not_i $?varia)
(link_name-link_lnode-link_rnode   ?S1   ?m_up ?v1)
(link_name-link_expansion    ?MVt    M V t $?var)
(link_name-link_lnode-link_rnode   ?MVt   ?v1  ?t)
(link_name-link_expansion    ?C    C $?vars)
(link_name-link_lnode-link_rnode   ?C   ?t  ?v2)
(link_name-link_expansion    ?S   S ?s_v_i $?vari)
(link_name-link_lnode-link_rnode   ?S   ?v2  ?t_up)
=>
(if (eq ?s_v_i I)then
(printout	?*fp*	"(using-parser-ids 	more_upameya-than_upamAna	"?m_up"	"?t_up")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	upameyopamAna_10	more_upameya-than_upamAna	"?m_up"	"?t_up")"crlf)	
else
(printout	?*fp*	"(using-parser-ids 	more_upameya-than_upamAna	"?m_up"	"?v2")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	upameyopamAna_10????????	more_upameya-than_upamAna	"?m_up"	"?v2")"crlf)	
;else
;(printout	?*fp*	"(using-parser-ids 	more_upameya-than_upamAna	"?m_up"	"?v2")"crlf)	
;(printout	?*rel_debug*	"(Rule-Rel-ids	upameyopamAna_10	more_upameya-than_upamAna	"?m_up"	"?v2")"crlf)
)
)
;Ex. He has more money than does Joe.
 
(defrule to-inf
(link_name-link_expansion    ?TO   T O $?vars)
(link_name-link_lnode-link_rnode ?TO ?x ?to)
(link_name-link_expansion    ?I   I $?var)
(link_name-link_lnode-link_rnode ?I  ?to ?inf)
(not (linkid-word-node_cat ?x have|has|had ?))
=>
(printout	?*fp*	"(using-parser-ids 	to-infinitive	"?to"	"?inf")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	to-inf	to-infinitive	"?to"	"?inf")"crlf)
)
;Ex.    I had to run fast TO CATCH the bus. I went to read. I want to do it

(defrule to-inf1
(link_name-link_expansion  ?R   R $?vars)
(link_name-link_lnode-link_rnode ?R  ?x ?to)
(link_name-link_lnode-link_rnode I  ?to ?inf)
(linkid-word-node_cat ?to to ?)
=>
(printout	?*fp*	"(using-parser-ids 	to-infinitive	"?to"	"?inf")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	to-inf1	to-infinitive	"?to"	"?inf")"crlf)
)
;Ex.    I wonder what  to buy. I am wondering which question to ask first. 

(defrule to-inf2
(link_name-link_lnode-link_rnode I|If  ?to ?inf)
(linkid-word-node_cat ?to to ?)
=>
(printout	?*fp*	"(using-parser-ids 	to-infinitive	"?to"	"?inf")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	to-inf1	to-infinitive	"?to"	"?inf")"crlf)
)
;Ex.  A fat ugly boy had to eat too many fruits to lose his weight.  Passion is a must to reach your potential. 
    ; I had to run fast to catch the bus .   

(defrule mu_kri-rel_kri
;(declare (salience 4))
(link_name-link_expansion  ?R   R $?vars)
?f0<-(link_name-link_lnode-link_rnode  ?R  ?x ?y)
(link_name-link_expansion  ?B   B $?var)
(link_name-link_lnode-link_rnode ?B  ?x ?rel_kri)
(link_name-link_expansion  ?S   S $?vari)
(link_name-link_lnode-link_rnode ?S  ?x ?mu_kri)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids)
(test (member$ ?mu_kri $?chunk_ids))
=>
(retract ?f0)
(assert (got_relation_for_R_link))
(printout	?*fp*	"(using-parser-ids 	muKya_vAkya-sApekRa_upavAkya	"(nth$	(length	$?chunk_ids)	$?chunk_ids)"	"?rel_kri")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	mu_kri-rel_kri	muKya_vAkya-sApekRa_upavAkya	"(nth$	(length	$?chunk_ids)	$?chunk_ids)"	"?rel_kri")"crlf)
)
;Ex. The dog I chased was black.  The snake the mongoose attacked hissed loudly.

(defrule mu_kri-rel_kri_4
(declare (salience 4))
(link_name-link_expansion ?R  R $?vars)
?f0<- (link_name-link_lnode-link_rnode  ?R  ?x ?y)
(link_name-link_expansion  ?B   B $?var)
(link_name-link_lnode-link_rnode ?B  ?x ?rel_kri)
(link_name-link_expansion  ?S   S $?vari)
(link_name-link_lnode-link_rnode ?S  ?x ?mu_kri)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids)
(test (member$ ?rel_kri $?chunk_ids))
=>
(printout	?*fp*	"(using-parser-ids 	muKya_vAkya-sApekRa_upavAkya	"?mu_kri"	"(nth$	(length	$?chunk_ids)	$?chunk_ids)")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	mu_kri-rel_kri_4	muKya_vAkya-sApekRa_upavAkya	"?mu_kri"	"(nth$	(length	$?chunk_ids)	$?chunk_ids)")"crlf)
)
;Ex. The girl who was crying is here. 

(defrule mu_kri-rel_kri_2
(declare (salience 410))
(link_name-link_expansion  ?SI   S I $?vars)
(link_name-link_lnode-link_rnode  ?SI  ?mu_kri ?s)
(link_name-link_expansion  ?O   O $?vari)
(link_name-link_lnode-link_rnode  ?O  ?mu_kri ?s_s)
(link_name-link_lnode-link_rnode  Mj  ?s_s ?prep)
(link_name-link_expansion  ?C   C $?var)
(link_name-link_lnode-link_rnode ?C  ?prep ?n)
(link_name-link_expansion  ?S   S $?v)
(link_name-link_lnode-link_rnode ?S  ?n ?rel_kri)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids)
(test (member$ ?rel_kri $?chunk_ids))
=>
(printout	?*fp*	"(using-parser-ids 	muKya_vAkya-sApekRa_upavAkya	"?mu_kri"	"(nth$	(length	$?chunk_ids)	$?chunk_ids)")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	mu_kri-rel_kri_2	muKya_vAkya-sApekRa_upavAkya	"?mu_kri"	"(nth$	(length	$?chunk_ids)	$?chunk_ids)")"crlf)
)
;Ex. Is that the film in which he will kill his mother.

(defrule mu_kri-rel_kri_7
(declare (salience 520))
(link_name-link_expansion  ?S   S $?vars)
(link_name-link_lnode-link_rnode  ?S ?x ?mu_kri)
(link_name-link_expansion  ?B   B $?vari)
(link_name-link_lnode-link_rnode  ?B  ?x ?prep)
(link_name-link_lnode-link_rnode  MVp  ?rel_kri ?prep)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids)
(test (member$ ?mu_kri $?chunk_ids))
=>
(assert (got_relation_for_B_link))
(printout	?*fp*	"(using-parser-ids 	muKya_vAkya-sApekRa_upavAkya	"(nth$	(length	$?chunk_ids)	$?chunk_ids)"	"?rel_kri")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	mu_kri-rel_kri_7	muKya_vAkya-sApekRa_upavAkya	"(nth$	(length	$?chunk_ids)	$?chunk_ids)"	"?rel_kri")"crlf)
)
;Ex.  The planet that we will live on will be of medium size. 

(defrule mu_kri-rel_kri_5
(declare (salience 1000))
(link_name-link_expansion  ?O   O $?vars)
(link_name-link_lnode-link_rnode  ?O  ?mu_kri ?ob)
(link_name-link_expansion  ?B   B $?vari)
(link_name-link_lnode-link_rnode  ?B  ?ob ?rel_kri)
(link_name-link_expansion  ?R   R $?v)
(link_name-link_lnode-link_rnode ?R  ?ob ?x)
=>
(printout	?*fp*	"(using-parser-ids 	muKya_vAkya-sApekRa_upavAkya	"?mu_kri"	"?rel_kri")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	mu_kri-rel_kri_5	muKya_vAkya-sApekRa_upavAkya	"?mu_kri"	"?rel_kri")"crlf)
)
;Ex. those are the boys who want to do it. Phil gave me a sweater which he bought in Paris.
;Ex.  Bhishma gave a sound piece of advice to Karna which he depended on during the war

;(link_name-link_lnode-link_rnode E|Em ?x ?head_id)
;(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids)
;(test (member$ ?head_id $?chunk_ids))
;=>
;(printout ?*fp*   "(using-parser-ids    kriyA-kriyA_viSeRaNa    "(nth$  (length $?chunk_ids)    $?chunk_ids)"   "?x")"crlf)
;(printout ?*rel_debug* "(Rule-Rel-ids  ruleEm  kriyA-kriyA_viSeRaNa  "(nth$  (length $?chunk_ids) $?chunk_ids)" "?x")"crlf)
(defrule mu_kri-rel_kri_6
(declare (salience 1000))
(link_name-link_expansion  ?S   S $?vars)
(link_name-link_lnode-link_rnode  ?S  ?sub ?mu_kri)
;(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids)
;(test (member$ ?mu_kri  $?chunk_ids))
(link_name-link_lnode-link_rnode  PP   ?mu_kri ?mu)
;(link_name-link_lnode-link_rnode  MVp   (nth$  (length $?chunk_ids)    $?chunk_ids) ?prep)
(link_name-link_lnode-link_rnode  MVp   ?mu ?prep)
(link_name-link_lnode-link_rnode  J|Js|Jp  ?prep ?ob)
(link_name-link_expansion  ?B   B $?vari)
(link_name-link_lnode-link_rnode  ?B  ?ob ?rel_kri)
(link_name-link_expansion  ?R   R $?v)
(link_name-link_lnode-link_rnode ?R  ?ob ?x)
=>
(printout       ?*fp*   "(using-parser-ids      muKya_vAkya-sApekRa_upavAkya    "?mu"       "?rel_kri")"crlf)
(printout       ?*rel_debug*    "(Rule-Rel-ids	mu_kri-rel_kri_6	muKya_vAkya-sApekRa_upavAkya	"?mu"	"?rel_kri")"crlf)
)
;Ex. People on the earth had almost forgotten about the message they had sent to outer space.

(defrule sub-jo_s
(declare (salience 200))
(link_name-link_expansion ?B   B $?var)
(link_name-link_lnode-link_rnode ?B   ?sub  ?y)
(link_name-link_expansion ?R    R $?vari)
(link_name-link_lnode-link_rnode ?R  ?sub  ?s_s)
(not (link_name-link_lnode-link_rnode Rn  ?sub  ?s_s))
(not (link_name-link_lnode-link_rnode Osi  ?sub  ?s)); This is 4 ex. "It is Jane who wants to do it."
(not (got_relation_for_O))
=>
(printout	?*fp*	"(using-parser-ids 	viSeRya-jo_samAnAXikaraNa	"?sub"	"?s_s")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	sub-jo_s	viSeRya-jo_samAnAXikaraNa	"?sub"	"?s_s")"crlf)
)
;Ex.  The dog who chased me was black. the book which you read yesterday is here.


;(defrule sub-jo_s_1
;(declare (salience 200))
;(link_name-link_expansion ?B   B $?var)
;(link_name-link_lnode-link_rnode ?B   ?sub  ?y)
;(link_name-link_expansion ?R    R $?vari)
;(link_name-link_lnode-link_rnode ?R  ?sub  ?s_s)
;(link_name-link_lnode-link_rnode Osi  ?sub  ?vi)
;=>
;(printout	?*fp*	"(using-parser-ids 	viSeRya-jo_samAnAXikaraNa	"?vi"	"?s_s")"crlf)	
;(printout	?*rel_debug*	"(Rule-Rel-ids	sub-jo_s_1	viSeRya-jo_samAnAXikaraNa	"?vi"	"?s_s")"crlf)	
;)
;Ex.  It is Jane who wants to do it.

(defrule relc-sub-sub_s
(declare (salience 410))
(link_name-link_expansion  ?SI   S I $?vars)
(link_name-link_lnode-link_rnode  ?SI  ?mu_kri ?s)
(link_name-link_expansion  ?O   O $?vari)
(link_name-link_lnode-link_rnode  ?O  ?mu_kri ?s_s)
(link_name-link_lnode-link_rnode  Mj  ?s_s ?prep)
=>
(printout	?*fp*	"(using-parser-ids 	subject-subject_samAnAXikaraNa	"?s"	"?s_s")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	relc-sub-sub_s	subject-subject_samAnAXikaraNa	"?s"	"?s_s")"crlf)
)
;Ex. Is that the film in which he will kill his mother.

(defrule relc-ob-jo_s
(declare (salience 410))
(link_name-link_expansion  ?O   O $?vari)
(link_name-link_lnode-link_rnode  ?O  ?mu_kri ?ob)
(link_name-link_expansion  ?R   R $?va)
(link_name-link_lnode-link_rnode  ?R  ?ob  ?jo_s)
=>
(assert (got_relation_for_O))
(printout	?*fp*	"(using-parser-ids 	viSeRya-jo_samAnAXikaraNa	"?ob"	"?jo_s")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	relc-ob-jo_s	viSeRya-jo_samAnAXikaraNa	"?ob"	"?jo_s")"crlf)
)
;Ex.  I know a woman who has two children. 

(defrule rule58
(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
(link_name-link_lnode-link_rnode  ?lname  ?x ?y)
(link_name-link_lnode-link_rnode Bp|Bs ?z ?y)
(link_name-link_lnode-link_rnode Cr ?a ?x)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-object	"?y"	"?a")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	rule58	kriyA-object	"?y"	"?a")"crlf)
)
;Ex. The dogs who I chased were black. The boy who you called yesterday has arrived.

(defrule jo_sub
(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
(link_name-link_lnode-link_rnode  ?lname  ?x ?y)
(link_name-link_lnode-link_rnode Bp|Bs ?x ?kri)
(link_name-link_lnode-link_rnode RS ?sub ?kri)
(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids)
(test (eq ?kri (nth$ 1 $?chunk_ids)))
=>
(bind ?id (nth$ (length$ $?chunk_ids) $?chunk_ids)) 
(printout	?*fp*	"(using-parser-ids 	kriyA-subject	"?id"	"?sub")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	jo_sub	kriyA-subject	"?id"	"?sub")"crlf)
)
;Ex. The girl who was crying is here. 


;(defrule jo_sub_1
;(or (link_name-link_expansion    ?lname   S ~F $?vars)(link_name-link_expansion  ?lname  S ~I $?vars))
;(link_name-link_lnode-link_rnode  ?lname  ?x ?y)
;(link_name-link_lnode-link_rnode Bp|Bs ?x ?k)
;(link_name-link_expansion    ?O   O $?var)
;(link_name-link_lnode-link_rnode ?O ?v ?vi)
;(link_name-link_lnode-link_rnode RS ?vi ?kri)
;(root-verbchunk-tam-parser_chunkids ? ? ? $?chunk_ids)
;(test (eq ?kri (nth$ 1 $?chunk_ids)))
;=>
;(bind ?id (nth$ (length$ $?chunk_ids) $?chunk_ids))
;(printout	?*fp*	"(using-parser-ids 	kriyA-subject	"?id"	"?sub")"crlf)	
;(printout	?*rel_debug*	"(Rule-Rel-ids	jo_sub_1	kriyA-subject	"?id"	"?sub")"crlf)	
;)
;Ex. God helps those who help themselves.

(defrule  nirXArya-nirXAraNa
(link_name-link_expansion  ?J   J $?vars)
(link_name-link_lnode-link_rnode ?J  ?prep ?nir)
(link_name-link_lnode-link_rnode OF  ?which ?prep)
(linkid-word-node_cat ?which which|Which ?)
(linkid-word-node_cat ?prep of ?)
=>
(printout	?*fp*	"(using-parser-ids 	nirXArya-nirXAraNa	"?which"	"?nir")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	nirXArya-nirXAraNa	nirXArya-nirXAraNa	"?which"	"?nir")"crlf)
)
;The other name for this relation may be avayava-samuxAya.
;Ex. Which of your parents do you feel closer to. 

(defrule  nirXArya-nirXAraNa_1
(link_name-link_expansion  ?ID   I D  $?vars)
(link_name-link_lnode-link_rnode ?ID  ?prep ?nirXAraNa)
(link_name-link_lnode-link_rnode  MF  ?nir ?nirXAraNa)
=>
(printout	?*fp*	"(using-parser-ids 	nirXArya-nirXAraNa	"?nir"	"?nirXAraNa")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	nirXArya-nirXAraNa_1	nirXArya-nirXAraNa	"?nir"	"?nirXAraNa")"crlf)
)
;Ex. Many people were injured , some of them children.

(defrule CO_TI
(link_name-link_expansion    ?CO C O $?var)
(link_name-link_lnode-link_rnode ?O ?a ?b)
(link_name-link_lnode-link_rnode TI ?a ?c)
(link_name-link_expansion   ?S S $?va)
(link_name-link_lnode-link_rnode ?S ?b ?v)
(linkid-word-node_cat ?a ?viBakwi ?)
=>
(printout	?*fp*	"(using-parser-ids 	kriyA-"?viBakwi"_saMbanXI	"?v"	"?c")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	CO_TI	kriyA-"?viBakwi"_saMbanXI	"?v"	"?c")"crlf)
)
;Ex.  As president of the company , it is my decision.

(defrule MVs_QI_Cs
(link_name-link_lnode-link_rnode  MVs ?a ?b)
(link_name-link_expansion    ?QI Q I $?var)
(link_name-link_lnode-link_rnode  ?QI   ?b ?c)
(or (link_name-link_lnode-link_rnode  Cs ?c ?s)  (link_name-link_lnode-link_rnode  Rn ?c ?s))
=>
(printout	?*fp*	"(using-parser-ids 	subject-conjunction	"?s"	"?b")"crlf)	
(printout	?*rel_debug*	"(Rule-Rel-ids	MVs_QI_Cs	subject-conjunction	"?s"	"?b")"crlf)
)
;Ex.  I will follow you no matter where you go. The public seem to love him , no matter what he does.


;Added by Sirisha Manju (02-11-09)
(defrule La_D_rule
(declare (salience 550))
(link_name-link_lnode-link_rnode La ?a ?b)
(link_name-link_expansion ?Det D $?var)
(link_name-link_lnode-link_rnode ?Det ?a ?c)
(linkid-word-node_cat ?b best ?)
=>
(printout       ?*fp*   "(using-parser-ids         viSeRya-viSeRaNa     "?c"    "?b")"crlf)
(printout       ?*rel_debug*    "(Rule-Rel-ids  La_rule      viSeRya-viSeRaNa     "?c"    "?b")"crlf)
)
;Ex : We convey our best wishes to the Chinmaya Dham Yatris .
 

;Added by sheetal(8-01-10).
(defrule Rn_Sp_I
(link_name-link_lnode-link_rnode Rn ?x ?y)
(link_name-link_lnode-link_rnode Sp ?y ?z)
(link_name-link_lnode-link_rnode I ?z ?a)
=>
(printout       ?*fp*   "(using-parser-ids      kriyA-object    "?a"    "?x")"crlf)
(printout       ?*rel_debug*    "(Rule-Rel-ids  Rn_Sp_I  kriyA-object    "?a"    "?x")"crlf)
)
;The question is who we should invite .

