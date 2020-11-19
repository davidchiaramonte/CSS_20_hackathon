connection: "lookerdata_publicdata_standard_sql"

# include all the views
include: "/views/**/*.view"

datagroup: css_20_hackathon_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: css_20_hackathon_default_datagroup

explore: exploration {
  sql_always_where: ${how_many_steps_did_you_take_}<1000000 ;;
}
