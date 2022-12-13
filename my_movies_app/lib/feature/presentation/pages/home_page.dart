import 'package:my_movies_app/core/network/network_info.dart';
import 'package:my_movies_app/feature/presentation/widgets/home_page_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movies_app/feature/domain/use_cases/get_in_theatres.dart';
import 'package:my_movies_app/feature/presentation/cubit/theatre_movies_cubit.dart';
import 'package:my_movies_app/feature/presentation/cubit/theatre_movies_state.dart';
import 'package:my_movies_app/locator_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => InTheatresCubit(
          getInTheatres: sl<GetInTheatres>(), networkInfo: sl<ANetworkInfo>())
        ..load(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(
            'Currently airing',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  BlocBuilder<InTheatresCubit, AInTheatres>(
                    builder: ((context, state) {
                      if (state is LoadedInTheatres) {
                        return InTheatresList(movies: state.allMovies);
                      } else if (state is LoadingInTheatres) {
                        return const SizedBox(
                          width: double.infinity,
                          height: 250,
                          child: Center(
                            child:
                                CircularProgressIndicator(color: Colors.white),
                          ),
                        );
                      } else if (state is ErrorLoadingInTheatres) {
                        return SizedBox(
                          width: double.infinity,
                          height: 250,
                          child: Center(
                              child: Text(
                            state.message,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(fontSize: 25),
                          )),
                        );
                      } else {
                        throw Exception('Unknown state');
                      }
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
