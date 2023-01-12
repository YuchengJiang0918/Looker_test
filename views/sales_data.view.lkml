# The name of this view in Looker is "Sales Data"
view: sales_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "default".sales data
    ;;
  suggestions: no
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Customerkey" in Explore.

  dimension: customerkey {
    type: string
    sql: ${TABLE}.customerkey ;;
  }

  dimension: duedatekey {
    type: string
    sql: ${TABLE}.duedatekey ;;
  }

  dimension: extended_amount {
    type: string
    sql: ${TABLE}."extended amount" ;;
  }

  dimension: order_quantity {
    type: string
    sql: ${TABLE}."order quantity" ;;
  }

  dimension: orderdatekey {
    type: string
    sql: ${TABLE}.orderdatekey ;;
  }

  dimension: product_standard_cost {
    type: string
    sql: ${TABLE}."product standard cost" ;;
  }

  dimension: productkey {
    type: string
    sql: ${TABLE}.productkey ;;
  }

  dimension: resellerkey {
    type: string
    sql: ${TABLE}.resellerkey ;;
  }

  dimension: sales_amount {
    type: string
    sql: ${TABLE}."sales amount" ;;
  }

  dimension: salesorderlinekey {
    type: string
    sql: ${TABLE}.salesorderlinekey ;;
  }

  dimension: salesterritorykey {
    type: string
    sql: ${TABLE}.salesterritorykey ;;
  }

  dimension: shipdatekey {
    type: string
    sql: ${TABLE}.shipdatekey ;;
  }

  dimension: total_product_cost {
    type: string
    sql: ${TABLE}."total product cost" ;;
  }

  dimension: unit_price {
    type: string
    sql: ${TABLE}."unit price" ;;
  }

  dimension: unit_price_discount_pct {
    type: string
    sql: ${TABLE}."unit price discount pct" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
