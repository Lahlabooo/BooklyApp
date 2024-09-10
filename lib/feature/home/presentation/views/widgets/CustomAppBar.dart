import 'package:bookly/core/utilis/app_routers.dart';
import 'package:bookly/core/utilis/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, bottom: 30),
      child: Row(
        children: [
          const Image(
            image: AssetImage(AssetData.logo),
            height: 22,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kSearchView);
            },
            icon: const Icon(Icons.search),
            iconSize: 40,
          )
        ],
      ),
    );
  }
}
