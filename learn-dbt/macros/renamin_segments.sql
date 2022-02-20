{% macro rename_segments(column_name) %}

  CASE
    WHEN {{column_name}} in ('BUILDING', 'HOUSEHOLD','FURNITURE')
      THEN 'SEGMENT_1'
    ELSE 'SEGMENT2'
  END

{% endmacro %}
