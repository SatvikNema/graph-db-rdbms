-- is_within
insert into
    edge (tail_vertex, head_vertex, label)
select
    (
        select
            id
        from
            vertex
        where
            properties ->> 'name' = 'Bangalore'
    ) as tail_vertex,
    id as head_vertex,
    'is_within'
from
    vertex
where
    properties ->> 'name' = 'Karnataka'
union
all
select
    (
        select
            id
        from
            vertex
        where
            properties ->> 'name' = 'Karnataka'
    ) as tail_vertex,
    id as head_vertex,
    'is_within'
from
    vertex
where
    properties ->> 'name' = 'South India'
union
all
select
    (
        select
            id
        from
            vertex
        where
            properties ->> 'name' = 'South India'
    ) as tail_vertex,
    id as head_vertex,
    'is_within'
from
    vertex
where
    properties ->> 'name' = 'India'
union
all
select
    (
        select
            id
        from
            vertex
        where
            properties ->> 'name' = 'Bellandur'
    ) as tail_vertex,
    id as head_vertex,
    'is_within'
from
    vertex
where
    properties ->> 'name' = 'Bangalore'
union
all
select
    (
        select
            id
        from
            vertex
        where
            properties ->> 'name' = 'Domlur'
    ) as tail_vertex,
    id as head_vertex,
    'is_within'
from
    vertex
where
    properties ->> 'name' = 'Bangalore'
union
all
select
    (
        select
            id
        from
            vertex
        where
            properties ->> 'name' = 'Cessna tech park'
    ) as tail_vertex,
    id as head_vertex,
    'is_within'
from
    vertex
where
    properties ->> 'name' = 'Bellandur'
union
all
select
    (
        select
            id
        from
            vertex
        where
            properties ->> 'name' = 'EGL'
    ) as tail_vertex,
    id as head_vertex,
    'is_within'
from
    vertex
where
    properties ->> 'name' = 'Domlur';