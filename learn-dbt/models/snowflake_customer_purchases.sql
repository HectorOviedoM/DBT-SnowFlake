{{ config(materialized='table') }}



select c.C_CUSTKEY , sum(o.O_TOTALPRICE) as totalprice
from {{ source('sample', 'customer')}} c
LEFT JOIN {{ source('sample', 'orders')}} o
on c.c_custkey = o.o_custkey
{{group_by(1)}}
having sum(o.O_TOTALPRICE) > 0
