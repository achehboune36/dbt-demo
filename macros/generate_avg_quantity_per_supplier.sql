
{% macro generate_avg_quantity_per_supplier() %}
    SELECT
        supplier_id,
        AVG(quantity) AS average_quantity_sold
    FROM {{ ref('data') }}
    GROUP BY supplier_id
{% endmacro %}