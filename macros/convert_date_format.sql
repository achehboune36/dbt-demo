{% macro convert_date_format(month, day, year) %}
    CASE
        WHEN {{ month }} = 1 THEN 'January'
        WHEN {{ month }} = 2 THEN 'February'
        WHEN {{ month }} = 3 THEN 'March'
        WHEN {{ month }} = 4 THEN 'April'
        WHEN {{ month }} = 5 THEN 'May'
        WHEN {{ month }} = 6 THEN 'June'
        WHEN {{ month }} = 7 THEN 'July'
        WHEN {{ month }} = 8 THEN 'August'
        WHEN {{ month }} = 9 THEN 'September'
        WHEN {{ month }} = 10 THEN 'October'
        WHEN {{ month }} = 11 THEN 'November'
        WHEN {{ month }} = 12 THEN 'December'
    END
    || ' ' || 
    CASE
        WHEN {{ day }} = 1 OR {{ day }} = 21 OR {{ day }} = 31 THEN {{ day }} || 'st'
        WHEN {{ day }} = 2 OR {{ day }} = 22 THEN {{ day }} || 'nd'
        WHEN {{ day }} = 3 OR {{ day }} = 23 THEN {{ day }} || 'rd'
        ELSE {{ day }} || 'th'
    END
    || ', ' || {{ year }}
{% endmacro %}
