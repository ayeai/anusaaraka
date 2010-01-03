 (defglobal ?*count* = 1)

 (deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (slot preposition (default 0))(slot Hin_position (default 0)))

 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/pada_ids.clp"))
 (batch* ?*path*)
 (load-facts "word.dat")
 (load-facts "English_sentence.dat")
 (load-facts "lwg_info.dat")
 (load-facts "pada_id_info.dat")
 (load-facts "pada_debug.dat")
 (assert (question "Enter the Sentence ::  "))
 (assert (question1 "Enter the Sentence ::  "))
 (assert (next_id 1))

 

 (defrule question
 (declare (salience 101))
 ?f<-(question ?text)
 =>
 (retract ?f)
 (system "clear")
 (system "sed 's/(Eng_sen \"//g' English_sentence.dat |sed  's/\")//g'|sed 's/&quot;/\"/g'|sed 's/\&amp;/&/g' >jnk")
 (printout t "Sentence :: " (system "cat jnk") crlf)
 (system "anu_link-parser.sh <jnk >jnk1 2>err")
 (system "cat jnk1")
 
(printout t crlf "LWG information:" crlf)
 (system "cat lwg_info.dat") 
 (printout t "=====================" crlf)

 (printout t crlf "Relations information:" crlf)
 (system "cat relations.dat")
 (printout t "=====================" crlf)

 (printout t crlf "pada Information:" crlf)
 (system "cat pada_debug.dat")
 (printout t "=====================" crlf)
 )

 (defrule sentence_display
 (declare (salience 100))
 ?f<-(next_id ?id)
 (id-word ?id ?word)
 =>
 (retract ?f)
 (if (eq ?id 1) then (printout t crlf crlf))
 (if (> ?*count* 6) then
     (bind ?*count* 0)
     (printout t crlf))
 
 (printout t " "?word " - "?id" |")
 (bind ?*count* (+ ?*count* 1))
 (bind ?id (+ ?id 1))
 (assert (next_id ?id))
 )

 (defrule tst
 (declare (salience -100))
  =>
 (printout t crlf crlf))

 (defrule ask_question
 (declare (salience 95))
 ?f<-(question1 ?txt)
  =>
  (retract ?f)
  (printout t crlf ?txt crlf "Is there any wrong pada formation??????? (y/n) " crlf)
  (bind ?read (read))
     (if (eq ?read n) then
          (assert (padas correct))
      else (if (eq ?read y) then
           (assert (padas wrong))
      else (printout t "Legal answers are y or n" crlf)
           (assert (question ?txt))
           ))
  )



 (defrule pada_correct
 (declare (salience 91))
 ?f<-(padas correct)
  =>
 (retract ?f)
      (printout t "Is the parser's output correct? (y/n) :: ")
      (bind ?read1 (read))
      (if (eq ?read1 y) then
  ;        (assert (parser_output correct))
	  (printout t crlf "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-="crlf crlf "Your problem might be related to some other module, plese debug using that one" crlf )
      else (if (eq ?read1 n) then
               (printout t "Can you correct the parse using the pre-processor (y/n) :: ")
               (bind ?read (read))
               (if (eq ?read y) then
                   (printout t "Sorry, currently this facility is not available :(" crlf)
                else (if (eq ?read n) then
                   (printout t "Then send a mail to Anusaaraka team :: sukhada8@gmail.com "crlf)
                else (printout t "Legal answers are (y/n)" crlf)
                ))
       else (printout t "Legal answers are (y/n)" crlf)
       (assert (padas correct)))
      )
  )

 (defrule wrong_pada
 (declare (salience 91))
 ?f<-(padas wrong)
  =>
  (retract ?f)
  (printout t "Type the pada ids  Ex:- 3 4 5 :: " crlf)
  (bind ?txt (explode$ (readline)))
  (printout t ?txt crlf)
  (assert (debug_pada ?txt))
  )
 
  (defrule debug_pada
  (declare (salience 90))
 ?f<-(debug_pada $?ids)
  (Rule_name-pada_head_id-pada_type-ids   ?r_name  ?p_head ?g_type $?ids)
  =>
  (retract ?f)
  (printout t "pada is formed using the rule \"" ?r_name "\""  crlf "And the rule is defined as..... " crlf crlf)
  (ppdefrule ?r_name)
  (printout t crlf "NOTE:: " crlf
  "1.If you want to write any rule for the pada formation please go to the directory \"anu_testing/Anu_clp_files\" and write the rules in \"pada_ids.clp\" file " crlf
  "2.After saving the rule complie it using the following command "crlf"   myclips -f create_binary_files.clp      "crlf crlf
  "3.If you want your rule to be part of main anusaaraka system please mail it to sukadha8@gmail.com" crlf
  "4.Use following command to exit :: (exit)" crlf)
  )

  (defrule debug_pada1
  (declare (salience 89))
 ?f<-(debug_pada $?ids)
  =>
  (retract ?f)
  (printout t "The specified  pada is not present in the padas of the current sentence." crlf )
  (assert (padas wrong))
  )

  
 (run)
