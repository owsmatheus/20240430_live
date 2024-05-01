SELECT
  c.*
  , COUNT(o_orderkey) c_orders
  , SUM(o_totalprice) c_total_spent
FROM {{ ref('stg_tpch__orders') }} o
JOIN {{ ref('stg_tpch__customers') }} c
  ON o.o_custkey = c.c_custkey
GROUP BY ALL
ORDER BY c_orders