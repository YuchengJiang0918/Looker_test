# The name of this view in Looker is "Product Data"
view: product_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "default".product data
    ;;
  suggestions: no
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Category" in Explore.

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: color {
    type: string
    sql: ${TABLE}.color ;;
  }

  dimension: list_price {
    type: string
    sql: ${TABLE}."list price" ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.product ;;
  }

  dimension: productkey {
    type: string
    sql: ${TABLE}.productkey ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }

  dimension: standard_cost {
    type: string
    sql: ${TABLE}."standard cost" ;;
  }

  dimension: subcategory {
    type: string
    sql: ${TABLE}.subcategory ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
