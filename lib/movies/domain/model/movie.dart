class Movie {
  String id;
  String name;
  String shortDesc;
  String poster;
  double rating;
  String logo;
  String cover;
  int viewsPerWeek;
  List<String> genreNames;
  bool isHero;
  bool isTop10;

  Movie({
    required this.id,
    required this.name,
    required this.shortDesc,
    required this.poster,
    required this.rating,
    required this.logo,
    required this.cover,
    required this.viewsPerWeek,
    required this.genreNames,
    required this.isHero,
    required this.isTop10,
  });
}
