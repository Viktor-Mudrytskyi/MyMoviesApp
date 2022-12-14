import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movies_app/feature/domain/use_cases/get_top.dart';
import 'package:my_movies_app/feature/presentation/bloc/top_movie_event.dart';
import 'package:my_movies_app/feature/presentation/bloc/top_movie_state.dart';

class TopMoviesBloc extends Bloc<ATopMovieEvent, ATopMovieState> {
  final GetTopMovies getTopMovies;
  bool isPressed = false;
  TopMoviesBloc({required this.getTopMovies}) : super(TopMovieEmpty()) {
    on<ButtonPressed>((event, emit) async {
      isPressed = !isPressed;
      if (isPressed) {
        emit(TopMovieLoading());
        final movies = await getTopMovies.getTopMovies();
        movies.fold(
          (l) => emit(TopMovieLoaded(movies: l)),
          (r) => emit(TopMovieError(message: "Unexpected Error occured...")),
        );
      }else{
        emit(TopMovieEmpty());
      }
    });
  }
}
