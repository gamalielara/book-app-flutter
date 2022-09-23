import 'package:book_app/pages/book_detail_page.dart';
import 'package:book_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:book_app/data/books.dart';

class BookCard extends StatelessWidget {
  final List<Book> booksData;

  const BookCard({Key? key, required this.booksData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: booksData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return BookDetailPage(book: booksData[index]);
              }));
            },
            child: Container(
                margin: const EdgeInsets.only(right: 15),
                width: 200,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage(booksData[index].src),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: 200,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              AppColors.primaryColor.withAlpha(150),
                              Colors.transparent
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      width: 200,
                      bottom: 10,
                      child: Container(
                          child: Column(
                        children: <Widget>[
                          Text(
                            booksData[index].title,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                          Text(
                            booksData[index].author,
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )),
                    ),
                  ],
                )),
          );
        });
  }
}
