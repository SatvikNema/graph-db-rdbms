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
)
select
    v.properties ->> 'name' as location_in_karnataka
from
    locations_in_karnataka a
    inner join vertex v on v.id = a.id;