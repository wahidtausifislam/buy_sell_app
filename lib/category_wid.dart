import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String title;
  final Color colour;
  const CategoryWidget({
    super.key,
    required this.title,
    required this.colour,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 80,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        margin: EdgeInsets.zero,
        elevation: 0,
        color: colour,
        child: Center(
            child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}
