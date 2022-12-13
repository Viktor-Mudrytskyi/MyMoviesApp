import 'package:flutter/material.dart';
import 'package:my_movies_app/feature/domain/entities/movie_entity.dart';
import 'package:my_movies_app/feature/presentation/widgets/actor_tile.dart';

class ActorsRow extends StatelessWidget {
  const ActorsRow({super.key, required this.movie});
  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: ((context, index)=>ActorTile(name: movie.starList[index].name)),
        itemCount: movie.starList.length,
      ),
    );
  }
}
