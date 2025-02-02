import 'package:flutter/material.dart';

class ItemContainerMenu extends StatelessWidget {
  final String item;
  final String price;
  const ItemContainerMenu({super.key, required this.item, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset("assets/menu_item.jpg",
          height: 175,
          width: 175,
          fit: BoxFit.cover,),
          SizedBox(
            height: 10,
          ),
          Text(item,
          style: TextStyle(
            fontSize: 14
          ),),
          Text(price,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold
          ),),
        ],
      ),
    );
  }
}