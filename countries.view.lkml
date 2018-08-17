view: countries {
  sql_table_name: edgeMaster.dbo.Countries ;;

  dimension: country_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.CountryId ;;
  }

  dimension: continent {
    type: string
    sql: ${TABLE}.Continent ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.CountryCode ;;
  }

  dimension: country_name {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.CountryName ;;
  }

  dimension: iso3_country_code {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.ISO3CountryCode ;;
  }

  measure: count {
    type: count
    drill_fields: [country_id, country_name]
  }
}
