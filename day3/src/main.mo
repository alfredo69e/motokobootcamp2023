import Utils "utils";
import Book "book";
import List "mo:base/List";
import Debug "mo:base/Debug";


actor DChallengeDay2 {

    public type Book = Book.Book;

   
    public func second_maximum( array : [Int] ) : async Int {
        return await Utils.second_maximum( array );     
    };

    public func remove_event( array : [Nat] ) : async [Nat] {
        return await Utils.remove_event( array );     
    };

    // public func drop( array : [Nat], a : Nat ) : async [Nat] {
    //     return Utils.drop<Nat>( array, 4 );     
    // };

    // * In main.mo import the type List from the Base Library and create a list that stores books.

    stable var books : List.List<Book> = List.nil<Book>();

    // * In main.mo create a function called add_book that takes a book as parameter and returns nothing this function should add this book to your list. Then create a second function called get_books that takes no parameter but returns an Array that contains all books stored in the list.

    public func add_book( title: Text, pages : Nat ) : async () {
        let book : Book = await Book.create_book( title, pages );
        books := List.push( book, books );
        Debug.print( debug_show( books ) );
    };

    public query func get_books() : async [Book] {
        return List.toArray( books );
    };

};