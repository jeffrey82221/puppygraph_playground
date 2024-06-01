# puppygraph_playground
Study the usage of puppygraph for future implementation of deploying easy cypher data service. 

# Fast Setup Service:

```
./start_service.sh
```

# Data Reload:
```
./reload_data.sh
```

# Schema Change:
```
./reload_schema.sh
```


# Sample Data Setup Steps:

1. [X] Deploy puppy graph service:
```
docker compose up -d
```

2. [X] Create Tables in duck db 

* create duckdb demo.db file: 

`python create_demo_db.py`

* copy demo.db to duckdb container

```
docker cp demo.db duckdb:/home/share/demo.db
```

3. [X] Upload schema via command

```
curl -XPOST -H "content-type: application/json" --data-binary @./schema.json --user "puppygraph:puppygraph123" localhost:8081/schema
```

4. [X] Login to puppy graph UI 

* start UI on browser:
```
http://localhost:8081
```

* enter username and password:

username: puppygraph
password: puppygraph123


5. Now you can start playing around the graph! 

* check http://localhost:8081/notebook/lab for toy examples


# Demo Pypi Data Setup Steps:

1. move `schema.json` and `demo.db` of pypi_graph REPO here. 


```bash
cp ../pypi_graph/schema.json .
cp ../pypi_graph/duckdb/demo.db .
```

2. Start the puppy graph service and do query.


```bash
./start_service.sh
```



