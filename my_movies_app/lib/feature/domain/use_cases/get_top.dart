import 'package:dartz/dartz.dart';
import 'package:my_movies_app/core/failures/failure.dart';
import 'package:my_movies_app/core/use_cases/use_case.dart';
import 'package:my_movies_app/feature/domain/entities/top_movie_entity.dart';
import 'package:my_movies_app/feature/domain/repositories/movies_repository.dart';

class GetTopMovies extends AUseCase{
  AMoviesRepository repository;
  GetTopMovies({required this.repository});
  Future<Either<AllTopMovieEntity,Failure>> getTopMovies()async=>await repository.getTopMovies();
}