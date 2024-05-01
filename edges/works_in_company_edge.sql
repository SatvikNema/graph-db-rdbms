insert into
    edge (tail_vertex, head_vertex, label)
select
    (
        select
            id
        from
            vertex
        where
            properties ->> 'name' = 'Dough'
    ) as tail_vertex,
    id as head_vertex,
    'works_in_company'
from
    vertex
where
    properties ->> 'name' = 'Salesforce'
union
all
select
    (
        select
            id
        from
            vertex
        where
            properties ->> 'name' = 'John'
    ) as tail_vertex,
    id as head_vertex,
    'works_in_company'
from
    vertex
where
    properties ->> 'name' = 'Salesforce'
union
all
select
    (
        select
            id
        from
            vertex
        where
            properties ->> 'name' = 'Alice'
    ) as tail_vertex,
    id as head_vertex,
    'works_in_company'
from
    vertex
where
    properties ->> 'name' = 'Walmart'
union
all
select
    (
        select
            id
        from
            vertex
        where
            properties ->> 'name' = 'Bob'
    ) as tail_vertex,
    id as head_vertex,
    'works_in_company'
from
    vertex
where
    properties ->> 'name' = 'Walmart';

insert into
    edge (tail_vertex, head_vertex, label)
select
    (
        select
            id
        from
            vertex
        where
            properties ->> 'name' = 'Eve'
    ) as tail_vertex,
    id as head_vertex,
    'works_in_company'
from
    vertex
where
    properties ->> 'name' = 'Walmart';