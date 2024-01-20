import 'package:flutter/material.dart';
import 'package:instagram_clone/common/search_input_field.dart';
import 'package:instagram_clone/screens/search/components/suggested_search_results.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SearchInputField(),
        SizedBox(height: 10.0),
        SuggestedSearchResults(),   // images displayed before you search for an item
      ],
    );
  }
}

