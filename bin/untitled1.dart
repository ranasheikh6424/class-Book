import 'dart:core';

class Book{
  String title;
  String author;
  int publicationYear;
  int pagesRead;

  static int totalBooks = 0;

  Book(this.title,this.author,this.publicationYear,this.pagesRead){
    totalBooks++;
  }

    void read(int pages){
    pagesRead = pagesRead+pages;
  }

  int getPageRead(){
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
    int currentYear = DateTime.now().year;
    return currentYear - publicationYear;
  }
}

void main(){
  Book book1 = Book("Muktijuddher Upanyas", "Humayun Ahmed", 1989, 0);
  Book book2 = Book("Agnibeena", "Kazi Nazrul Islam", 1922, 0);
  Book book3 = Book("Gitanjali ", "Rabindranath Tagore", 1912, 0);

  book1.read(300);
  book2.read(240);
  book3.read(2000);

  print("Book 1: ${book1.getTitle()}, Author : ${book1.getAuthor()}, Published date  : ${book1.getPublicationYear()},"" Total page read : ${book1.getPageRead()}, Age : ${book1.getBookAge()} ");

  print("Book 2: ${book2.getTitle()}, Author : ${book2.getAuthor()}, Published date  : ${book2.getPublicationYear()},"" Total page read : ${book2.getPageRead()}, Age : ${book2.getBookAge()} ");

  print("Book 3: ${book3.getTitle()}, Author : ${book3.getAuthor()}, Published date  : ${book3.getPublicationYear()},"" Total page read : ${book3.getPageRead()}, Age : ${book3.getBookAge()} ");

  print("Total number of books = ${Book.totalBooks}");
}