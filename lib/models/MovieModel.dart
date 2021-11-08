import 'package:flutter/foundation.dart';

class Movie {
  final String? title;
  final String? imgURL;
  final String? secImgUrl;

  Movie(this.title, this.imgURL, {this.secImgUrl});
}

class Notification {
  final String? type;
  final String? movieTitle;
  final String? date;
  final String? imgUrl;

  Notification({
    @required this.type,
    @required this.movieTitle,
    @required this.date,
    @required this.imgUrl,
  });
}
