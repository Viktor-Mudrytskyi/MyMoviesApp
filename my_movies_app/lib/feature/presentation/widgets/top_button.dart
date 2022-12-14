import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movies_app/feature/presentation/bloc/top_movie_event.dart';
import 'package:my_movies_app/feature/presentation/bloc/top_movies_bloc.dart';

class TopButton extends StatefulWidget {
  const TopButton({super.key});

  @override
  State<TopButton> createState() => _TopButtonState();
}

class _TopButtonState extends State<TopButton> {
  bool isShown = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            isShown = !isShown;
          });
          context.read<TopMoviesBloc>().add(ButtonPressed());
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).primaryColor,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0))),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Top 250',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            isShown
                ? const Icon(
                    Icons.arrow_drop_up_outlined,
                    color: Colors.white,
                  )
                : const Icon(
                    Icons.arrow_drop_down_outlined,
                    color: Colors.white,
                  ),
          ],
        ),
      ),
    );
  }
}
