import 'package:book_app/data/books.dart';
import 'package:book_app/data/categories.dart';
import 'package:book_app/utils/colors.dart';
import 'package:book_app/widgets/book_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
        body: SafeArea(
            child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.menu,
                  size: 30,
                  color: AppColors.primaryColor,
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.5),
                    image: DecorationImage(
                      image: AssetImage("img/my1.jpg"),
                      fit: BoxFit.cover,
                    )
                  ),
                )
              ],
            ),
          ),
          Container(
            child: Text(
              "Discover millions of books",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(height: 20),
          //  tab bar
          Container(
            child: TabBar(
              controller: _tabController,
              labelColor: AppColors.primaryColor,
              unselectedLabelColor: Colors.grey,
              tabs: <Widget>[
                Tab(text: "Fantasy"),
                Tab(text: "Romance"),
                Tab(text: "Nonfiction"),
              ],
              indicator:
                  CircleIndicator(color: AppColors.primaryColor, radius: 3),
              indicatorSize: TabBarIndicatorSize.label,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: double.maxFinite,
            height: 300,
            child: TabBarView(controller: _tabController, children: <Widget>[
              BookCard(booksData: fantasyBookData),
              BookCard(booksData: fantasyBookData),
              BookCard(booksData: fantasyBookData),
            ]),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Explore More",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "See All",
                style: TextStyle(color: AppColors.secondaryColor, fontWeight: FontWeight.w600),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.maxFinite,
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: booksCategory.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              color: AppColors.secondaryColor,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(booksCategory[index].url),
                                fit: BoxFit.cover,
                              )),
                        ),
                        Text(
                          booksCategory[index].category,
                          style: TextStyle(color: AppColors.darkerColor),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    )));
  }
}

class CircleIndicator extends Decoration {
  final Color color;
  double radius;

  CircleIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  double radius;

  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2, configuration.size!.height);

    canvas.drawCircle(offset + circleOffset, radius, _paint);
  }
}
