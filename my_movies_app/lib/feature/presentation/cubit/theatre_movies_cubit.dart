import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movies_app/feature/domain/use_cases/get_in_theatres.dart';
import 'package:my_movies_app/feature/presentation/cubit/theatre_movies_state.dart';

class InTheatresCubit extends Cubit<AInTheatres> {
  final GetInTheatres getInTheatres;
  InTheatresCubit({required this.getInTheatres})
      : super(LoadingInTheatres());
  void load() async {
      final result = await getInTheatres.getTheatreMovies();
      result.fold((l) => emit(LoadedInTheatres(allMovies: l)),
          (r) => emit(ErrorLoadingInTheatres(message: 'An Error Occured...')));
  }
}
