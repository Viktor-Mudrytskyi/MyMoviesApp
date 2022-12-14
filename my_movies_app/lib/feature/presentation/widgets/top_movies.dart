import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movies_app/feature/presentation/bloc/top_movie_state.dart';
import 'package:my_movies_app/feature/presentation/bloc/top_movies_bloc.dart';
import 'package:my_movies_app/feature/presentation/widgets/top_movies_list.dart';

class TopMovies extends StatefulWidget {
  const TopMovies({super.key});

  @override
  State<TopMovies> createState() => _TopMoviesState();
}

class _TopMoviesState extends State<TopMovies> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopMoviesBloc, ATopMovieState>(
      builder: (context, state) {
        if (state is TopMovieLoading) {
          return SliverList(
            delegate: SliverChildListDelegate([
              const Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
            ]),
          );
        } else if (state is TopMovieLoaded) {
          return TopMoviesList(movies: state.movies);
        } else if (state is TopMovieEmpty) {
          return SliverList(
            delegate: SliverChildListDelegate([]),
          );
        }
        return SliverList(
            delegate: SliverChildListDelegate([]),
          );
      },
    );
  }
}
