import 'package:flutter/material.dart';
import 'package:my_movies_app/feature/domain/entities/movie_entity.dart';
import 'package:my_movies_app/feature/presentation/widgets/movie_card.dart';


class InTheatresList extends StatelessWidget {
  const InTheatresList({super.key,required this.movies});
  final AllMoviesEntity movies;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        itemCount: movies.items.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) =>  MovieCard(movieItem: movies.items[index]),
      ),
    );
  }
}