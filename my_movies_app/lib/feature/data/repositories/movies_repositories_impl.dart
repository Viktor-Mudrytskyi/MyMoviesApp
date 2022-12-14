import 'package:dartz/dartz.dart';
import 'package:my_movies_app/core/failures/failure.dart';
import 'package:my_movies_app/feature/data/datasources/remote_datasource.dart';
import 'package:my_movies_app/feature/domain/entities/movie_entity.dart';
import 'package:my_movies_app/feature/domain/entities/top_movie_entity.dart';
import 'package:my_movies_app/feature/domain/repositories/movies_repository.dart';

class MoviesRepository implements AMoviesRepository{
  final ARemoteDatasource remoteDatasorce;
  const MoviesRepository({required this.remoteDatasorce});

  @override
  Future<Either<AllMoviesEntity,Failure>> getTheatreMovies() async{
    try {
      final result=await remoteDatasorce.getTheatreMovies();
      return Left(result);
    } catch (e) {
      return Right(ServerFailure(message: 'Server failure'));
    }
  }

  @override
  Future<Either<AllTopMovieEntity, Failure>> getTopMovies() async{
    try {
      final result=await remoteDatasorce.getTopMovies();
      return Left(result);
    } catch (e) {
      return Right(ServerFailure(message: 'Server failure'));
    }
  }
}