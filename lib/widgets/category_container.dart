import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final String category;

  const CategoryContainer({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: 
        category == 'snacks'? Color(0xFFF5F0CB) : 
        (category == 'beverages'? Color(0xFFD5F5F5) :
        (category == 'hot meals'? Color(0xFFF8DFDF) :
        (category == 'cold meals'? Color(0xFFDFF7D7) : Color(0xFFFFFFFF)))),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(category,
        style: TextStyle(
          fontSize: 13, 
          color: Colors.black,
        ),
      ),
);

  }
}