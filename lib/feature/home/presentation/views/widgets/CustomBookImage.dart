import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.url});
  final String url;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: AspectRatio(
        aspectRatio: .7,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: url,
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
