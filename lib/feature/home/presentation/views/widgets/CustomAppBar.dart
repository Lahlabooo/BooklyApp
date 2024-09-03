import 'package:bookly/core/utilis/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0, bottom: 30),
      child: Row(
        children: [
          const Image(
            image: AssetImage(AssetData.logo),
            height: 22,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            iconSize: 40,
          )
        ],
      ),
    );
  }
}
