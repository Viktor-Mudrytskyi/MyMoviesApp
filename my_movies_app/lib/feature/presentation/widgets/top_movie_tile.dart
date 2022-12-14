import 'package:flutter/material.dart';
import 'package:my_movies_app/feature/domain/entities/top_movie_entity.dart';

class TopMovieTile extends StatelessWidget {
  final TopMovieEntity movie;
  const TopMovieTile({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          Text(
            movie.rank,
            style: const TextStyle(fontSize: 30),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: Image.network(
              movie.image,
              scale: 1.3,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.fullTitle,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontSize: 20),
                  ),
                  const SizedBox(height: 7),
                  Text(movie.crew),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: Image.asset(
                          'assets/icons/imdb_icon.png',
                          scale: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        movie.imDbRating,
                      ),
                      Text(
                        '(${movie.imDbRatingCount})',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: Colors.white54),
                      ),
                      const SizedBox(width: 20),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
