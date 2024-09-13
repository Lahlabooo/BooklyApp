import 'package:bookly/core/utilis/Styels.dart';
import 'package:bookly/feature/Search/presentation/views/widgets/Custom_search-TextField.dart';
import 'package:flutter/material.dart';

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

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: SizedBox(
              height: 20,
              child: Text("data"),
            ) //BookListViewItem(book: ,),
            );
      },
    );
  }
}
