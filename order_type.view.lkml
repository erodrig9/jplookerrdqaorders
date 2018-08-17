view: order_type {
  sql_table_name: edgeMaster.Lookup.OrderType ;;

  dimension: order_type_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.OrderTypeId ;;
  }

  dimension_group: create {
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
    sql: ${TABLE}.CreateDate ;;
  }

  dimension: order_type_code {
    type: string
    sql: ${TABLE}.OrderTypeCode ;;
  }

  dimension: order_type_name {
    type: string
    sql: ${TABLE}.OrderTypeName ;;
  }

  dimension: sort_order {
    type: string
    sql: ${TABLE}.SortOrder ;;
  }

  measure: count {
    type: count
    drill_fields: [order_type_id, order_type_name]
  }
}
