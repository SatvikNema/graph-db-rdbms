insert into
    edge (tail_vertex, head_vertex, label)
select
    (
        select
            id
        from
            vertex
        where
            properties ->> 'name' = 'Walmart'
    ) as tail_vertex,
    id as head_vertex,
    'is_within'
from
    vertex
where
    properties ->> 'name' = 'Cessna tech park'
union
all
select
    (
        select
            id
        from
            vertex
        where
            properties ->> 'name' = 'Salesforce'
    ) as tail_vertex,
    id as head_vertex,
    'is_within'
from
    vertex
where
    properties ->> 'name' = 'EGL';