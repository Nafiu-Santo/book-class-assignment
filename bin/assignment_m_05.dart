class Book {
  String title;
  String author;
  int publicationYear;
  int pagesRead=0;
  static int totalBooks = 0;

  Book({required this.title, required this.author, required this.publicationYear}){
    totalBooks++;
  }

  void read(int pages){
    pagesRead = pages;
  }
  int getPagesRead(){
    return pagesRead;
  }
  String getTitle(){
    return title;
  }
  String getAuthor(){
    return author;
  }
  int getPublicationYear(){
    return publicationYear;
  }
  int getBookAge(){
    return DateTime.now().year - publicationYear;
  }
  void getter(){
    print('Book title: $title');
    print('Book author: $author');
    print('Book title: $publicationYear');
    print('Book age: ${getBookAge()}');
  }
  static void displayTotalBooks(){
    print('Total number of books: $totalBooks');
  }
}
void main(){
  Book book1 = Book(title: 'English', author:'Islam',publicationYear: 1960);
  Book book2 = Book(title: 'Bengali', author:'Hasan',publicationYear: 1942);
  Book book3 = Book(title: 'Math', author: 'Ikbal',publicationYear: 2002);
  book1.getter();
  book2.getter();
  book3.getter();
  Book.displayTotalBooks();

}