import 'package:book_app/utils/colors.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  double? width;
  bool? isResponsive;
  final Color color;
  final String text;

  AppButton({
    Key? key,
    this.width,
    required this.text,
    required this.color,
    this.isResponsive=false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 40,
      margin: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      child: Container(
        alignment: Alignment.center,
        child: Text("$text", style: TextStyle(fontSize:16, fontWeight: FontWeight.w600,color: Colors.white))
      ),
    );
  }
}
