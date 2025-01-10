SELECT
    month_number,
    year,
    COUNT(BOOK_UID) AS books_created
FROM {{ ref('formated_dates') }}
GROUP BY year, month_number
ORDER BY year DESC, month_number DESC
