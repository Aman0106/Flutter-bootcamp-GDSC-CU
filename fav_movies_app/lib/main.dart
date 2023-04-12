import 'package:flutter/material.dart';
import 'package:recipes_app/movie_card.dart';

import './movie_class.dart';

void main() => runApp(MaterialApp(home: HomePage()));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<MovieClass> _moviesList = [
    MovieClass(
      "John Wick",
      "John Wick is an American action thriller media franchise created by Derek Kolstad and centered around John Wick, a former hitman who is forced back into the criminal underworld he had previously abandoned",
    ),
    MovieClass(
      "Your Name",
      "Two teenagers share a profound, magical connection upon discovering they are swapping bodies. Things manage to become even more complicated when the boy and girl decide to meet in person.",
    ),
    MovieClass(
      "A Silent voice",
      "When a grade school student with impaired hearing is bullied mercilessly, she transfers to another school. Years later, one of her former tormentors sets out to make amends.",
    ),
  ];

  final titleTextController = TextEditingController();
  final descriptionTextController = TextEditingController();

  late MovieClass newMovie;

  void submit() {
    newMovie = MovieClass(
      titleTextController.text,
      descriptionTextController.text,
    );

    setState(() {
      _moviesList.add(newMovie);
    });

    Navigator.of(context).pop();

    titleTextController.text = '';
    descriptionTextController.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite Movies"),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
            children: _moviesList.map((movie) {
          return MovieInfoCard(movie);
        }).toList()),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog<MovieClass>(
            context: context,
            builder: (context) => AlertDialog(
              title: Text("Movie Info"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    autofocus: true,
                    decoration: InputDecoration(hintText: 'Title'),
                    controller: titleTextController,
                  ),
                  TextField(
                    autofocus: true,
                    decoration: InputDecoration(hintText: 'Discription'),
                    controller: descriptionTextController,
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: submit,
                  child: Text("Add"),
                  style: TextButton.styleFrom(foregroundColor: Colors.red),
                ),
              ],
            ),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
    );
  }
}
