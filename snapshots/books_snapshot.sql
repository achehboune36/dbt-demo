{% snapshot books_snapshot %}
    {{
        config(
            target_schema='dbt_hachehboune',
            target_database='GARDEN_PLANTS',
            unique_key='BOOK_UID',
            strategy='timestamp',        
            updated_at='UPDATED_AT'
        )
    }}
    
    SELECT
        BOOK_UID,
        TITLE,
        AUTHOR_UID,
        RELEASE_DATE,
        current_timestamp() AS UPDATED_AT
    FROM {{ ref('books_data') }}
    
{% endsnapshot %}
