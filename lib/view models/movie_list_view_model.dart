import 'package:flutter/foundation.dart';
import 'package:flutter_mvvm_demo/models/movie.dart';
import 'package:flutter_mvvm_demo/services/webservice.dart';

class MovieListViewModel extends ChangeNotifier {
  List<Movie> movies = <Movie>[];

  Future<void> fetchMovies(String keyword) async {
    List<Movie> results = await Webservice().fetchMovies(keyword);
    movies = results;
    if (kDebugMode) {
      print('movies --> ${movies[0].toJson()}');
    }
    notifyListeners();
  }
}
