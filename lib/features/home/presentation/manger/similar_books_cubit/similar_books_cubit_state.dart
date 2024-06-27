part of 'similar_books_cubit_cubit.dart';


sealed class SimilarBooksState {}

final class SimilarBooksInitial extends SimilarBooksState {}
final class FetchBookLoading extends SimilarBooksState {}

final class FetchBookSuccess extends SimilarBooksState {
  final List<BookModel> books ;

  FetchBookSuccess( this.books);
}

final class FetchBookFailed extends SimilarBooksState{
  final String message;
  FetchBookFailed(this.message);
}
