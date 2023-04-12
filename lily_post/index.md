let index = app.indexer.index("books");
let search_book : Vec<AddBook> = vec![AddBook {
    docId: timeuidstr.to_string(),
    title: payload.title.clone(),
    body: body.clone(),
    createdAt: timeuid.to_string(),
    updatedAt: timeuid.to_string(),
    uname: format!("{} {}", &auth.fname, &auth.lname),
    metadata: payload.metadata.clone(),
}];
index.add_documents(&search_book, None).await.unwrap();



let index = app.indexer.index("booknodes");
let search_book : Vec<AddSearchNode> = vec![AddSearchNode {
    docId: book_id.to_string(),
    nodeId: timeuidstr.to_string(),
    title: payload.title.clone(),
    createdAt: timeuid.to_string(),
    updatedAt: timeuid.to_string()
}];
index.add_documents(&search_book, None).await.unwrap();


// Prepare the query for later execution
let prepared: PreparedStatement = app.session
.prepare(CREATE_CATEGORY_BOOKS)
.await?;

for i in &request.category {
    app.execute(&prepared, (&i.category, &timeuid, &auth.userId, &request.title, &body, &image_url, &request.metadata, &timeuid, &timeuid)).await?;
}

for i in &request.category {
    app.query(
        ADD_USER_CATEGORY, 
        (auth.userId, &i.category, &timeuid, &timeuid)
    ).await?;
    if !i.exists {
        app.query(
            CREATE_ALLCATEGORY, 
            (&i.category, auth.userId, &timeuid, &timeuid)
        ).await?;
    }
}
