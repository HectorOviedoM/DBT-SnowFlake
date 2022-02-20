select
SUM(CASE WHEN c_custkey IS NULL THEN 1 ELSE 0 END) / COUNT(*) AS TOTAL_NULLS
FROM {{ref('playing_with_tests')}}

having SUM(CASE WHEN ID IS NULL THEN 1 ELSE 0 END) / COUNT(*) > 0
