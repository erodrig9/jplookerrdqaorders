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

  join: order_type {
    type: inner
    relationship: one_to_one
    sql_on: ${order_header.order_type_id} = ${order_type.order_type_id} ;;
  }

  join: vw_order_total {
    type: inner
    relationship: one_to_one
    sql_on: ${order_header.order_header_id} = ${vw_order_total.order_header_id} ;;
  }

  join: vw_order_status {
    type: inner
    relationship: one_to_one
    sql_on: ${order_header.order_header_id} = ${vw_order_status.order_header_id} ;;
  }

  join: order_address{
    type:  inner
    relationship: one_to_one
    sql_on:  ${order_header.bill_order_address_id} = ${order_address.order_address_id} ;;
  }

  join: countries{
    type:  inner
    relationship: one_to_one
    sql_on:  ${order_address.country_id} = ${countries.country_id} ;;
  }

  join: state_prov{
    type:  inner
    relationship: one_to_one
    sql_on: ${order_address.st_pr_id} = ${state_prov.st_pr_id} ;;
  }
}
