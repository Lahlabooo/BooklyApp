import 'package:bookly/core/utilis/assets.dart';
import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 14.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .30,
        child: AspectRatio(
          aspectRatio: .7,
          child: Container(
            width: 50,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AssetData.testImage), fit: BoxFit.fill),
              borderRadius: BorderRadiusDirectional.all(Radius.circular(15)),
            ),
          ),
        ),
      ),
    );
  }
}
