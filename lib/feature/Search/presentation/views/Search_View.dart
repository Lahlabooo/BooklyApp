import 'package:bookly/feature/Search/presentation/views/widgets/SearchBody.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SearchBody(),
      ),
    );
  }
}
