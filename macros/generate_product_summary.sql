
{% macro generate_product_summary() %}
    SELECT
        category,
        COUNT(id) AS product_count,
        AVG(price) AS average_price,
        SUM(quantity) AS total_quantity
    FROM {{ ref('data') }}
    GROUP BY category
{% endmacro %}
