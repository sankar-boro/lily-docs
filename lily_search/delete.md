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
