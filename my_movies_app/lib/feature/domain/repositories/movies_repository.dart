import 'package:my_movies_app/feature/domain/entities/movie_entity.dart';

abstract class AMoviesRepository{
  Future<AllMoviesEntity> getTheatreMovies();
}
