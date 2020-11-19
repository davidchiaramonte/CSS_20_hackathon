view: word_cloud_dt {
  derived_table: {
    sql:
    SELECT
  (SPLIT((REPLACE(exploration.What_are_three_words_to_describe_your_exploration_,",",""))," "))[ORDINAL(1)] as word
  FROM csg.exploration
  UNION ALL
SELECT
  (SPLIT((REPLACE(exploration.What_are_three_words_to_describe_your_exploration_,",",""))," "))[ORDINAL(2)]
  FROM csg.exploration
  UNION ALL
SELECT
  (SPLIT((REPLACE(exploration.What_are_three_words_to_describe_your_exploration_,",",""))," "))[ORDINAL(3)]
  FROM csg.exploration
;;
  }

  dimension: all_words {
    type: string
    sql: ${TABLE}.word ;;
  }

  measure: count {
    type: count
    drill_fields: [all_words]
  }
 }
