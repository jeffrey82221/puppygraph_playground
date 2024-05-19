# puppygraph_playground
Study the usage of puppygraph for future implementation of deploying easy cypher data service. 

# Steps:

1. [X] Deploy puppy graph service:
```
docker compose up -d
```

2. [X] Create Tables in duck db 

* start duck db shell
```
docker exec -it duckdb duckdb /home/share/demo.db
```

* enter the sql defined in

create_table.sql

3. [X] Login to puppy graph UI 

* start UI on browser:
```
http://localhost:8081
```

* enter username and password:

username: puppygraph
password: puppygraph123

4. [X] Upload schema via command

```
curl -XPOST -H "content-type: application/json" --data-binary @./schema.json --user "puppygraph:puppygraph123" localhost:8081/schema
```


# Study:

## How to automate creation of duckdb tables and insertion of schema.json

