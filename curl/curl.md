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
"userId": 2,
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

### Delete an index

```
curl \
  -X DELETE 'http://localhost:7700/indexes/books' \
  -H 'Authorization: Bearer authUser'

curl \
  -X DELETE 'http://localhost:7700/indexes/blogs' \
  -H 'Authorization: Bearer authUser'

curl \
  -X DELETE 'http://localhost:7700/indexes/users' \
  -H 'Authorization: Bearer authUser'
```

### Delete document

curl \
 -X DELETE 'http://localhost:7700/indexes/books/documents/4b2b49c1-d7b0-11ed-b852-3c98c366a5be' \
 -H 'Authorization: Bearer authUser'
