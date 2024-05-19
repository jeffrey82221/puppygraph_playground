docker compose up -d
python create_demo_db.py
docker cp demo.db duckdb:/home/share/demo.db
echo 'uploading schema.json'
curl -XPOST -H "content-type: application/json" \
    --data-binary @./schema.json \
    --user "puppygraph:puppygraph123" \
    localhost:8081/schema