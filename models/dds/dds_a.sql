with source_stg_a as (
    select a as a_a, b as a_b, c as a_c from {{ref('stg_a')}} stg_a
),
    source_stg_b as (
    select a as b_a, b as b_b, c as b_c from {{ref('stg_b')}} stg_a
    )

select * from source_stg_a stg_a
join source_stg_b stg_b on stg_a.a_c = stg_b.b_c