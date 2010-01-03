(deffunction string_to_integer (?link_id); [Removes the first characterfrom the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?link_id)))

 (deftemplate word-morph(slot original_word)(slot morph_word)(slot root)(slot category)(slot suffix)(slot number))


 (defrule rule5
 (declare (salience 4000))
 (rel_name-sids nsubj|nsubjpass ?head ?id1)
 (rel_name-sids aux|auxpass ?head ?id2)
 (rel_name-sids aux|auxpass ?head ?id3)
 (rel_name-sids aux|auxpass ?head ?id4)
 (rel_name-sids aux|auxpass ?head ?id5)
 (test (and (<  (string_to_integer ?id1) (string_to_integer ?id2)) (< (string_to_integer ?id2) (string_to_integer ?id3)) (< (string_to_integer ?id3) (string_to_integer ?id4)) (< (string_to_integer ?id4) (string_to_integer ?id4))))
 (not (grouped_head ?head))
  =>
 (assert (root-verbchunk-tam-parser_chunkids  root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided ?id2 ?id3 ?id4 ?id5  ?head ))
 (assert (grouped_head ?head))
 )

 (defrule rule4
 (declare (salience 3000))
 (rel_name-sids nsubj|nsubjpass ?head ?id1)
 (rel_name-sids aux|auxpass ?head ?id2)
 (rel_name-sids aux|auxpass ?head ?id3)
 (rel_name-sids aux|auxpass ?head ?id4)
 (test (and (<  (string_to_integer ?id1) (string_to_integer ?id2)) (< (string_to_integer ?id2) (string_to_integer ?id3)) (< (string_to_integer ?id3) (string_to_integer ?id4))))
  (not (grouped_head ?head))
 =>
(assert (root-verbchunk-tam-parser_chunkids  root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided ?id2 ?id3 ?id4 ?head))
 (assert (grouped_head ?head))
 )

 (defrule rule3
 (declare (salience 2000))
 (rel_name-sids nsubj|nsubjpass ?head ?id1)
 (rel_name-sids aux|auxpass ?head ?id2)
 (rel_name-sids aux|auxpass ?head ?id3)
 (test (and (<  (string_to_integer ?id1) (string_to_integer ?id2)) (< (string_to_integer ?id2) (string_to_integer ?id3))))
 (not (grouped_head ?head))
  =>
 (assert (root-verbchunk-tam-parser_chunkids  root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided ?id2 ?id3  ?head))
 (assert (grouped_head ?head))
 )

 (defrule rule3-1
 (declare (salience 2000))
 (rel_name-sids nsubj|nsubjpass ?kri ?id1)
 (rel_name-sids xcomp ?kri ?head)
 (rel_name-sids aux|auxpass ?head ?id2)
 (rel_name-sids aux|auxpass ?head ?id3)
 (test (and (<  (string_to_integer ?id1) (string_to_integer ?id2)) (< (string_to_integer ?id2) (string_to_integer ?id3))))
 (not (grouped_head ?head))
  =>
 (assert (root-verbchunk-tam-parser_chunkids  root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided ?kri ?id2 ?id3  ?head))
 (assert (grouped_head ?head))
  (assert (grouped_head ?kri))
 )
 ; Added by Shirisha Manju
 ;Broken windows need to be replaced .
 

 (defrule rule2
 (declare (salience 1000))
 (rel_name-sids nsubj|nsubjpass ?head ?id1)
 (rel_name-sids aux|auxpass ?head ?id2)
 (test (< (string_to_integer ?id1) (string_to_integer ?id2)))
 (not (grouped_head ?head))
  =>
 (assert (root-verbchunk-tam-parser_chunkids  root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided ?id2  ?head))
 (assert (grouped_head ?head))
 )

 ;Ex:-You are lucky I am here .
 (defrule rule1-0
 (declare (salience 900))
 (rel_name-sids nsubj|auxpass ?head ?id1)
 (not(rel_name-sids cop ?head ?))
 (not (grouped_head ?head))
  =>
 (assert (root-verbchunk-tam-parser_chunkids  root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided  ?head))
 (assert (grouped_head ?head))
 )

 (defrule rule1-1
 (declare (salience 900))
 (rel_name-sids aux|auxpass ?head ?id1)
 (not(rel_name-sids cop ?head ?))
 (not (grouped_head ?head))
 (s_id-word ?id1 ~to)
  =>
(assert (root-verbchunk-tam-parser_chunkids  root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided  ?id1 ?head))
 (assert (grouped_head ?head))
 )

 ;Ex:-You are lucky I am here .
 (defrule rule1-2
 (declare (salience 901))
 (rel_name-sids nsubj|nsubjpass ?id ?id1)
 (rel_name-sids cop ?id ?head)
 (not (grouped_head ?head))
 =>
 (assert (root-verbchunk-tam-parser_chunkids  root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided ?head))
 (assert (grouped_head ?head))
 )

 ; Ex:-I will not do it . 
 (defrule not_rule
 (declare (salience 800))
 (rel_name-sids neg ?head ?not)
 ?f1<-(s_id-word ?not not)
 ?f<-(root-verbchunk-tam-parser_chunkids root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided $?ids)
 (test (and (not (member$ ?not $?ids))(member$ ?head $?ids)))
 (test (and (> (string_to_integer  ?not) (string_to_integer  (nth$ 1 $?ids))) (< (string_to_integer  ?not) (string_to_integer  (nth$ (length $?ids) $?ids)))))
  =>
  (retract ?f )
  (bind ?len (length $?ids))
  (loop-for-count (?i 1 ?len)
                  (bind ?j (nth$ ?i $?ids))
                  (if (> (string_to_integer ?not) (string_to_integer ?j)) then
                      (bind ?pos (member$ ?j $?ids))
                      (bind $?ids (insert$ $?ids (+ ?pos 1) ?not))
                      (break)
                   ))
                  
  (assert (root-verbchunk-tam-parser_chunkids root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided $?ids))
  )
 

 (defrule cc_rule
 (declare (salience 750))
 ?f<-(root-verbchunk-tam-parser_chunkids root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided $?ids ?head)
 (rel_name-sids conj ?head ?cc)
 (not (grouped_head ?cc))
  =>
 (assert (root-verbchunk-tam-parser_chunkids root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided $?ids ?cc))
 (assert (grouped_head ?cc))
 ) 

 ;She is making the girl feed the child .
 ;She made the girl feed the child .
 (defrule causitive_verb_rule
 (declare (salience 700))
 (rel_name-sids ccomp ?head ?cau_vrb)
 (parser_id-root-category-suffix-number  ?head ?root&get|make|have verb ? ?)
 ?f<-(root-verbchunk-tam-parser_chunkids root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided $?ids1 ?head)
 ?f1<-(root-verbchunk-tam-parser_chunkids root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided ?cau_vrb)
 (not (causative_head ?cau_vrb))
  =>
 (retract ?f ?f1)
 (assert(verb_type-verb-causative_verb-tam causative ?head ?cau_vrb tam_to_be_decided))
 (assert(root-verbchunki-tam-parser_chunkids root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided $?ids1 ?head ?cau_vrb))
 (assert (causative_head ?cau_vrb))
 )

 (defrule get_eng_word_list
 (declare (salience 650))
 (s_id-word ?id ?word)
 ?f1<-(index ?id)
 ?f<-(English-list $?Eng_list)
 =>
 (retract ?f ?f1)
 (bind ?word (str-cat ?word ""))
 (assert (English-list $?Eng_list ?word))
 (bind ?id (string_to_integer ?id))
 (bind ?id (+ ?id 1))
 (bind ?id (explode$ (str-cat L ?id)))
 (assert (index ?id))
 )

 (defrule substitute_root_vrbchnk_tam
 (declare (salience 600))
 ?f<-(root-verbchunk-tam-parser_chunkids root_to_be_decided verb_chunk_to_be_decided  tam_to_be_decided $?ids)
 (parser_id-root-category-suffix-number  ?head&=(nth$ (length $?ids) $?ids)   ?root verb ?suf ?num)
 (English-list $?Eng_list)
 =>
 (retract ?f)
 (bind ?len (length $?ids))
 (bind ?vrb_chunk (lowcase (nth$ (string_to_integer (nth$ 1 $?ids)) $?Eng_list)))
 (loop-for-count (?i 2 (- ?len 1)) 
                 (bind ?k (nth$ ?i $?ids))
                 (bind ?j (string_to_integer ?k))
                 (bind ?vrb_chunk (str-cat ?vrb_chunk "_" (lowcase (nth$ ?j $?Eng_list))))
  )  
  (if (> ?len 1) then
     (bind ?vrb_chunk1 (explode$ (str-cat ?vrb_chunk "_" (lowcase (nth$ (string_to_integer ?head) $?Eng_list)))))
     (bind ?tam (explode$ (str-cat ?vrb_chunk "_" ?suf)))
     (assert (root-verbchunk-tam-parser_chunkids ?root ?vrb_chunk1 ?tam $?ids))
 else 
 (assert (root-verbchunk-tam-parser_chunkids root_to_be_decided ?vrb_chunk tam_to_be_decided $?ids)))
 )

 ;Ex:- What did he eat?
 (defrule q_tam
 (declare (salience 550))
 ?f<-(root-verbchunk-tam-parser_chunkids ?root ?vrb_chunk ?tam ?head $?ids)
 (parser_id-root-category-suffix-number  ?head  ?root1 verb ?suf ?)
 (s_id-word ?head ?word1)
 (test (or(eq (lowcase ?word1) does)(eq (lowcase ?word1) do)(eq (lowcase ?word1) did)))
 (s_id-word L1 ?word)
 (test (or(eq (lowcase ?word) does)(eq (lowcase ?word) do)(eq (lowcase ?word) did)(eq (lowcase ?word) why)(eq (lowcase ?word) what)(eq (lowcase ?word) where)(eq (lowcase ?word) whose)(eq (lowcase ?word) how)(eq (lowcase ?word) who)(eq (lowcase ?word) when)(eq (lowcase ?word) are)(eq (lowcase ?word) am)(eq (lowcase ?word) is)))
 (not (q_tam_modified ?head))
 =>
 (retract ?f)
     (bind ?vrb_chunk1 (explode$ (str-cat "q_" ?vrb_chunk )))
     (assert (root-verbchunk-tam-parser_chunkids ?root ?vrb_chunk1 ?suf ?head $?ids))
 (assert (q_tam_modified ?head))
 )


; When a verb does not have a distinct participle form (e.g. come, cut, put etc.) we can decide it is used for the participle function if it is preceded by an auxiliary -- is, am, are,was, were, have, has, had.
; It is likely they will come . 
 (defrule distinct_participle_tam
 (declare (salience 560))
 ?f<-(root-verbchunk-tam-parser_chunkids ?root ?vrb_chunk ?tam $?ids ?id ?head)
 (word-morph (root      ?root)(category verb)(suffix    ?suf1))
 (word-morph (root      ?root)(category verb)(suffix    ?suf))
 (test (neq ?suf1 ?suf))
 (test (neq ?suf en))
 (test (eq ?root come))
 (not (s_id-word ?id ?word&is|am|are|was|were|have|has|had))
 (not (distinct_participle_check_id ?head))
  =>
 (retract ?f)
 (assert (distinct_participle_check_id ?head))
 (bind ?index (str-index  "_" ?tam ))
 (bind ?sub_str (sub-string 1 ?index ?tam))
 (bind ?suf2 (explode$ (str-cat ?sub_str ?suf)))
 (printout t ?sub_str)
 (assert (root-verbchunk-tam-parser_chunkids ?root ?vrb_chunk ?suf2 $?ids ?id ?head))
 ) 
