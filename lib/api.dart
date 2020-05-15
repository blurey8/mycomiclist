import 'package:http/http.dart' as http;
import 'dart:convert';
import 'comic.dart';

Future<List<dynamic>> fetchComics() async {
  final response = await http.get('https://comicvine.gamespot.com/api/issues/' +
      '?format=json' +
      '&api_key=cd7595c95a71c7ba1f31a3935d87815cf02458b1' +
      '&sort=cover_date:desc' +
      '&field_list=name,issue_number,volume,image,cover_date' +
      '&filter=cover_date:2020-05-10|2020-05-16');
  List<dynamic> results = json.decode(response.body)['results'];
  List<Comic> comics = results.map((result) {
    return Comic.fromJson(result);
  }).toList();
  return comics;
}
