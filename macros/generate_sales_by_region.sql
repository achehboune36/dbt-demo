
{% macro generate_sales_by_region() %}
    SELECT
        region,
        SUM(quantity) AS total_quantity_sold,
        SUM(quantity * price) AS total_sales_value
    FROM {{ ref('data') }}
    GROUP BY region
{% endmacro %}