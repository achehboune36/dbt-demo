
WITH product_summary AS (
    {{ generate_product_summary() }}
)

SELECT * FROM product_summary