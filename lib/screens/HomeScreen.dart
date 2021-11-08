import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/ComingSoon.dart';
import 'package:netflix_clone/screens/Downloads.dart';
import 'package:netflix_clone/screens/Home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedNavIcon = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: selectedNavIcon == 0
            ? Home()
            : selectedNavIcon == 1
                ? ComingSoon()
                : Downloads(),
      ),
      bottomNavigationBar: Container(
        color: Color(0xFF252222),
        height: 60.0,
        child: Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: MediaQuery.of(context).size.width * 0.166),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedNavIcon = 0;
                  });
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.home_filled,
                      color: selectedNavIcon == 0 ? Colors.white : Colors.grey,
                    ),
                    SizedBox(height: 1.5),
                    Text(
                      'Home',
                      style: TextStyle(
                        fontSize: 10.2,
                        color:
                            selectedNavIcon == 0 ? Colors.white : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.166),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedNavIcon = 1;
                  });
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.video_collection_outlined,
                      color: selectedNavIcon == 1 ? Colors.white : Colors.grey,
                    ),
                    SizedBox(height: 1.5),
                    Text(
                      'Coming Soon',
                      style: TextStyle(
                        fontSize: 10.0,
                        color:
                            selectedNavIcon == 1 ? Colors.white : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.166),
              InkWell(
                onTap: () {
                  setState(() {
                    selectedNavIcon = 2;
                  });
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.download_for_offline_outlined,
                      color: selectedNavIcon == 2 ? Colors.white : Colors.grey,
                    ),
                    SizedBox(height: 1.5),
                    Text(
                      'Downloads',
                      style: TextStyle(
                        fontSize: 10.2,
                        color:
                            selectedNavIcon == 2 ? Colors.white : Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
