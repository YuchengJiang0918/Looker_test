# The name of this view in Looker is "Sales Territory Data"
view: sales_territory_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "default".sales territory data
    ;;
  suggestions: no
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Country" in Explore.

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: group {
    type: string
    sql: ${TABLE}."group" ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: salesterritorykey {
    type: string
    sql: ${TABLE}.salesterritorykey ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
