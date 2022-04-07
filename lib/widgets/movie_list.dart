import 'package:flutter/material.dart';
import 'package:flutter_mvvm_demo/models/movie.dart';

class MovieList extends StatelessWidget {
  final List<Movie>? movies;

  const MovieList({Key? key, this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: movies!.length,
      itemBuilder: (context, index) {
        final movie = movies![index];
        return ListTile(
          contentPadding: const EdgeInsets.all(10),
          leading: Container(
            width: 50,
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(movie.poster!),
              ),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          title: Text(movie.title!),
        );
      },
    );
  }
}
