import 'package:flutter/material.dart';
import 'package:my_movies_app/feature/domain/entities/movie_entity.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, required this.movieItem});

  final MovieEntity movieItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/details_page',arguments: movieItem);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        height: 240,
        width: 150,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                width: 150,
                height: 200,
                child: Image.network(
                  movieItem.image,
                  fit: BoxFit.cover,
                )),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                movieItem.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            const SizedBox(height: 5),
            SizedBox(
              width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    movieItem.year,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Text(
                    movieItem.contentRating,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  Text(
                    movieItem.runtimeStr,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
