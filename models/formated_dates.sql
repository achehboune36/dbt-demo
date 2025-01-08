WITH formatted_dates AS (
    SELECT
        BOOK_UID,
        TITLE,
        AUTHOR_UID,
        RELEASE_DATE,
        EXTRACT(MONTH FROM RELEASE_DATE) AS month_number,
        EXTRACT(DAY FROM RELEASE_DATE) AS day,
        EXTRACT(YEAR FROM RELEASE_DATE) AS year
    FROM {{ ref('books_data') }}
)

SELECT
    BOOK_UID,
    TITLE,
    AUTHOR_UID,
    RELEASE_DATE,
    {{ convert_date_format('month_number', 'day', 'year') }} AS FORMATTED_RELEASE_DATE
FROM formatted_dates
