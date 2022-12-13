import 'package:equatable/equatable.dart';
import 'package:my_movies_app/feature/domain/entities/movie_entity.dart';

abstract class AInTheatres implements Equatable {
  const AInTheatres();
  @override
  List<Object?> get props => [];
  @override
  bool? get stringify => true;
}

class LoadingInTheatres extends AInTheatres {}

class LoadedInTheatres extends AInTheatres {
  final AllMoviesEntity allMovies;
  LoadedInTheatres({required this.allMovies});
  @override
  List<Object?> get props => [allMovies];
}

class ErrorLoadingInTheatres extends AInTheatres {
  final String message;
  ErrorLoadingInTheatres({required this.message});
  @override
  List<Object?> get props => [message];
}
