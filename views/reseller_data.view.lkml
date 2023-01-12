# The name of this view in Looker is "Reseller Data"
view: reseller_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "default".reseller data
    ;;
  suggestions: no
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Business Type" in Explore.

  dimension: business_type {
    type: string
    sql: ${TABLE}."business type" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: countryregion {
    type: string
    sql: ${TABLE}."country-region" ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}."postal code" ;;
  }

  dimension: reseller {
    type: string
    sql: ${TABLE}.reseller ;;
  }

  dimension: reseller_id {
    type: string
    sql: ${TABLE}."reseller id" ;;
  }

  dimension: resellerkey {
    type: string
    sql: ${TABLE}.resellerkey ;;
  }

  dimension: stateprovince {
    type: string
    sql: ${TABLE}."state-province" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
