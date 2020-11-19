view: exploration {
  sql_table_name: `csg.exploration`
    ;;

  dimension: describe_something_you_found_to_be_autumnal {
    type: string
    sql: ${TABLE}.Describe_something_you_found_to_be_autumnal ;;
  }

  dimension: describe_what_you_identified_as_a_cozy_place_to_have_a_drink {
    type: string
    sql: ${TABLE}.Describe_what_you_identified_as_a_cozy_place_to_have_a_drink ;;
  }

  dimension: describe_your_sign {
    type: string
    sql: ${TABLE}.Describe_your_sign ;;
  }

  dimension: did_you_buy_or_bring_your_snack_ {
    type: string
    sql: ${TABLE}.Did_you_buy_or_bring_your_snack_ ;;
  }

  dimension: did_you_have_a_drink_there_ {
    type: yesno
    sql: ${TABLE}.Did_you_have_a_drink_there_ ;;
  }

  dimension: did_you_have_a_snack_on_your_exploration_ {
    type: yesno
    sql: ${TABLE}.Did_you_have_a_snack_on_your_exploration_ ;;
  }

  dimension: did_you_walk_with_others__ {
    type: string
    sql: ${TABLE}.Did_you_walk_with_others__ ;;
  }

  dimension: how_long_did_you_walk_for_ {
    type: string
    sql: ${TABLE}.How_long_did_you_walk_for_ ;;
  }

  dimension: how_many_steps_did_you_take_ {
    type: number
    sql: ${TABLE}.How_many_steps_did_you_take_ ;;
  }

  dimension: string_field_26 {
    type: string
    sql: ${TABLE}.string_field_26 ;;
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

  dimension: was_your_landmark_manmade_ {
    type: string
    sql: ${TABLE}.Was_your_landmark_manmade_ ;;
  }

  dimension: what_animal_ {
    type: string
    sql: ${TABLE}.What_animal_ ;;
  }

  dimension: what_are_three_words_to_describe_your_exploration_ {
    type: string
    sql: ${TABLE}.What_are_three_words_to_describe_your_exploration_ ;;
  }

  dimension: what_city_ {
    type: string
    sql: ${TABLE}.What_city_ ;;
  }

  dimension: what_country_did_you_explore_ {
    type: string
    sql: ${TABLE}.What_country_did_you_explore_ ;;
  }

  dimension: what_did_you_have_to_drink_ {
    type: string
    sql: ${TABLE}.What_did_you_have_to_drink_ ;;
  }

  dimension: what_kind_of_tree_ {
    type: string
    sql: ${TABLE}.What_kind_of_tree_ ;;
  }

  dimension: what_made_your_skyline_interesting_ {
    type: string
    sql: ${TABLE}.What_made_your_skyline_interesting_ ;;
  }

  dimension: what_state___if_applicable_ {
    type: string
    sql: ${TABLE}.What_state___If_applicable_ ;;
  }

  dimension: what_type_of_flower_ {
    type: string
    sql: ${TABLE}.What_type_of_flower_ ;;
  }

  dimension: what_was_the_weather_like_ {
    type: string
    sql: ${TABLE}.What_was_the_weather_like_ ;;
  }

  dimension: what_was_your_blue_picture_of_ {
    type: string
    sql: ${TABLE}.What_was_your_blue_picture_of_ ;;
  }

  dimension: what_was_your_body_of_water_ {
    type: string
    sql: ${TABLE}.What_was_your_body_of_water_ ;;
  }

  dimension: what_was_your_landmark_ {
    type: string
    sql: ${TABLE}.What_was_your_landmark_ ;;
  }

  dimension: what_was_your_snack_ {
    type: string
    sql: ${TABLE}.What_was_your_snack_ ;;
  }

  dimension: when_did_you_walk_ {
    type: string
    sql: ${TABLE}.When_did_you_walk_ ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_steps_taken {
    type: sum
    sql: ${how_many_steps_did_you_take_} ;;
  }

  measure: average_steps_taken {
    type: average
    sql: ${how_many_steps_did_you_take_} ;;
  }
}
