import 'package:astana_kitap/constants.dart';
import 'package:astana_kitap/screens/book_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'books.dart';

class HomePageScreen extends StatelessWidget {
  final List<IconData> body = const [
    // Icon(Icons.home),
  ];

  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "ASTANA.KITAP",
                  style: TextStyle(fontSize: 22),
                ),
                Icon(FontAwesomeIcons.magnifyingGlass),
              ],
            ),
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.only(left: 15, top: 20, bottom: 20, right: 15),
              child: SizedBox(
                height: 30,
                child: Row(
                  children: [
                    CategoryButton(
                      text: "7 class",
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CategoryButton(
                      text: "8 class",
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CategoryButton(
                      text: "9 class",
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "By Grades",
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  "Смотреть все",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BookCard(
                  text: "11",
                ),
                const SizedBox(
                  width: 20,
                ),
                BookCard(
                  text: "10",
                ),
              ],
            ),
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Text(
              "Все книги",
              style: TextStyle(fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, 
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 20,
                  childAspectRatio: 0.5,
                ),
                itemCount: books.length,
                itemBuilder: (context, index) {
                  return ReusableBook(
                      name: "${books[index].name}",
                      authorName: "${books[index].authorName}",
                      bookAsset: books[index].pathImage,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BookDetailsScreen(
                                      book: books[index],
                                    )));
                      });
                }),
          )
        ],
      ),
      bottomNavigationBar:
          BottomNavigationBar(backgroundColor: Colors.white, items: const [
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.house,
            color: Colors.black,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.book,
            color: Colors.black,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.user,
            color: Colors.black,
          ),
          label: 'Home',
        ),
      ]),
    );
  }
}

class ReusableBook extends StatelessWidget {
  const ReusableBook(
      {super.key,
      required this.bookAsset,
      this.onPressed,
      this.name,
      this.authorName});

  final String bookAsset;
  final VoidCallback? onPressed;
  final String? name;
  final String? authorName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: onPressed,
          child: Column(
    // alignment: Alignment.bottomCenter,
    children: [
      Container(
          // padding: EdgeInsets.,
          child: ClipRRect(
        borderRadius: const BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15)),
        child: Image.asset(
          height: 150,
          bookAsset,
          fit: BoxFit.cover,
        ),
      )),
      Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black54,
                  spreadRadius: 0,
                  blurRadius: 7,
                  offset: Offset(0, 3))
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$name'),
            Text(
              "${authorName}",
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
      ),
    ],
          ),
        );
  }
}

class BookCard extends StatelessWidget {
  BookCard({super.key, this.text});

  String? text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 3, color: blueColor),
            color: Colors.white),
        child: Column(
          children: [
            Text(
              "$text",
              style: TextStyle(color: blueColor),
            ),
            Image.asset('assets/images/book_collection.png'),
          ],
        ),
      ),
    );
  }
}

class CategoryButton extends StatefulWidget {
  const CategoryButton({super.key, required this.text});

  final String text;

  @override
  State<CategoryButton> createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          setState(() {
            isTapped = !isTapped;
          });
        },
        style: TextButton.styleFrom(
            backgroundColor: isTapped == true ? blueColor : Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 0)),
        child: Text(
          widget.text,
          style:
              TextStyle(color: isTapped == true ? Colors.white : Colors.black),
        ));
  }
}



// const Padding(
//             padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
//             child: const Text(
//               "Все книги",
//               style: TextStyle(fontSize: 25),
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ReusableBook(
//                   bookAsset: 'assets/images/book1.jpg',
//                 ),
//                 // SizedBox(width: 80,),
//                 ReusableBook(
//                   bookAsset: 'assets/images/book1.jpg',
//                 ),
//                 ReusableBook(
//                   bookAsset: 'assets/images/book1.jpg',
//                 ),
//               ],
//             ),
//           ),
//           const Padding(
//             padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 ReusableBook(
//                   bookAsset: 'assets/images/book2.jpg',
//                 ),
//                 // SizedBox(width: 80,),
//                 ReusableBook(
//                   bookAsset: 'assets/images/book2.jpg',
//                 ),
//                 ReusableBook(
//                   bookAsset: 'assets/images/book2.jpg',
//                 ),
//               ],
//             ),
//           )


// class HomePageScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3, // Number of grade tabs
//       child: Scaffold(
//         appBar: AppBar(
//           title: const Text("ASTANA.KITAP"),
//           actions: [
//             IconButton(
//               icon: const Icon(Icons.search),
//               onPressed: () {
//                 // Handle search action
//               },
//             ),
//           ],
//           bottom: const TabBar(
//             tabs: [
//               Tab(text: "7 класс"),
//               Tab(text: "8 класс"),
//               Tab(text: "9 класс"),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             BooksTab(),
//             BooksTab(),
//             BooksTab(),
//           ],
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           items: const [
//             BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
//             BottomNavigationBarItem(icon: Icon(Icons.book), label: ""),
//             BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class BooksTab extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // By Grades Section
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               "By Grades",
//               // style: Theme.of(context).textTheme.headline6,
//             ),
//           ),
//           Container(
//             height: 200, // Height for horizontal list
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: 5, // Replace with actual count
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     width: 120,
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.blueAccent),
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Column(
//                       children: [
//                         Expanded(
//                           child: Image.asset('assets/images/book_collection.png'),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.all(4.0),
//                           child: Text("Chemistry"),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//           // All Books Section
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               "Все книги",
//               // style: Theme.of(context).textTheme.headline6,
//             ),
//           ),
//           GridView.builder(
//             shrinkWrap: true,
//             physics: NeverScrollableScrollPhysics(),
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 3, // Number of columns
//               mainAxisSpacing: 8,
//               crossAxisSpacing: 8,
//             ),
//             itemCount: 6, // Replace with actual count
//             itemBuilder: (context, index) {
//               return Column(
//                 children: [
//                   Expanded(
//                     child: Container(
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage('assets/harry_potter.png'),
//                           fit: BoxFit.cover,
//                         ),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(4.0),
//                     child: Text(
//                       "Harry Potter",
//                       style: TextStyle(fontSize: 12),
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                 ],
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }