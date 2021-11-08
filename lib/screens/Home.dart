import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/helpers/Colors.dart';
import 'package:netflix_clone/helpers/MovieDetails.dart';
import 'package:netflix_clone/models/MovieModel.dart';
import 'package:netflix_clone/screens/Categories.dart';
import 'package:netflix_clone/screens/SeriesInfo.dart';
import 'package:netflix_clone/widgets/ShimmerWidget.dart';
import 'package:netflix_clone/widgets/TopicContent.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late OverlayEntry overlayEntry;

  showOverlay(BuildContext context) async {
    OverlayState overlayState = Overlay.of(context) ?? OverlayState();
    overlayEntry = OverlayEntry(
      builder: (context) {
        return Categories(
          onTap: () => overlayEntry.remove(),
        );
      },
    );

    overlayState.insert(overlayEntry);
  }

  Random random = new Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          ListView(
            children: [
              Stack(
                children: [
                  Container(
                    height: 500.0,
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://m.media-amazon.com/images/M/MV5BODA3YWZjNjktYjQ4NC00NjBhLWIxYzQtMGE0ZDk1MTdiYzNjXkEyXkFqcGdeQXVyNzI0MTUzODE@._V1_.jpg',
                      cacheKey: UniqueKey().toString(),
                      placeholder: (context, url) {
                        return RectangleShimmer();
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 0,
                    left: 0,
                    child: CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.black54,
                      child: Icon(
                        Icons.play_arrow_rounded,
                        color: Colors.white,
                        size: 55,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7.0),
              Text(
                'Serial · Drama · Ensemble · Rags to Riches · Dysfunctional Family',
                style: TextStyle(
                  fontSize: 12.0,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      SizedBox(height: 2.0),
                      Text(
                        'My List',
                        style: TextStyle(
                          fontSize: 11.0,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (ctx) => SeriesInfo(
                            movie: Movie(
                              "Dynasty",
                              'https://m.media-amazon.com/images/M/MV5BODA3YWZjNjktYjQ4NC00NjBhLWIxYzQtMGE0ZDk1MTdiYzNjXkEyXkFqcGdeQXVyNzI0MTUzODE@._V1_.jpg',
                            ),
                          ),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(3.0),
                      ),
                      padding: EdgeInsets.only(
                        right: 12.0,
                        left: 7.0,
                        top: 3.0,
                        bottom: 3.0,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.play_arrow_rounded,
                            size: 30.0,
                          ),
                          SizedBox(width: 2.0),
                          Text(
                            'Play',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.info_outline_rounded,
                        color: Colors.white,
                      ),
                      SizedBox(height: 2.0),
                      Text(
                        'Info',
                        style: TextStyle(
                          fontSize: 11.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 25.0),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text(
                  'Continue Watching',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 5.0),
              Container(
                padding: const EdgeInsets.only(left: 12.0),
                height: 179.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: continueWatchingMovies.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 7.0),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(3.0),
                                  topRight: Radius.circular(3.0),
                                ),
                                child: CachedNetworkImage(
                                  imageUrl:
                                      continueWatchingMovies[index].imgURL ??
                                          '',
                                  fit: BoxFit.fill,
                                  height: 145,
                                  width: 108,
                                  cacheKey: UniqueKey().toString(),
                                  placeholder: (context, url) =>
                                      RectangleShimmer(),
                                ),
                              ),
                              Positioned(
                                top: 0.0,
                                bottom: 0.0,
                                left: 0.0,
                                right: 0.0,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.black38,
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 2.0,
                                    ),
                                    shape: BoxShape.circle,
                                  ),
                                  margin: EdgeInsets.all(30),
                                  child: Icon(
                                    Icons.play_arrow,
                                    size: 30.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 2.75,
                            width: 108,
                            color: Colors.grey[300],
                            child: FittedBox(
                              alignment: Alignment.centerLeft,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 2.75,
                                    width: random.nextInt(108).toDouble(),
                                    color: red,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 30.0,
                            width: 108.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(3.0),
                                bottomRight: Radius.circular(3.0),
                              ),
                              color: Colors.grey[700]!.withOpacity(0.9),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.info_outline,
                                  color: Colors.white,
                                  size: 20.0,
                                ),
                                Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                  size: 20.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 25.0),
              TopicContent(
                title: "Popular on Netflix",
                movieList: popularMovies,
              ),
              SizedBox(height: 25.0),
              TopicContent(
                title: "Trending Now",
                movieList: trendingMovies,
              ),
              SizedBox(height: 25.0),
              TopicContent(
                title: "Romantic Bollywood Comedies",
                movieList: romanticBollywoodMovies,
              ),
              SizedBox(height: 25.0),
              TopicContent(
                title: "Only on Netflix",
                height: 295.0,
                width: 155.0,
                movieList: onlyOnNetflixMovies,
              ),
              SizedBox(height: 25.0),
              TopicContent(
                title: "TV Shows Based on Books",
                movieList: tvShowsBasedOnBookMovies,
              ),
              SizedBox(height: 25.0),
              TopicContent(
                title: "Bollywood Movies",
                movieList: bollywoodMovies,
              ),
              SizedBox(height: 25.0),
              TopicContent(
                title: "My List",
                movieList: myList,
              ),
              SizedBox(height: 25.0),
              TopicContent(
                title: "TV Action & Adventure",
                movieList: tvActionAdventureMovies,
              ),
              SizedBox(height: 25.0),
              TopicContent(
                title: "K-dramas",
                movieList: kDramas,
              ),
              SizedBox(height: 25.0),
              TopicContent(
                title: "South Indian Cinema",
                movieList: southIndianCinema,
              ),
              SizedBox(height: 25.0),
              TopicContent(
                title: "Anime",
                movieList: animeMovies,
              ),
              SizedBox(height: 50),
            ],
          ),
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: AppBar(
              backgroundColor: Colors.black45,
              shadowColor: Colors.transparent,
              leadingWidth: MediaQuery.of(context).size.width,
              title: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'images/Symbol.png',
                          height: 70,
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.search,
                            size: 28,
                          ),
                        ),
                        Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                              image: NetworkImage(
                                'https://image.winudf.com/v2/image1/Y29tLmJ1bnR5YXBweC5hdnRhcm1ha2VyX3NjcmVlbl8wXzE1NjM0OTUwODFfMDg3/screen-0.jpg?fakeurl=1&type=.jpg',
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        SizedBox(width: 12),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'TV Shows',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Movies',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            showOverlay(context);
                          },
                          child: Row(
                            children: [
                              Text(
                                'Categories',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Icon(Icons.arrow_drop_down),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              titleSpacing: 0,
              titleTextStyle: TextStyle(
                fontWeight: FontWeight.normal,
              ),
              toolbarHeight: 100,
            ),
          ),
        ],
      ),
    );
  }
}
