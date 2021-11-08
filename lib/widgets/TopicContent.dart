import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/models/MovieModel.dart';
import 'package:netflix_clone/screens/SeriesInfo.dart';
import 'package:netflix_clone/widgets/ShimmerWidget.dart';

class TopicContent extends StatelessWidget {
  const TopicContent({
    Key? key,
    this.title,
    this.height,
    this.width,
    this.movieList,
  }) : super(key: key);

  final String? title;
  final double? height;
  final double? width;
  final List<Movie>? movieList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Text(
            title ?? "",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 5.0),
        Container(
          padding: const EdgeInsets.only(left: 12.0),
          height: height ?? 150.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: movieList!.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 7.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (ctx) => SeriesInfo(
                          movie: movieList![index],
                        ),
                      ),
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(3.0),
                    child: CachedNetworkImage(
                      imageUrl: movieList![index].imgURL ?? "",
                      fit: BoxFit.fill,
                      height: height ?? 150.0,
                      width: width ?? 108.0,
                      placeholder: (context, url) => RectangleShimmer(),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
