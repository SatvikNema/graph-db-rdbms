with recursive locations_in_karnataka as (
    select
        id,
        properties ->> 'location' as location
    from
        vertex
    where
        properties ->> 'name' = 'Karnataka'
    union
    select
        edge.tail_vertex,
        v.location
    from
        edge
        inner join locations_in_karnataka v on v.id = edge.head_vertex
        inner join vertex v2 on v2.id = edge.tail_vertex
        and edge.label = 'is_within'
        and v2.properties ->> 'type' = 'location'
),
tech_parks_in_karanataka as (
    select
        a.id
    from
        locations_in_karnataka a
        inner join vertex v on v.id = a.id
    where
        v.properties ->> 'entity' = 'tech park'
)
select
    v.properties ->> 'name' as tech_park
from
    tech_parks_in_karanataka a
    inner join vertex v on v.id = a.id;