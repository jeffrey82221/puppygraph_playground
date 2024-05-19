create schema modern;
create table modern.person (id text, name text, age integer);
insert into modern.person values
                              ('v1', 'marko', 29),
                              ('v2', 'vadas', 27),
                              ('v4', 'josh', 32),
                              ('v6', 'peter', 35);

create table modern.software (id text, name text, lang text);
insert into modern.software values
                                ('v3', 'lop', 'java'),
                                ('v5', 'ripple', 'java');

create table modern.created (id text, from_id text, to_id text, weight double precision);
insert into modern.created values
                               ('e9', 'v1', 'v3', 0.4),
                               ('e10', 'v4', 'v5', 1.0),
                               ('e11', 'v4', 'v3', 0.4),
                               ('e12', 'v6', 'v3', 0.2);

create table modern.knows (id text, from_id text, to_id text, weight double precision);
insert into modern.knows values
                             ('e7', 'v1', 'v2', 0.5),
                             ('e8', 'v1', 'v4', 1.0);
