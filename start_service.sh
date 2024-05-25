docker compose down
docker compose up -d
python create_demo_db.py
docker cp demo.db duckdb:/home/share/demo.db
echo 'uploading schema.json'
limit=30; start=5;
until (( limit < (5-start) )); do 
  echo 'do curl'
  curl -XPOST -H "content-type: application/json" \
    --data-binary @./schema.json \
    --user "puppygraph:puppygraph123" \
    localhost:8081/schema | grep -o "OK" && break
done
