// import book from "./book.mo";

fun add_book(book: Book) : void {
    var books = store.get<[Book]>("books")
    if books == nil {
        books = []
    }
    books.push(book)
    store.set("books", books)
};

fun get_books() : [Book] {
    let books = store.get<[Book]>("books")
    if books == nil {
        return []
    }
    return books
};

