view: sql_runner_query_test3 {
  derived_table: {
    sql: with temp1 as (select salesterritorykey, replace(replace(sales_data."sales amount", '$', ''), ',', '') as sales_amount
      from "default"."sales data" as sales_data)

      select sales_territory_data.country, sum(cast(temp1.sales_amount as decimal(10,2))) as sales_amount
      from "default"."sales territory data" as sales_territory_data
      left join temp1 on sales_territory_data.salesterritorykey = temp1.salesterritorykey
      group by 1
      order by 2
      ;;
  }

  suggestions: no

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: country {
    type: string
    sql: ${TABLE}.country ;;
  }

  dimension: sales_amount {
    type: number
    sql: ${TABLE}.sales_amount ;;
  }

  set: detail {
    fields: [country, sales_amount]
  }
}
