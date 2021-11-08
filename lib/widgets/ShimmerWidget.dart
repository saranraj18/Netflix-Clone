import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class RectangleShimmer extends StatelessWidget {
  const RectangleShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      child: Container(
        color: Colors.yellow,
      ),
      baseColor: (Colors.grey[900])!,
      highlightColor: (Colors.grey[850])!,
    );
  }
}
