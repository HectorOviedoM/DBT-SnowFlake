select sum(c_custkey) as total , sum(distinct(c_custkey)) as distintas FROM {{ref('playing_with_tests')}}

having sum(c_custkey) > sum(distinct(c_custkey))
