view: state_prov {
  sql_table_name: edgeMaster.dbo.StateProv ;;

  dimension: center_zip {
    type: string
    sql: ${TABLE}.CenterZip ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: st_pr_id {
    type: number
    sql: ${TABLE}.StPrId ;;
  }

  dimension: state_capital {
    type: string
    sql: ${TABLE}.StateCapital ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}.StateCode ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.StateName ;;
  }

  measure: count {
    type: count
    drill_fields: [state_name]
  }
}
