{% macro suspend_warehouse(wh_name) %}

  {% set sql %}
    alter warehouse {{wh_name}} suspend
  {% endset %}

  {% set table = run_query(sql)}
  {% do table.print_table() %}


{% endmacro %}
