part of 'new_arrival_cubit.dart';

sealed class NewArrivalState {}

final class FetchBookInitial extends NewArrivalState {}


final class FetchBookLoading extends NewArrivalState {}

final class FetchBookSuccess extends NewArrivalState {
  final List<BookModel> books ;

  FetchBookSuccess( this.books);
}

final class FetchBookFailed extends NewArrivalState{
  final String message;
  FetchBookFailed(this.message);
}