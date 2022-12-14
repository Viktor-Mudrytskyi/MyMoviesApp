import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_movies_app/feature/domain/entities/movie_entity.dart';
import 'package:my_movies_app/feature/presentation/pages/details_page.dart';
import 'package:my_movies_app/feature/presentation/pages/home_page.dart';
import 'package:my_movies_app/locator_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  init();
  runApp(MaterialApp(
    initialRoute: '/',
    onGenerateRoute: (settings) {
      switch (settings.name) {
        case '/home_page':
          return MaterialPageRoute(builder: ((context) => const HomePage()));
        case '/':
          return MaterialPageRoute(builder: ((context) => const HomePage()));
        case '/details_page':
          return MaterialPageRoute(
            builder: ((context) => DetailsPage(
                  movie: (settings.arguments as MovieEntity),
                )),
          );
        default:
          throw Exception('Page route is invalid');
      }
    },
    theme: ThemeData(
      primaryColor: Colors.grey.shade900,
      primarySwatch: Colors.grey,
      scaffoldBackgroundColor: Colors.black,
      textTheme: GoogleFonts.crimsonProTextTheme(
        const TextTheme(
          titleLarge: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
          labelLarge: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          titleSmall: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          bodySmall: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
          bodyMedium: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    ),
  ));
}
