view: sql_runner_query_test2 {
  derived_table: {
    sql: SELECT
          reseller_data."country-region"  AS "reseller_data.countryregion",
          reseller_data."business type"  AS "reseller_data.business_type",
          COALESCE(SUM(CAST(( sales_data."order quantity"  ) AS DOUBLE)), 0) AS "sum_of_order_quantity"
      FROM "default"."sales data"
           AS sales_data
      LEFT JOIN "default"."reseller data"
           AS reseller_data ON sales_data.resellerkey = reseller_data.resellerkey
      GROUP BY
          1,
          2
      ORDER BY
          3 DESC
      LIMIT 500
       ;;
  }

  suggestions: no

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: reseller_data_countryregion {
    type: string
    sql: ${TABLE}."reseller_data.countryregion" ;;
  }

  dimension: reseller_data_business_type {
    type: string
    sql: ${TABLE}."reseller_data.business_type" ;;
  }

  dimension: sum_of_order_quantity {
    type: number
    sql: ${TABLE}.sum_of_order_quantity ;;
  }

  set: detail {
    fields: [reseller_data_countryregion, reseller_data_business_type, sum_of_order_quantity]
  }
}
