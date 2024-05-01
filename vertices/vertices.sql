-- person
insert into
    vertex (properties)
values
    (
        '{ "name": "John", "age": 24, "type": "person", "gender": "male" }'
    ),
    (
        '{ "name": "Dough", "age": 25, "type": "person", "gender": "male" }'
    ),
    (
        '{ "name": "Bob", "age": 23, "type": "person", "gender": "male" }'
    ),
    (
        '{ "name": "Alice", "age": 24, "type": "person", "gender": "female" }'
    ),
    (
        '{ "name": "Eve", "age": 24, "type": "person", "gender": "female" }'
    );

-- places
insert into
    vertex (properties)
values
    (
        '{ "name": "India", "type": "location", "entity": "country" }'
    ),
    (
        '{ "name": "Bangalore", "type": "location", "entity": "city" }'
    ),
    (
        '{ "name": "Karnataka", "type": "location", "entity": "state" }'
    ),
    (
        '{ "name": "South India", "type": "location", "entity": "region" }'
    ),
    (
        '{ "name": "Bellandur", "type": "location", "entity": "region" }'
    ),
    (
        '{ "name": "Domlur", "type": "location", "entity": "region" }'
    ),
    (
        '{ "name": "Cessna tech park", "type": "location", "entity": "tech park" }'
    ),
    (
        '{ "name": "EGL", "type": "location", "entity": "tech park" }'
    );

-- companies
insert into
    vertex (properties)
values
    (
        '{ "name": "Walmart", "type": "company", "domain": "retail"}'
    ),
    (
        '{ "name": "Salesforce", "type": "company", "domain": "technology" }'
    );