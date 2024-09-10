import 'package:bookly/core/utilis/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: .7,
      child: Container(
        //width: 50,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AssetData.testImage), fit: BoxFit.fill),
          borderRadius: BorderRadiusDirectional.all(Radius.circular(15)),
        ),
      ),
    );
  }
}
