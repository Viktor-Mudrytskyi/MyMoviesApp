import 'package:flutter/material.dart';
import 'package:my_movies_app/feature/domain/entities/top_movie_entity.dart';
import 'package:my_movies_app/feature/presentation/widgets/home_page_widgets.dart';

class TopMoviesList extends StatelessWidget {
  const TopMoviesList({super.key, required this.movies});
  final AllTopMovieEntity movies;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: movies.items.length,
          (context, index) {
        return Column(
          children: [
            TopMovieTile(movie: movies.items[index]),
            const Divider(
              color: Colors.white,
              thickness: 1,
            )
          ],
        );
      }),
    );

    // ListView.separated(
    //   physics: const NeverScrollableScrollPhysics(),
    //   shrinkWrap: true,
    //   separatorBuilder: (context, index) => const Divider(color: Colors.white,),
    //   itemCount: movies.items.length,
    //   itemBuilder: (context, index) =>
    //       TopMovieTile(movie: movies.items[index]),
    // );
  }
}
