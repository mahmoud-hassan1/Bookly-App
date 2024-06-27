part of 'similar_books_cubit_cubit.dart';

sealed class SimilarBooksCubitState {}

final class SimilarBooksCubitInitial extends SimilarBooksCubitState {}
final class FetchBookLoading extends SimilarBooksCubitState {}

final class FetchBookSuccess extends SimilarBooksCubitState {
  final List<BookModel> books ;

  FetchBookSuccess( this.books);
}

final class FetchBookFailed extends SimilarBooksCubitState{
  final String message;
  FetchBookFailed(this.message);
}
