import 'package:equatable/equatable.dart';

class AllTopMovieEntity implements Equatable {
  @override
  List<Object?> get props => [items, errorMessage];

  @override
  bool? get stringify => true;

  final List<TopMovieEntity> items;
  final String errorMessage;

  const AllTopMovieEntity({required this.errorMessage, required this.items});
}

class TopMovieEntity implements Equatable {
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

  final String id;
  final String rank;
  final String title;
  final String fullTitle;
  final String year;
  final String image;
  final String crew;
  final String imDbRating;
  final String imDbRatingCount;
  const TopMovieEntity({
    required this.id,
    required this.rank,
    required this.title,
    required this.fullTitle,
    required this.year,
    required this.image,
    required this.crew,
    required this.imDbRating,
    required this.imDbRatingCount,
  });
}
