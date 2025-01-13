WITH avg_quantity AS (
    {{ generate_avg_quantity_per_supplier() }}
)

SELECT * FROM avg_quantity