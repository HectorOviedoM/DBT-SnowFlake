{{ config(materialized='view') }}



select c.C_CUSTKEY , sum(o.O_TOTALPRICE) as totalprice
from "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."CUSTOMER" c
LEFT JOIN "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS" o
on c.c_custkey = o.o_custkey
group by c.C_CUSTKEY
having sum(o.O_TOTALPRICE) > 0
