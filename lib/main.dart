import 'package:book_app/pages/book_detail_page.dart';
import 'package:book_app/pages/home_page.dart';
import 'package:book_app/pages/main_screen.dart';
import 'package:book_app/pages/welcome_page.dart';
import 'package:book_app/data/books.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: "Primary",
      ),
      home: HomePage(),
    );
  }
}
