type Book = {
    title: Text;
    pages: Nat;
};

fun create_book(title: Text, pages: Nat) -> Book:
    return Book {
        title: title,
        pages: pages
    };

    


