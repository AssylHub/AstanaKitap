import 'package:astana_kitap/screens/books.dart';
import 'package:flutter/material.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key, required this.book});

  final Books book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: double.infinity,
                height: 400,
                decoration: const BoxDecoration(
                    // color: Colors.amber
                    gradient: LinearGradient(
                        colors: [Colors.amber, Colors.white],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0.4, 0.8])),
              ),
              Container(
                // alignment: Alignment.center,
                width: 280,
                height: 300,
                child: Image.asset("assets/images/unnamed.webp"),
              ),
            ],
          ),
          TextBlock(
            title: "${book.name}",
            subtitle: "${book.authorName}",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextBlock(
                    title: "${book.year}",
                    subtitle: "Year of release",
                    titleSize: 25,
                    subtitleSize: 13,
                  ),
                  const VerticalDivider(thickness: 2, color: Colors.black54),
                  TextBlock(
                    title: "${book.lang}",
                    subtitle: "Year of release",
                    titleSize: 25,
                    subtitleSize: 13,
                  ),
                  const VerticalDivider(
                    thickness: 2,
                    color: Colors.black54,
                  ),
                  TextBlock(
                    title: "${book.pageCount}",
                    subtitle: "Pages",
                    titleSize: 25,
                    subtitleSize: 13,
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 20),
            child: const Text(
              "About",
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'Source Code Pro',
                  fontWeight: FontWeight.w900),
            ),
          ),
          const Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Nisl tincidunt  ",
                style: TextStyle(
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 60),
            child: SizedBox(
              
              width: double.infinity,
              child: TextButton(
                  
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                  onPressed: () {},
                  child: Text(
                    "Buy for ${book.price} KZT",
                    style: const TextStyle(
                        fontFamily: 'Source Code Pro',fontSize: 25, fontWeight: FontWeight.w900, color: Colors.white
                        ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}

class TextBlock extends StatelessWidget {
  TextBlock(
      {super.key,
      required this.title,
      required this.subtitle,
      this.titleSize = 30,
      this.subtitleSize = 20});

  final String title;
  final String subtitle;
  final double titleSize;
  final double subtitleSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: titleSize,
              fontFamily: "Source Code Pro",
              fontWeight: FontWeight.w900,
              color: Colors.black),
        ),
        Text(
          subtitle,
          softWrap: false,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontSize: subtitleSize,
              fontFamily: "Source Code Pro",
              fontWeight: FontWeight.w900,
              color: Colors.grey.shade800),
        )
      ],
    );
  }
}
