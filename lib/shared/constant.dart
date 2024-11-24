class Constant {
  static const String assetToken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4MzMyMjM2MGJiNWQzMWZhMzc3NjVkOTc4MzI0NjIyMyIsInN1YiI6IjYxNjNmOGNhOWQ1OTJjMDA4OTg3ZGFiZiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.IKbInOuY3_sO-Iv8EndphylgIa80r7Nq-LHtWXbFh3Q';
  static const String baseUrl = 'https://api.themoviedb.org/3/';
  static const String imagePlaceholder = 'assets/images/placeholder.jpeg';
  static String baseImageUrl(String size) =>
      'https://image.tmdb.org/t/p/w$size';

  static const String favoriteKey = 'favoriteKey';
  static const String upcomingKey = 'upcomingKey';
  static const String nowPlayingKey = 'nowPlayingKey';
}
