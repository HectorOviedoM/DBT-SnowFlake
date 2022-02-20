{{ config(materialized='view') }}



select o_orderdate, o_totalprice,o_totalprice + lag(o_totalprice) ignore nulls over (order by o_orderdate) as acumulative
from (select o_orderdate , sum(o_totalprice) as o_totalprice from "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS" group by o_orderdate )
order by o_orderdate
