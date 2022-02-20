select c_acctbal FROM {{ref('playing_with_tests')}}

having SUM(c_acctbal) > 100000000
