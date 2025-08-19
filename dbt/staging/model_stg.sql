WITH source_data AS (
    SELECT 
        id,
        name,
        created_at
    FROM {{ source('raw', 'users') }}
)

SELECT 
    id,
    name,
    created_at
FROM source_data
WHERE created_at >= '2024-01-01'
