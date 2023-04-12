import 'package:flutter/material.dart';

import './movie_class.dart';

class MovieInfoCard extends StatelessWidget {
  final MovieClass _movie;

  const MovieInfoCard(this._movie, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red.shade400,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Opacity(
            opacity: 0.5,
            child: Image.asset(
              'assets/images/waves.jpg',
              fit: BoxFit.cover,
              height: 300,
              width: double.infinity,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _movie.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Divider(
                  color: Colors.white,
                ),
                Text(_movie.description,
                    style: TextStyle(
                      color: Color.fromARGB(219, 255, 255, 255),
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
