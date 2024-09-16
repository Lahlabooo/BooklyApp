import 'package:bookly/core/utilis/Styels.dart';
import 'package:bookly/feature/Search/presentation/views/widgets/Custom_search-TextField.dart';
import 'package:flutter/material.dart';

import 'SearchResultListView.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 25,
          ),
          Text(
            'Search Result',
            style: Styels.textStyle18,
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: SearchResultListView(),
          )
        ],
      ),
    );
  }
}
