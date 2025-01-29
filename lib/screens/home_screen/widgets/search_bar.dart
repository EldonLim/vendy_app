import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final FocusNode _focusNode = FocusNode();
  String _searchQuery = ""; // State to store the search query
  @override
  Widget build(BuildContext context) {
    return SearchBar(
      focusNode: _focusNode,
      onChanged: (value) {
        setState(() {
          _searchQuery = value; // Update the search query
        });
      },
      onTapOutside: (PointerDownEvent event) {
        _focusNode.unfocus();
      },
      backgroundColor: WidgetStatePropertyAll<Color>(Colors.white),
      shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15), // Makes it a rectangle
        ),
      ),
      padding: const WidgetStatePropertyAll<EdgeInsets>(
          EdgeInsets.symmetric(horizontal: 16.0)),
      leading: Icon(Icons.search),
      elevation: WidgetStatePropertyAll(
          0), // Control shadow intensity (lower values = lighter shadow)
      // shadowColor: WidgetStatePropertyAll(Colors.black
      //     .withValues(alpha: 0.5)), // Adjust shadow color and opacity
      trailing: [
        Container(
            height: 60,
            padding: EdgeInsets.only(left: 15),
            decoration: BoxDecoration(
                border: Border(left: BorderSide(width: 1, color: Color(0xFFD9D9D9)))),
            child: Icon(Icons.favorite_border))
      ],
      hintText: "Search food",
      hintStyle: WidgetStatePropertyAll(TextStyle(fontSize: 1)),
    );
  }
}
