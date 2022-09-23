import 'package:book_app/pages/home_page.dart';
import 'package:book_app/pages/profile_page.dart';
import 'package:book_app/pages/search_page.dart';
import 'package:book_app/utils/colors.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) :super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>{
  final List pages = [
      HomePage(),
      SearchPage(),
      ProfilePage(),
  ];
  int currentPageIndex = 0;

  void onTap(int index){
    setState((){
      currentPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentPageIndex,
        selectedItemColor: AppColors.primaryColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(label:"Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label:"Discover", icon: Icon(Icons.search)),
          BottomNavigationBarItem(label:"Profile", icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
