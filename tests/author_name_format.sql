WITH author_data AS (
    SELECT
        FIRST_NAME,
        LAST_NAME,
        MIDDLE_NAME
    FROM {{ ref('format_injested_json') }}
)

SELECT *
FROM author_data
WHERE 
    (POSITION(' ' IN FIRST_NAME) > 0 OR POSITION(' ' IN LAST_NAME) > 0)
    AND (POSITION(' ' IN MIDDLE_NAME) = 0 OR LENGTH(MIDDLE_NAME) - LENGTH(REPLACE(MIDDLE_NAME, ' ', '')) > 1)
