select
distinct
user_id,
"timestamp",
type_id
from {{ source("scooters_raw", "events") }}