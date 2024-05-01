with recursive bigger_than_cessna as (
    select
        id
    from
        vertex
    where
        properties ->> 'name' = 'Cessna tech park'
    union
    select
        edge.head_vertex
    from
        edge
        inner join bigger_than_cessna on edge.tail_vertex = bigger_than_cessna.id
        and edge.label = 'is_within'
)
select
    bigger_than_cessna.id,
    v.properties ->> 'name' as name
from
    bigger_than_cessna
    inner join vertex v on bigger_than_cessna.id = v.id
where
    v.properties ->> 'entity' = 'state';