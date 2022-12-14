import 'package:my_movies_app/feature/domain/entities/top_movie_entity.dart';

class AllTopMovieModel extends AllTopMovieEntity {
  @override
  List<Object?> get props => [items, errorMessage];

  @override
  bool? get stringify => true;

  const AllTopMovieModel({
    required String errorMessage,
    required List<TopMovieModel> items,
  }) : super(errorMessage: errorMessage, items: items);

  factory AllTopMovieModel.fromJSON(Map<String, dynamic> json) =>
      AllTopMovieModel(
        errorMessage: json['errorMessage'],
        items: List.from(json['items'])
            .map((e) => TopMovieModel.fromJSON(e))
            .toList(),
      );
  Map<String, dynamic> toJSON() => {
        'errorMessage': errorMessage,
        'items': items.map((e) => (e as TopMovieModel).toJSON()).toList(),
      };
}

class TopMovieModel extends TopMovieEntity {
  @override
  List<Object?> get props => [
        id,
        rank,
        title,
        fullTitle,
        year,
        image,
        crew,
        imDbRating,
        imDbRatingCount,
      ];

  @override
  bool? get stringify => true;

  const TopMovieModel({
    required String id,
    required String rank,
    required String title,
    required String fullTitle,
    required String year,
    required String image,
    required String crew,
    required String imDbRating,
    required String imDbRatingCount,
  }) : super(
          crew: crew,
          id: id,
          fullTitle: fullTitle,
          imDbRating: imDbRating,
          imDbRatingCount: imDbRatingCount,
          image: image,
          rank: rank,
          title: title,
          year: year,
        );
  factory TopMovieModel.fromJSON(Map<String, dynamic> json) {
    return TopMovieModel(
      id: json['id'],
      rank: json['rank'],
      title: json['title'],
      fullTitle: json['fullTitle'],
      year: json['year'],
      image: json['image'],
      crew: json['crew'],
      imDbRating: json['imDbRating'],
      imDbRatingCount: json['imDbRatingCount'],
    );
  }
  Map<String, dynamic> toJSON() => {
        'id': id,
        'rank': rank,
        'title': title,
        'fullTitle': fullTitle,
        'year': year,
        'image': image,
        'crew': crew,
        'imDbRating': imDbRating,
        'imDbRatingCount': imDbRatingCount,
      };
}
