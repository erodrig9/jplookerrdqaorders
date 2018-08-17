view: vw_order_total {
  sql_table_name: dbo.VwOrderTotal ;;

  dimension: discount_total {
    type: number
    sql: ${TABLE}.discountTotal ;;
  }

  dimension: duty_tax_total {
    type: number
    sql: ${TABLE}.dutyTaxTotal ;;
  }

  dimension: gift_charge_total {
    type: number
    sql: ${TABLE}.giftChargeTotal ;;
  }

  dimension: initial_item_total {
    type: number
    sql: ${TABLE}.initialItemTotal ;;
  }

  dimension: initial_shipping_handling_total {
    type: number
    sql: ${TABLE}.initialShippingHandlingTotal ;;
  }

  dimension: insurance_charge_total {
    type: number
    sql: ${TABLE}.insuranceChargeTotal ;;
  }

  dimension: item_discount_total {
    type: number
    sql: ${TABLE}.itemDiscountTotal ;;
  }

  dimension: item_total {
    type: number
    sql: ${TABLE}.itemTotal ;;
  }

  dimension: order_header_id {
    type: number
    sql: ${TABLE}.orderHeaderID ;;
  }

  dimension: order_total {
    type: number
    sql: ${TABLE}.orderTotal ;;
  }

  dimension: service_charge_total {
    type: number
    sql: ${TABLE}.serviceChargeTotal ;;
  }

  dimension: shipping_discount_total {
    type: number
    sql: ${TABLE}.shippingDiscountTotal ;;
  }

  dimension: shipping_handling_tax_total {
    type: number
    sql: ${TABLE}.shippingHandlingTaxTotal ;;
  }

  dimension: shipping_handling_total {
    type: number
    sql: ${TABLE}.shippingHandlingTotal ;;
  }

  dimension: tax_total {
    type: number
    sql: ${TABLE}.taxTotal ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: order_total_sum {
    type:  sum
    value_format_name: usd
    sql: ${order_total} ;;
    drill_fields: [order_set*]
  }

  set: order_set {
    fields: [order_header_id, order_line.catalog_item, order_line.quantity]
  }
}
