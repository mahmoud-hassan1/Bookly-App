part of 'best_seller_cubit.dart';

sealed class BestSellerState {}

final class FetchBookInitial extends BestSellerState {}


final class FetchBookLoading extends BestSellerState {}

final class FetchBookSuccess extends BestSellerState {
  final List<BookModel> books ;

  FetchBookSuccess( this.books);
}

final class FetchBookFailed extends BestSellerState{
  final String message;
  FetchBookFailed(this.message);
}