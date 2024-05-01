with recursive locations_in_karnataka as (
    select
        id
    from
        vertex
    where
        properties ->> 'name' = 'Karnataka'
    union
    select
        edge.tail_vertex
    from
        edge
        inner join locations_in_karnataka on locations_in_karnataka.id = edge.head_vertex
        and edge.label = 'is_within'
),
tech_parks_in_karanataka as (
    select
        a.id
    from
        locations_in_karnataka a
        inner join vertex v on v.id = a.id
    where
        v.properties ->> 'entity' = 'tech park'
),
companies_in_tech_parks as (
    select
        v.id
    from
        edge
        inner join tech_parks_in_karanataka on tech_parks_in_karanataka.id = edge.head_vertex
        inner join vertex v on v.id = edge.tail_vertex
        and edge.label = 'is_within'
        and v.properties ->> 'type' = 'company'
),
people_in_comapnies as (
    select
        v.id
    from
        edge
        inner join companies_in_tech_parks on companies_in_tech_parks.id = edge.head_vertex
        inner join vertex v on v.id = edge.tail_vertex
        and edge.label = 'works_in_company'
        and v.properties ->> 'type' = 'person'
)
select
    v.properties ->> 'name' as person
from
    people_in_comapnies a
    inner join vertex v on v.id = a.id;