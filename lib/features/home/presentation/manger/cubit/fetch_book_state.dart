part of 'fetch_book_cubit.dart';

@immutable
sealed class FetchBookState {}

final class FetchBookInitial extends FetchBookState {}


final class FetchBookLoading extends FetchBookState {}

final class FetchBookSuccess extends FetchBookState {
  final List<BookModel> books ;

  FetchBookSuccess( this.books);
}

final class FetchBookFailed extends FetchBookState{
  final String message;
  FetchBookFailed(this.message);
}