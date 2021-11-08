import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:netflix_clone/helpers/Colors.dart';
import 'package:netflix_clone/models/MovieModel.dart';

class SeriesInfo extends StatefulWidget {
  const SeriesInfo({Key? key, this.movie}) : super(key: key);

  final Movie? movie;

  @override
  State<SeriesInfo> createState() => _SeriesInfoState();
}

class _SeriesInfoState extends State<SeriesInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF191919),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  widget.movie!.imgURL ?? "",
                ),
                // 'https://i.pinimg.com/474x/2b/4b/c7/2b4bc704e0f7729da0bdcb75380de279.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 20,
                sigmaY: 20,
              ),
              child: Container(
                child: Column(
                  children: [
                    SizedBox(height: 10.0),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: InkWell(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            padding: const EdgeInsets.all(2.0),
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(3.0),
                        child: Image.network(
                          widget.movie!.imgURL ?? "",
                          // 'https://i.pinimg.com/474x/2b/4b/c7/2b4bc704e0f7729da0bdcb75380de279.jpg',
                        ),
                      ),
                      width: MediaQuery.of(context).size.width * 0.35,
                    ),
                    SizedBox(height: 10.0),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.grey[400],
                        ),
                        children: [
                          TextSpan(
                            text: '98% match   ',
                            style: TextStyle(
                              color: Colors.green[700],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(text: '2019  M  2 Seasons'),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Watch Season 2 now',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      decoration: BoxDecoration(
                        color: red,
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      padding: EdgeInsets.symmetric(vertical: 6.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          ),
                          SizedBox(width: 3.0),
                          Text(
                            'Play',
                            style: TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Three suburban moms orchestrate a local grocery store heist to escape financial ruin and establish independence -- together.',
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cast: Christina Hendricks, Retta, Mae Whitman',
                            style: TextStyle(
                              fontSize: 11.0,
                              color: Colors.white70,
                            ),
                          ),
                          Text(
                            'Creator: Jenna Bans',
                            style: TextStyle(
                              fontSize: 11.0,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.check,
                      color: Colors.white,
                    ),
                    SizedBox(height: 3.0),
                    Text(
                      'My List',
                      style: TextStyle(
                        fontSize: 11.0,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.thumb_up_alt_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(height: 3.0),
                    Text(
                      'Rate',
                      style: TextStyle(
                        fontSize: 11.0,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.ios_share_rounded,
                      color: Colors.white,
                    ),
                    SizedBox(height: 3.0),
                    Text(
                      'Share',
                      style: TextStyle(
                        fontSize: 11.0,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25),
                Text(
                  'EPISODES',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text('Season 1'),
                    Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Colors.white,
                    ),
                  ],
                ),
                ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SizedBox(height: 15),
                        Row(
                          children: [
                            Container(
                              height: 78.0,
                              width: 120.0,
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(3.0),
                                    child: Image.network(
                                      'https://images.immediate.co.uk/production/volatile/sites/3/2021/09/gettyimages-1145365978-e9cd35f.jpg',
                                      fit: BoxFit.fitWidth,
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
                                      margin: EdgeInsets.all(23),
                                      child: Icon(
                                        Icons.play_arrow,
                                        size: 20.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 4.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${index + 1}. Pilot',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                ),
                                Text('45m'),
                              ],
                            ),
                            Spacer(),
                            Icon(
                              Icons.download_sharp,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        SizedBox(height: 3.0),
                        Text(
                          'As Beth, Ruby and Annie face personal and financial crises, they decide to team up and take up and take back theri lives -- by robbing their local grocery store.',
                          style: TextStyle(fontSize: 13.0),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
