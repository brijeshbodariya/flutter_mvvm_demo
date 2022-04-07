import 'package:flutter/material.dart';
import 'package:flutter_mvvm_demo/pages/movie_list_page.dart';
import 'package:flutter_mvvm_demo/view%20models/movie_list_view_model.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies',
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => MovieListViewModel(),
        child: const MovieListPage(),
      ),
    );
  }
}
