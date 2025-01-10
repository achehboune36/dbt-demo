
WITH top_products AS (
    {{ generate_top_products_by_quantity() }}
)

SELECT * FROM top_products