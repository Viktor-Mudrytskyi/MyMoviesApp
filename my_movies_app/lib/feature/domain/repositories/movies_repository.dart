import 'package:dartz/dartz.dart';
import 'package:my_movies_app/core/failures/failure.dart';
import 'package:my_movies_app/feature/domain/entities/movie_entity.dart';

abstract class AMoviesRepository{
  Future<Either<AllMoviesEntity,Failure>> getTheatreMovies();
}
