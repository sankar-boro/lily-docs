### Delete an index

```
curl \
  -X DELETE 'http://localhost:7700/indexes/categories' \
  -H 'Authorization: Bearer authUser'

curl \
  -X DELETE 'http://localhost:7700/indexes/test' \
  -H 'Authorization: Bearer authUser'
```

### Stats 
```
curl \
  -X GET 'http://localhost:7700/stats' \
  -H 'Authorization: Bearer authUser'
```

### Search
```
curl \
  -X POST 'http://localhost:7700/indexes/categories/search' \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer authUser' \
  --data-binary '{ "q": "test" }'
```

### Create index
```
curl \
  -X POST 'http://localhost:7700/indexes' \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer authUser' \
  --data-binary '{
    "uid": "books",
    "primaryKey": null
  }'
```

### Health
```
curl \
  -X GET 'http://localhost:7700/health'
```

curl \
  -X POST 'http://localhost:7700/indexes/users/documents' \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer authUser' \
  --data-binary '[
    {
      "id": 1,
      "fname": "Sankar",
      "lname": "Boro"
    }
  ]'

curl \
  -X POST 'http://localhost:7700/indexes/users/search' \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer authUser' \
  --data-binary '{ "q": "sankar" }'


### Set searchable attributes
```
curl \
  -X PUT 'http://localhost:7700/indexes/books/settings/searchable-attributes' \
  -H 'Content-Type: application/json' \
  -H 'Authorization: Bearer authUser' \
  --data-binary '[
      "title",
      "body"
    ]'
```