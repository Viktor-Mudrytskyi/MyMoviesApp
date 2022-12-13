import 'package:my_movies_app/feature/data/datasources/remote_datasource.dart';
import 'package:my_movies_app/feature/domain/entities/movie_entity.dart';
import 'package:my_movies_app/feature/domain/repositories/movies_repository.dart';

class MoviesRepository implements AMoviesRepository{
  final RemoteDatasource remoteDatasorce;
  const MoviesRepository({required this.remoteDatasorce});

  @override
  Future<AllMoviesEntity> getTheatreMovies() async{
    return await remoteDatasorce.getTheatreMovies();
  }

}