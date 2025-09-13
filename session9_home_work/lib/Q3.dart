// Create a class Movie with attributes title and rating. In main(), create a list of 4 movies. Print only the movies with a rating above 7.
void main() {
  List<Movie> movies = [
    Movie(title: "no signal", rating: 4.5),
    Movie(title: "dead", rating: 7.6),
    Movie(title: "the nun", rating: 6.5),
    Movie(title: "solve Problem", rating: 8.5),
  ];
  for (var movie in movies) {
    if (movie.rating > 7) {
      print("movie : ${movie.title} , rate : ${movie.rating}");
    }
  }
}

class Movie {
  String title;
  double rating;
  Movie({required this.title, required this.rating});
}
