view: members {
  sql_table_name: dbo.Members ;;

  dimension: member_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.MemberId ;;
  }

  dimension: admin_user_id {
    type: number
    sql: ${TABLE}.AdminUserId ;;
  }

  dimension: affiliate_code {
    type: string
    sql: ${TABLE}.AffiliateCode ;;
  }

  dimension: affiliate_id {
    type: number
    sql: ${TABLE}.AffiliateId ;;
  }

  dimension: affiliate_rule_promotion_id {
    type: number
    sql: ${TABLE}.affiliateRulePromotionID ;;
  }

  dimension: affiliate_type_id {
    type: number
    sql: ${TABLE}.AffiliateTypeID ;;
  }

  dimension_group: affiliation {
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
    sql: ${TABLE}.AffiliationDate ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.Age ;;
  }

  dimension: bad_login_attempts {
    type: number
    sql: ${TABLE}.BadLoginAttempts ;;
  }

  dimension: budget_balance {
    type: string
    sql: ${TABLE}.BudgetBalance ;;
  }

  dimension: budget_frequency {
    type: number
    sql: ${TABLE}.BudgetFrequency ;;
  }

  dimension_group: budget_last_updated {
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
    sql: ${TABLE}.BudgetLastUpdated ;;
  }

  dimension: budget_restore {
    type: string
    sql: ${TABLE}.BudgetRestore ;;
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

  dimension: credit_status {
    type: string
    sql: ${TABLE}.CreditStatus ;;
  }

  dimension_group: date_of_birth {
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
    sql: ${TABLE}.DateOfBirth ;;
  }

  dimension: download_total {
    type: string
    sql: ${TABLE}.DownloadTotal ;;
  }

  dimension: dynamic_record_id {
    type: number
    sql: ${TABLE}.DynamicRecordId ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: email_format_id {
    type: number
    sql: ${TABLE}.EmailFormatId ;;
  }

  dimension: email_validation_failed {
    type: string
    sql: ${TABLE}.EmailValidationFailed ;;
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

  dimension: extern_member_xref {
    type: string
    sql: ${TABLE}.ExternMemberXRef ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension: income {
    type: string
    sql: ${TABLE}.Income ;;
  }

  dimension: is_affiliate {
    type: string
    sql: ${TABLE}.IsAffiliate ;;
  }

  dimension_group: last_login {
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
    sql: ${TABLE}.LastLoginDate ;;
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

  dimension: locale_id {
    type: number
    sql: ${TABLE}.LocaleId ;;
  }

  dimension: marketing_permission_ext {
    type: string
    sql: ${TABLE}.MarketingPermissionExt ;;
  }

  dimension: marketing_permission_int {
    type: string
    sql: ${TABLE}.MarketingPermissionInt ;;
  }

  dimension: member_number {
    type: string
    sql: ${TABLE}.MemberNumber ;;
  }

  dimension: member_origin_id {
    type: number
    sql: ${TABLE}.MemberOriginId ;;
  }

  dimension: member_source_id {
    type: number
    sql: ${TABLE}.MemberSourceId ;;
  }

  dimension: member_type_id {
    type: number
    sql: ${TABLE}.MemberTypeId ;;
  }

  dimension: name_first {
    type: string
    sql: ${TABLE}.NameFirst ;;
  }

  dimension: name_last {
    type: string
    sql: ${TABLE}.NameLast ;;
  }

  dimension: name_middle {
    type: string
    sql: ${TABLE}.NameMiddle ;;
  }

  dimension: occupation {
    type: string
    sql: ${TABLE}.Occupation ;;
  }

  dimension: organization {
    type: string
    sql: ${TABLE}.Organization ;;
  }

  dimension_group: password_change {
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
    sql: ${TABLE}.PasswordChangeDate ;;
  }

  dimension: password_hash {
    type: string
    sql: ${TABLE}.passwordHash ;;
  }

  dimension: pref_communication {
    type: string
    sql: ${TABLE}.PrefCommunication ;;
  }

  dimension: pref_ship_method {
    type: number
    sql: ${TABLE}.PrefShipMethod ;;
  }

  dimension: price_list_id {
    type: number
    sql: ${TABLE}.PriceListId ;;
  }

  dimension: project_id {
    type: number
    sql: ${TABLE}.ProjectId ;;
  }

  dimension: rule_promotion_id {
    type: number
    sql: ${TABLE}.rulePromotionID ;;
  }

  dimension: sales_relationship_id {
    type: number
    sql: ${TABLE}.SalesRelationshipId ;;
  }

  dimension: salutation {
    type: string
    sql: ${TABLE}.Salutation ;;
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

  dimension: store_payment_info {
    type: string
    sql: ${TABLE}.StorePaymentInfo ;;
  }

  dimension: tax_number {
    type: string
    sql: ${TABLE}.TaxNumber ;;
  }

  dimension: total_items {
    type: number
    sql: ${TABLE}.TotalItems ;;
  }

  dimension: total_sales {
    type: string
    sql: ${TABLE}.TotalSales ;;
  }

  dimension: total_transaction {
    type: number
    sql: ${TABLE}.TotalTransaction ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}.Username ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.uuid ;;
  }

  dimension: full_name {
    type:  string
    sql:  ${name_first} + ' ' + ${name_last} ;;
  }

  measure: count {
    type: count
    drill_fields: [member_id, username]
  }
}
