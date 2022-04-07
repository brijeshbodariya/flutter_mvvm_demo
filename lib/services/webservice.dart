import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_mvvm_demo/models/movie.dart';
import 'package:http/http.dart' as http;

class Webservice {
  Future<List<Movie>> fetchMovies(String keyword) async {
    final url = "http://www.omdbapi.com/?t=$keyword&apikey=ce3dce57";
    if (kDebugMode) {
      log(url);
    }
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      List<Movie> data = <Movie>[movieFromJson(response.body)];
      return data;
    } else {
      throw Exception("Unable to perform request!");
    }
  }
}
