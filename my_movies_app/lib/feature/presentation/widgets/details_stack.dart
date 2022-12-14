import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_movies_app/feature/domain/entities/movie_entity.dart';

class DetailsStack extends StatelessWidget {
  const DetailsStack({super.key, required this.movie});
  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    final labelLarge = Theme.of(context).textTheme.labelLarge;
    final titleSmall = Theme.of(context).textTheme.titleSmall;
    Image image = Image.network(
      movie.image,
      fit: BoxFit.cover,
      scale: 0.8,
    );
    return SizedBox(
      width: double.infinity,
      height: 250,
      child: Stack(
        fit: StackFit.expand,
        children: [
          image,
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 15,
                sigmaY: 15,
              ),
              child: Container(),
            ),
          ),
          Positioned.fill(
            left: 15,
            top: 15,
            right: 0,
            bottom: 15,
            child: Row(
              children: [
                image,
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Image.asset(
                                  'assets/icons/imdb_icon.png',
                                  scale: 13,
                                ),
                              ),
                              Text(
                               movie.imDbRating,
                                style: labelLarge,
                              ),
                              Text(
                                '(${movie.imDbRatingCount})',
                                style:
                                    labelLarge!.copyWith(color: Colors.white54),
                              ),
                              const SizedBox(width: 20),
                              Padding(
                                padding: const EdgeInsets.only(right: 3),
                                child: Image.asset(
                                  'assets/icons/metacritic_icon.png',
                                  scale: 2.3,
                                ),
                              ),
                              Text(
                                '${movie.metacriticRating}%',
                                style: labelLarge,
                              ),
                            ],
                          ),
                          Text(
                            movie.fullTitle,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Genres: ${movie.genres}',
                            style: titleSmall,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Directed by: ${movie.directors}',
                            style: titleSmall,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Runtime: ${movie.runtimeMins} mins',
                            style: titleSmall,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
