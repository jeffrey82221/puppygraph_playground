create schema if not exists modern;
drop table if exists modern.person;
drop table if exists modern.software;
drop table if exists modern.created;
drop table if exists modern.knows;
create table if not exists modern.person (id text, name text, age integer);
insert into modern.person values
                              ('v1', 'marko', 29),
                              ('v2', 'vadas', 27),
                              ('v4', 'josh', 32),
                              ('v6', 'peter', 35),
                              ('v7', 'jeffrey', 31),
                              ('v8', 'Joyce', 26),
                              ('v9', 'max', 43)
                              ;

create table if not exists modern.software (id text, name text, lang text);
insert into modern.software values
                                ('v3', 'lop', 'java'),
                                ('v5', 'ripple', 'java');

create table if not exists modern.created (id text, from_id text, to_id text, weight double precision);
insert into modern.created values
                               ('e9', 'v1', 'v3', 0.4),
                               ('e10', 'v4', 'v5', 1.0),
                               ('e11', 'v4', 'v3', 0.4),
                               ('e12', 'v6', 'v3', 0.2);

create table if not exists modern.knows (id text, from_id text, to_id text, weight double precision);
insert into modern.knows values
                             ('e7', 'v1', 'v2', 0.5),
                             ('e8', 'v1', 'v4', 1.0),
                             ('e13', 'v6', 'v7', 0.8),
                             ('e14', 'v6', 'v8', 0.3),
                             ('e15', 'v6', 'v9', 0.3),
                             ('e16', 'v8', 'v9', 0.3);
