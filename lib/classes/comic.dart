import 'dart:convert';
import 'package:FlutterProject/constante.dart';
import 'package:http/http.dart' as http;

class Comic {
  final String alt;
  final String day;
  final String img;
  final String link;
  final String month;
  final String news;
  final int num;
  final String safeTitle;
  final String title;
  final String transcript;
  final String year;

  Comic({
    this.alt,
    this.day,
    this.img,
    this.link,
    this.month,
    this.news,
    this.num,
    this.safeTitle,
    this.title,
    this.transcript,
    this.year,
  });

  factory Comic.fromJson(Map<String, dynamic> jsonMap) {
    return Comic(
        alt: jsonMap['alt'],
        day: jsonMap['day'],
        img: jsonMap['img'],
        link: jsonMap['link'],
        month: jsonMap['month'],
        news: jsonMap['news'],
        num: int.parse(jsonMap['num'].toString()),
        safeTitle: jsonMap['safe_title'],
        title: jsonMap['title'],
        transcript: jsonMap['transcript'],
        year: jsonMap['year']);
  }

  static Future<Comic> fetchLastComic() async {
    final response = await http.get(Constante.getUrlLastComic());
    if (response.statusCode != 200) {
      throw Exception('Failed to load post');
    }

    return Comic.fromJson(json.decode(response.body));
  }

  static Future<Comic> fetchComic(nb) async {
    final response = await http.get(Constante.getUrlComic(nb));
    if (response.statusCode != 200) {
      throw Exception('Failed to load post');
    }

    return Comic.fromJson(json.decode(response.body));
  }
}
