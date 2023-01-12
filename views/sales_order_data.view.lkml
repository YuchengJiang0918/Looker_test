# The name of this view in Looker is "Sales Order Data"
view: sales_order_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "default".sales order data
    ;;
  suggestions: no
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Channel" in Explore.

  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }

  dimension: sales_order {
    type: string
    sql: ${TABLE}."sales order" ;;
  }

  dimension: sales_order_line {
    type: string
    sql: ${TABLE}."sales order line" ;;
  }

  dimension: salesorderlinekey {
    type: string
    sql: ${TABLE}.salesorderlinekey ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
