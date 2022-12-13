import 'package:my_movies_app/core/use_cases/use_case.dart';
import 'package:my_movies_app/feature/domain/entities/movie_entity.dart';
import 'package:my_movies_app/feature/domain/repositories/movies_repository.dart';

class GetInTheatres extends AUseCase{
  AMoviesRepository repository;
  GetInTheatres({required this.repository});

  Future<AllMoviesEntity> getTheatreMovies()=>repository.getTheatreMovies();
}