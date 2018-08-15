view: catalog {
  sql_table_name: dbo.Catalog ;;

  dimension: catalog_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.CatalogId ;;
  }

  dimension: affiliate_commission_type_id {
    type: number
    sql: ${TABLE}.AffiliateCommissionTypeId ;;
  }

  dimension: allow_auto_ship {
    type: string
    sql: ${TABLE}.AllowAutoShip ;;
  }

  dimension: auto_ship_duration {
    type: number
    sql: ${TABLE}.AutoShipDuration ;;
  }

  dimension: auto_ship_frequency {
    type: number
    sql: ${TABLE}.AutoShipFrequency ;;
  }

  dimension: budget_item {
    type: string
    sql: ${TABLE}.BudgetItem ;;
  }

  dimension: catalog_code {
    type: string
    sql: ${TABLE}.CatalogCode ;;
  }

  dimension: catalog_item {
    type: string
    sql: ${TABLE}.CatalogItem ;;
  }

  dimension: catalog_name {
    type: string
    sql: ${TABLE}.CatalogName ;;
  }

  dimension: catalog_notes {
    type: string
    sql: ${TABLE}.CatalogNotes ;;
  }

  dimension: catalog_tax_class_id {
    type: number
    sql: ${TABLE}.CatalogTaxClassId ;;
  }

  dimension: catalog_type_id {
    type: number
    sql: ${TABLE}.CatalogTypeId ;;
  }

  dimension: charge_shipping {
    type: string
    sql: ${TABLE}.ChargeShipping ;;
  }

  dimension: commission_rate_value {
    type: number
    sql: ${TABLE}.CommissionRateValue ;;
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

  dimension: custodian_id {
    type: number
    sql: ${TABLE}.CustodianId ;;
  }

  dimension: default_id {
    type: number
    sql: ${TABLE}.DefaultId ;;
  }

  dimension: displayable {
    type: string
    sql: ${TABLE}.displayable ;;
  }

  dimension: downloadable {
    type: string
    sql: ${TABLE}.Downloadable ;;
  }

  dimension: duty_tax {
    type: string
    sql: ${TABLE}.DutyTax ;;
  }

  dimension: dynamic_record_id {
    type: number
    sql: ${TABLE}.DynamicRecordId ;;
  }

  dimension_group: end {
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
    sql: ${TABLE}.EndDate ;;
  }

  dimension: first_auto_ship_frequency {
    type: number
    sql: ${TABLE}.FirstAutoShipFrequency ;;
  }

  dimension: gift_certificate_id {
    type: number
    sql: ${TABLE}.GiftCertificateId ;;
  }

  dimension: handling_amount {
    type: string
    sql: ${TABLE}.HandlingAmount ;;
  }

  dimension: is_electronic {
    type: string
    sql: ${TABLE}.IsElectronic ;;
  }

  dimension: item_type_id {
    type: number
    sql: ${TABLE}.ItemTypeId ;;
  }

  dimension_group: last_updated {
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
    sql: ${TABLE}.LastUpdated ;;
  }

  dimension: long_description {
    type: string
    sql: ${TABLE}.LongDescription ;;
  }

  dimension: max_order_qty {
    type: number
    sql: ${TABLE}.MaxOrderQty ;;
  }

  dimension: min_order_qty {
    type: number
    sql: ${TABLE}.MinOrderQty ;;
  }

  dimension: min_retail_price {
    type: string
    sql: ${TABLE}.MinRetailPrice ;;
  }

  dimension_group: min_retail_price_updated {
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
    sql: ${TABLE}.MinRetailPriceUpdated ;;
  }

  dimension: min_retail_price_user_id {
    type: number
    sql: ${TABLE}.MinRetailPriceUserId ;;
  }

  dimension: order_quantity {
    type: number
    sql: ${TABLE}.OrderQuantity ;;
  }

  dimension: retail_price {
    type: string
    sql: ${TABLE}.RetailPrice ;;
  }

  dimension: sales_account {
    type: string
    sql: ${TABLE}.SalesAccount ;;
  }

  dimension: searchable {
    type: string
    sql: ${TABLE}.Searchable ;;
  }

  dimension: shipping_amount {
    type: string
    sql: ${TABLE}.ShippingAmount ;;
  }

  dimension: short_description {
    type: string
    sql: ${TABLE}.ShortDescription ;;
  }

  dimension: sort_order {
    type: string
    sql: ${TABLE}.SortOrder ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}.StartDate ;;
  }

  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }

  dimension: tax_resellers {
    type: string
    sql: ${TABLE}.TaxResellers ;;
  }

  dimension: taxable {
    type: string
    sql: ${TABLE}.Taxable ;;
  }

  dimension: uomid {
    type: number
    value_format_name: id
    sql: ${TABLE}.UOMId ;;
  }

  dimension: warranty_id {
    type: number
    sql: ${TABLE}.WarrantyId ;;
  }

  measure: count {
    type: count
    drill_fields: [catalog_id, catalog_name, order_line.count]
  }
}
