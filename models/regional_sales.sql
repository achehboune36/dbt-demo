
WITH regional_sales AS (
    {{ generate_sales_by_region() }}
)

SELECT * FROM regional_sales