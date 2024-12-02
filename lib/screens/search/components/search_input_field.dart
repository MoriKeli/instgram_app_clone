import 'package:flutter/material.dart';
import 'package:instagram_clone/constants/colors.dart';


class SearchInputField extends StatelessWidget {
  const SearchInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36.0,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          shape: BoxShape.rectangle,
        ),
        padding: EdgeInsets.symmetric(vertical: 1.0),
        margin: EdgeInsets.symmetric(horizontal: 16.0),
        child: TextField(
          cursorColor: kBlueColor,
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            fillColor: kSearchBarColor,
            filled: true,
            focusedBorder: InputBorder.none,
            hintText: 'Search',
            prefixIcon: Icon(Icons.search, size: 20.0,), 
          ),
        ),
      ),
    );
  }
}