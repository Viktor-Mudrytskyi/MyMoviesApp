import 'package:equatable/equatable.dart';
import 'package:my_movies_app/feature/domain/entities/top_movie_entity.dart';

abstract class ATopMovieState extends Equatable{
  @override
  List<Object?> get props => [];
}
class TopMovieLoading extends ATopMovieState{}

class TopMovieEmpty extends ATopMovieState{}

class TopMovieError extends ATopMovieState{
  final String message;
  TopMovieError({required this.message});
}

class TopMovieLoaded extends ATopMovieState{
  final AllTopMovieEntity movies;
  TopMovieLoaded({required this.movies});
}