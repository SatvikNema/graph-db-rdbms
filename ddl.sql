create table if not exists vertex (
    id bigserial primary key,
    properties json not null
);

create table if not exists edge (
    id bigserial primary key,
    tail_vertex int references vertex(id) on delete cascade,
    head_vertex int references vertex(id) on delete cascade,
    label text,
    properties json
);