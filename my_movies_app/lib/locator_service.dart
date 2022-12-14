import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:my_movies_app/feature/data/datasources/remote_datasource.dart';
import 'package:my_movies_app/feature/data/repositories/movies_repositories_impl.dart';
import 'package:my_movies_app/feature/domain/repositories/movies_repository.dart';
import 'package:my_movies_app/feature/domain/use_cases/get_in_theatres.dart';
import 'package:my_movies_app/feature/domain/use_cases/get_top.dart';
import 'package:my_movies_app/feature/presentation/bloc/top_movies_bloc.dart';
import 'package:my_movies_app/feature/presentation/cubit/theatre_movies_cubit.dart';

final sl = GetIt.instance;

void init() {
  sl.registerFactory(() => InTheatresCubit(getInTheatres: sl<GetInTheatres>()));
  sl.registerLazySingleton(() => GetInTheatres(repository: sl<AMoviesRepository>()));
  sl.registerLazySingleton(() => GetTopMovies(repository: sl<AMoviesRepository>()));
  sl.registerLazySingleton<AMoviesRepository>(() => MoviesRepository(remoteDatasorce: sl<ARemoteDatasource>()));
  sl.registerLazySingleton<ARemoteDatasource>(() => RemoteDatasource());
  sl.registerLazySingleton<Connectivity>(() => Connectivity());
  sl.registerFactory(() => TopMoviesBloc(getTopMovies: sl<GetTopMovies>()));
}
