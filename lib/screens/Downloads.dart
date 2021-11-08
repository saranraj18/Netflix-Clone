import 'package:flutter/material.dart';
import 'package:netflix_clone/helpers/Colors.dart';

class Downloads extends StatelessWidget {
  const Downloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            title: Text('Downloads'),
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
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            dense: true,
            horizontalTitleGap: 0,
            title: Text(
              'Smart Downloads',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14.0,
              ),
            ),
            trailing: Icon(
              Icons.edit_outlined,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20.0),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              children: [
                Container(
                  height: 78.0,
                  width: 135.0,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(3.0),
                        child: Image.network(
                          'https://www.letsott.com/assets/uploads/posts/Navarasa_H.jpg',
                          fit: BoxFit.fitHeight,
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
                      Positioned(
                        bottom: 0.0,
                        child: Container(
                          height: 2.75,
                          width: 135,
                          color: Colors.grey[300],
                          child: FittedBox(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 2.75,
                                  width: 100.0,
                                  color: red,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 7.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Navarasa'),
                    SizedBox(height: 4.0),
                    Text(
                      '13+  |  785 MB',
                      style: TextStyle(
                        fontSize: 11.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Icon(
                  Icons.mobile_friendly_outlined,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
