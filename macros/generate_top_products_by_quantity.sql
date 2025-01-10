
{% macro generate_top_products_by_quantity() %}
    SELECT
        id,
        name,
        category,
        quantity
    FROM {{ ref('data') }}
    ORDER BY quantity DESC
    LIMIT 5
{% endmacro %}