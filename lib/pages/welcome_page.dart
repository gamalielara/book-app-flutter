import 'package:book_app/pages/main_screen.dart';
import 'package:book_app/utils/colors.dart';
import 'package:book_app/widgets/button.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 150, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("this is a book app.", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700)),
                Text("discover millions of books here.", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black38)),
                SizedBox(height: 10),
                GestureDetector(
                 onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context){
                     return MainPage();
                   }));
                 },
                  child:  AppButton(text:"Get started", color: AppColors.primaryColor, width:120),
                ),
              ],
            ),
          )
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("img/hero.jpg"),
            fit: BoxFit.cover
          ),
        ),
      )
    );
  }
}
