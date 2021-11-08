import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key, this.onTap}) : super(key: key);

  final void Function()? onTap;

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final List<String> categoriesList = [
    'All Categories',
    'Available for Download',
    'Halloween',
    'Hindi',
    'Tamil',
    'Punjabi',
    'Telugu',
    'Malayalam',
    'Marathi',
    'Bengali',
    'English',
    'International',
    'Independent',
    'Comedies',
    'Action',
    'Romance',
    'Dramas',
    'Thriller',
    'Horror',
    'Sci-Fi',
    'Crime',
    'Fantasy',
    'Sports',
    'Bollywood',
    'Hollywood',
    'Children & Family',
    'Award-Winning',
    'Documentaries',
    'Stand-Up Comedy',
    'Anime',
    'Audio Description',
  ];

  int _selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Stack(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: categoriesList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: index == 0
                      ? const EdgeInsets.only(top: 100.0, bottom: 16.0)
                      : index == categoriesList.length - 1
                          ? const EdgeInsets.only(bottom: 110.0, top: 16.0)
                          : const EdgeInsets.symmetric(vertical: 16.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedCategory = index;
                      });
                    },
                    child: Text(
                      categoriesList[index],
                      style: TextStyle(
                        fontSize: _selectedCategory == index ? 19.0 : 17.0,
                        color: _selectedCategory == index
                            ? Colors.white
                            : Colors.grey[400],
                        fontWeight: _selectedCategory == index
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              },
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 5.0,
                    ),
                  ],
                ),
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: GestureDetector(
                  onTap: widget.onTap ?? () {},
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30.0,
                    child: Icon(
                      Icons.close,
                      color: Colors.black,
                      size: 25.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
