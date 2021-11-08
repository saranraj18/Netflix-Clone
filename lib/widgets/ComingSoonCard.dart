import 'package:flutter/material.dart';
import 'package:netflix_clone/models/MovieModel.dart';

class ComingSoonCard extends StatelessWidget {
  const ComingSoonCard({
    Key? key,
    this.movie,
  }) : super(key: key);

  final Movie? movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220.0,
              child: Image.network(
                movie!.imgURL ??
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5HqxlM_wuUgINm3RfiuFAp4Wad6GsaQ67mA&usqp=CAU',
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
                margin: EdgeInsets.all(87),
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
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width * 0.15,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Image.network(
                      movie!.secImgUrl ??
                          'https://occ-0-2484-3662.1.nflxso.net/dnm/api/v6/tx1O544a9T7n8Z_G12qaboulQQE/AAAABbkqu1TNB1R4ND0LcsE8Miz92HroFbAIoh8Dh0nGcn-BJvPbx80cdHDA8G0aDei24yXJtYa2t_3eXukPaEHIgnH4or3zpFQg56ij8crf5iAeh8e7kpQCAJ6K5fmc6tBKU58x6jBL9JHs45eiHAqWW8wdesWR1HP_r_Y2cTQmXeHJhA.png?r=ad6',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'Remind Me',
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20.0),
                  Column(
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: Colors.white,
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        'Info',
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20.0),
                ],
              ),
              SizedBox(height: 5.0),
              Text(
                'Season 4 coming on 15 October',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12.5,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                movie!.title ?? 'Little Things',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                'From cohabitation to living long-distance, Kavya and Dhruv have weathered it all. But will their six years of history ensure a future together?',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12.0,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                'Intimate · Romantic · Dramedy · Enduring Love · Friendship · TV',
                style: TextStyle(
                  fontSize: 11.5,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 30.0),
      ],
    );
  }
}
