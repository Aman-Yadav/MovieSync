class Movie {
  late int id;
  String title;
  String director;
  String cast;
  int status; // 0 when incomplete, 1 when complete

  Movie(
      {required this.title,
      required this.director,
      required this.cast,
      required this.status});
  Movie.withId(
      {required this.id,
      required this.title,
      required this.director,
      required this.cast,
      required this.status});

  Map<String, dynamic> toMap() {
    final map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['title'] = title;
    map['director'] = director;
    map['cast'] = cast;
    map['status'] = status;

    return map;
  }

  factory Movie.fromMap(Map<String, dynamic> map) {
    return Movie.withId(
      id: map['id'],
      title: map['title'],
      director: map['director'],
      cast: map['cast'],
      status: map['status'],
    );
  }
}
