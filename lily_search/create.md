### Create index
```
curl \
  -X POST 'http://localhost:7700/indexes' \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer authUser' \
  --data-binary '{
    "uid": "users",
    "primaryKey": null
  }'
```