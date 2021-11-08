import 'package:flutter/material.dart';
import 'package:netflix_clone/helpers/MovieDetails.dart';
import 'package:netflix_clone/screens/Notifications.dart';
import 'package:netflix_clone/widgets/ComingSoonCard.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Text('Coming Soon'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 28,
            ),
          ),
          SizedBox(width: 7.0),
          Container(
            height: 25,
            width: 25,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                'https://image.winudf.com/v2/image1/Y29tLmJ1bnR5YXBweC5hdnRhcm1ha2VyX3NjcmVlbl8wXzE1NjM0OTUwODFfMDg3/screen-0.jpg?fakeurl=1&type=.jpg',
              ),
            ),
          ),
          SizedBox(width: 12),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(
              Icons.notifications_none,
              color: Colors.white,
            ),
            title: Text(
              'Notifications',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 15.0,
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 16.0,
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Notifications(),
              ),
            ),
            horizontalTitleGap: 0,
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: comingSoon.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ComingSoonCard(movie: comingSoon[index]);
            },
          ),
        ],
      ),
    );
  }
}
