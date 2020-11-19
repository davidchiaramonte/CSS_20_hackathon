view: wordcloud {
  derived_table: {
    sql: SELECT  exploration.Timestamp, SPLIT(REPLACE(exploration.What_are_three_words_to_describe_your_exploration_,",","")," ")[ORDINAL(1)] as words FROM `csg.exploration` AS exploration
UNION ALL
SELECT exploration.Timestamp, SPLIT(REPLACE(exploration.What_are_three_words_to_describe_your_exploration_,",","")," ")[ORDINAL(2)] as words FROM `csg.exploration` AS exploration
UNION ALL
SELECT exploration.Timestamp, SPLIT(REPLACE(exploration.What_are_three_words_to_describe_your_exploration_,",","")," ")[ORDINAL(3)] as words FROM `csg.exploration` AS exploration ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: words {
    type: string
    sql: lower(${TABLE}.words) ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Timestamp ;;
  }

  set: detail {
    fields: [words,timestamp_time]
  }
}
