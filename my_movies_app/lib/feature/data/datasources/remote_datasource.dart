import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart'as http;
import 'package:my_movies_app/feature/data/models/movie_model.dart';
import 'package:my_movies_app/feature/domain/entities/movie_entity.dart';

abstract class ARemoteDatasource{
  Future<AllMoviesEntity> getTheatreMovies();
}


class RemoteDatasource implements ARemoteDatasource{
  @override
  Future<AllMoviesEntity> getTheatreMovies()async {
   final response = await http
        .get(Uri.parse('https://imdb-api.com/en/API/InTheaters/k_9e0j20cd'));
    if(response.statusCode==200){
      log('Data Fetched');
      return AllMoviesModel.fromJson(jsonDecode(response.body));
    }else{
      throw Exception('Fetch failed');
    }
  }

}