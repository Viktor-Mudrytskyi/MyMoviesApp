import 'package:flutter/material.dart';
import 'package:my_movies_app/feature/domain/entities/movie_entity.dart';
import 'package:my_movies_app/feature/presentation/widgets/details_page_widgets.dart';

class DetailsPage extends StatelessWidget {
  final MovieEntity movie;
  const DetailsPage({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    final titleLarge = Theme.of(context).textTheme.titleLarge;
    return Scaffold(
      appBar: AppBar(
        title: Text('Detailed view', style: titleLarge),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DetailsStack(movie: movie), 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Description: ',
                    style: titleLarge,
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    '    ${movie.plot}',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ActorsRow(movie: movie),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
