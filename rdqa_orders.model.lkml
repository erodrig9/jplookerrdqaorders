connection: "rdqa-int_edgerelease6i155trunk"

# include all the views
include: "*.view"

datagroup: rdqa_orders_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: rdqa_orders_default_datagroup

explore:order_header  {
  join: order_line  {
    type: inner
    relationship: one_to_many
    sql_on: ${order_header.order_header_id} = ${order_line.order_header_id} ;;
  }

  join: catalog {
    type: inner
    relationship: one_to_one
    sql_on: ${order_line.catalog_id} = ${catalog.catalog_id} ;;
  }
}
