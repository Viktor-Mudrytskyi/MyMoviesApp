import 'package:my_movies_app/feature/domain/entities/movie_entity.dart';

class AllMoviesModel extends AllMoviesEntity {
  AllMoviesModel({
    required List<MovieModel> items,
    required String errorMessage,
  }) : super(errorMessage: errorMessage, items: items);

  factory AllMoviesModel.fromJson(Map<String, dynamic> json) {
    final items =
        List.from(json['items']).map((e) => MovieModel.fromJson(e)).toList();
    final errorMessage = json['errorMessage'];
    return AllMoviesModel(items: items, errorMessage: errorMessage);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['items'] = items.map((e) => (e as MovieModel).toJson()).toList();
    data['errorMessage'] = errorMessage;
    return data;
  }
}

class MovieModel extends MovieEntity {
  MovieModel({
    required String id,
    required String title,
    required String fullTitle,
    required String year,
    required String releaseState,
    required String image,
    required String runtimeMins,
    required String runtimeStr,
    required String plot,
    required String contentRating,
    required String imDbRating,
    required String imDbRatingCount,
    required String metacriticRating,
    required String genres,
    required List<GenreModel> genreList,
    required String directors,
    required List<DirectorModel> directorList,
    required String stars,
    required List<StarModel> starList,
  }) : super(
          contentRating: contentRating,
          directorList: directorList,
          directors: directors,
          fullTitle: fullTitle,
          genreList: genreList,
          genres: genres,
          id: id,
          imDbRating: imDbRating,
          imDbRatingCount: imDbRatingCount,
          image: image,
          metacriticRating: metacriticRating,
          plot: plot,
          releaseState: releaseState,
          runtimeMins: runtimeMins,
          runtimeStr: runtimeStr,
          starList: starList,
          stars: stars,
          title: title,
          year: year,
        );

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    final id = json['id'];
    final title = json['title'];
    final fullTitle = json['fullTitle'];
    final year = json['year'];
    final releaseState = json['releaseState'];
    final image = json['image'];
    final runtimeMins = json['runtimeMins'];
    final runtimeStr = json['runtimeStr'];
    final plot = json['plot'];
    final contentRating = json['contentRating'];
    final imDbRating = json['imDbRating'];
    final imDbRatingCount = json['imDbRatingCount'];
    final metacriticRating = json['metacriticRating'];
    final genres = json['genres'];
    final genreList = List.from(json['genreList'])
        .map((e) => GenreModel.fromJson(e))
        .toList();
    final directors = json['directors'];
    final directorList = List.from(json['directorList'])
        .map((e) => DirectorModel.fromJson(e))
        .toList();
    final stars = json['stars'];
    final starList = List.from(json['starList'])
        .map((e) => StarModel.fromJson(e))
        .toList();
    return MovieModel(
      id: id,
      title: title,
      fullTitle: fullTitle,
      year: year,
      releaseState: releaseState,
      image: image,
      runtimeMins: runtimeMins,
      runtimeStr: runtimeStr,
      plot: plot,
      contentRating: contentRating,
      imDbRating: imDbRating,
      imDbRatingCount: imDbRatingCount,
      metacriticRating: metacriticRating,
      genres: genres,
      genreList: genreList,
      directors: directors,
      directorList: directorList,
      stars: stars,
      starList: starList,
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['fullTitle'] = fullTitle;
    data['year'] = year;
    data['releaseState'] = releaseState;
    data['image'] = image;
    data['runtimeMins'] = runtimeMins;
    data['runtimeStr'] = runtimeStr;
    data['plot'] = plot;
    data['contentRating'] = contentRating;
    data['imDbRating'] = imDbRating;
    data['imDbRatingCount'] = imDbRatingCount;
    data['metacriticRating'] = metacriticRating;
    data['genres'] = genres;
    data['genreList'] = genreList.map((e) => (e as GenreModel).toJson()).toList();
    data['directors'] = directors;
    data['directorList'] = directorList.map((e) => (e as GenreModel).toJson()).toList();
    data['stars'] = stars;
    data['starList'] = starList.map((e) => (e as GenreModel).toJson()).toList();
    return data;
  }
}

class GenreModel extends GenreEntity {
  GenreModel({
    required String key,
    required String value,
  }) : super(key: key, value: value);

  factory GenreModel.fromJson(Map<String, dynamic> json) {
    final key = json['key'];
    final value = json['value'];
    return GenreModel(
      key: key,
      value: value,
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['key'] = key;
    data['value'] = value;
    return data;
  }
}

class DirectorModel extends DirectorEntity {
  DirectorModel({
    required String id,
    required String name,
  }) : super(id: id, name: name);

  factory DirectorModel.fromJson(Map<String, dynamic> json) {
    final id = json['id'];
    final name = json['name'];
    return DirectorModel(id: id, name: name);
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}

class StarModel extends StarEntity {
  StarModel({
    required String id,
    required String name,
  }) : super(
          id: id,
          name: name,
        );

  factory StarModel.fromJson(Map<String, dynamic> json) {
    final id = json['id'];
    final name = json['name'];
    return StarModel(
      id: id,
      name: name,
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}
