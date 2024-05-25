docker compose down
docker compose up -d
python create_demo_db.py
docker cp pypi_demo/demo.db duckdb:/home/share/demo.db
limit=30; start=5;
until (( limit < (5-start) )); do 
  echo 'do curl'
  curl -XPOST -H "content-type: application/json" \
    --data-binary @./pypi_demo/schema.json \
    --user "puppygraph:puppygraph123" \
    localhost:8081/schema | grep -o "OK" && break
done
