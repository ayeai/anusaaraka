  (defglobal ?*cat_cons_tmp-file* = cat_cons_tmp_fp)

  (deffacts dummy_facts
  (verb_type-verb-causative_verb-tam)
  (parser_id-cat_coarse)
  (using-parser-ids)
  (parser_id-root-category-suffix-number)
  (root-verbchunk-tam-parser_chunkids)
  (lwg_root-verbchunk-tam-chunkids)
  (id-cat)
  (No complete linkages found)
  )
  
  (defrule cat_cons1
  (declare (salience 100))
  (id-cat ?id ?cat)
  =>
	(printout ?*cat_cons_tmp-file* "(id-cat "?id" " ?cat")"crlf)
  )
  
  ; Do not climb in a running train .
  ; if cat is verb and the relation for verb id is viSeRaNa then assert cat as  adjective
  ; ?f0<-(parser_id-cat_coarse ?id ?cat) used to retract the old category
  (defrule map_V
  (declare (salience 100))
  ?f0<-(parser_id-cat_coarse ?id ?cat)
  (using-parser-ids viSeRya-viSeRaNa ?id1 ?id)
  (parser_id-root-category-suffix-number ?id $? ing ?)
  =>
	(retract ?f0)
	(printout ?*cat_cons_tmp-file* "(parser_id-cat_coarse "?id"  adjective)"crlf)
  )
  
  ; This is a big building. (noun)
  ; if building is connected with determiner then assign category as noun.
  (defrule noun_rule
  (declare (salience 100))
  ?f0<-(parser_id-cat_coarse ?id ?cat)
;  (link_name-link_lnode-link_rnode  Ds  ?id1  ?id)
  (using-parser-ids viSeRya-det_viSeRaNa ?id ?id1)
  (not (root-verbchunk-tam-parser_chunkids ? ? ? $? ?id))
  (parser_id-root-category-suffix-number ?id $? ing ?)
   =>
        (retract ?f0)
        (printout ?*cat_cons_tmp-file* "(parser_id-cat_coarse "?id"  noun)"crlf)
  )

  ; I saw him telling her about the party
  (defrule adverb_rule
  (declare (salience 70))
  ?f0<-(parser_id-cat_coarse ?id ?cat)
  (using-parser-ids kriyA-kqxanwa_viSeRaNa ?kriyA ?id)
  (not (root-verbchunk-tam-parser_chunkids ? ? ? $? ?id))
  (parser_id-root-category-suffix-number ?id $? ing ?)
  =>
        (retract ?f0)
       (printout ?*cat_cons_tmp-file* "(parser_id-cat_coarse "?id" adverb )" crlf)
  )

  ; Building houses is a good profession (verbal-noun)
  ; He is building a castle.
  (defrule verbal_noun_rule
  (declare (salience 50))
  ?f0<-(parser_id-cat_coarse ?id ?cat)
  (not (root-verbchunk-tam-parser_chunkids ? ? ? $? ?id))
  (parser_id-root-category-suffix-number ?id $? ing ?)
  =>
	(retract ?f0)
	(printout ?*cat_cons_tmp-file* "(parser_id-cat_coarse "?id"  verbal_noun)"crlf)
  )

  (defrule map_default
  (declare (salience 40))
  (parser_id-cat_coarse ?id ?cat)
  =>
	(printout ?*cat_cons_tmp-file* "(parser_id-cat_coarse "?id" " ?cat ")"crlf )
  )

  (defrule map4
  (declare (salience -10))
  =>
	(close ?*cat_cons_tmp-file* )
  )

