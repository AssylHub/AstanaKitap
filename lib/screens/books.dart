class Books {
  String? name;
  String? authorName;
  double? price;
  int? year;
  String? lang;
  int? pageCount;
  String? about;
  String? pathImage;

  Books({
    this.name,
    this.authorName,
    this.pageCount,
    this.price,
    this.about,
    this.lang,
    this.year,
    this.pathImage
  });

}

List books = [
  Books(name: "Harry Potter", authorName: "J.K. Rowling", year: 2015, lang: "RU", pageCount: 600, price: 4700, pathImage: 'assets/images/book1.jpg'),
  Books(name: "Harry Potter", authorName: "J.K. Rowling", year: 2013, lang: "ENG", pageCount: 540,  price: 4700,  pathImage: 'assets/images/book2.jpg'),
  Books(name: "Abay Zholy", authorName: "Mukhtar Auezov", year: 2015, lang: "RU", pageCount: 600, price: 4700, pathImage: 'assets/images/abay.jpg'),
  Books(name: "Kemel Adam", authorName: "Qairat aga", year: 2015, lang: "RU", pageCount: 600, price: 4700, pathImage: 'assets/images/kemel_adam.webp'),
  Books(name: "Men", authorName: "Aza braza", year: 2015, lang: "RU", pageCount: 600, price: 4700, pathImage: 'assets/images/men.webp'),
  Books(name: "Koshpendiler", authorName: "Ileke", year: 2015, lang: "RU", pageCount: 600, price: 4700, pathImage: 'assets/images/koshpendiler.webp'),
  Books(name: "Atomic Habits", authorName: "Bireu", year: 2015, lang: "RU", pageCount: 600, price: 4700, pathImage: 'assets/images/atom.jpg'),

];

