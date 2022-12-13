class AllMoviesEntity {
  AllMoviesEntity({
    required this.items,
    required this.errorMessage,
  });
  late final List<MovieEntity> items;
  late final String errorMessage;
  
 
}

class MovieEntity {
  MovieEntity({
    required this.id,
    required this.title,
    required this.fullTitle,
    required this.year,
    required this.releaseState,
    required this.image,
    required this.runtimeMins,
    required this.runtimeStr,
    required this.plot,
    required this.contentRating,
    required this.imDbRating,
    required this.imDbRatingCount,
    required this.metacriticRating,
    required this.genres,
    required this.genreList,
    required this.directors,
    required this.directorList,
    required this.stars,
    required this.starList,
  });
  late final String id;
  late final String title;
  late final String fullTitle;
  late final String year;
  late final String releaseState;
  late final String image;
  late final String runtimeMins;
  late final String runtimeStr;
  late final String plot;
  late final String contentRating;
  late final String imDbRating;
  late final String imDbRatingCount;
  late final String metacriticRating;
  late final String genres;
  late final List<GenreEntity> genreList;
  late final String directors;
  late final List<DirectorEntity> directorList;
  late final String stars;
  late final List<StarEntity> starList;
}

class GenreEntity {
  GenreEntity({
    required this.key,
    required this.value,
  });
  late final String key;
  late final String value;
  
}

class DirectorEntity {
  DirectorEntity({
    required this.id,
    required this.name,
  });
  late final String id;
  late final String name;
}

class StarEntity {
  StarEntity({
    required this.id,
    required this.name,
  });
  late final String id;
  late final String name;
  
}