import 'package:bookly/core/errors/Failures.dart';
import 'package:bookly/features/home/data/Models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo{
  Future<Either<Failure,List<BookModel>>>  fetchBestSellerBooks();
  Future<Either<Failure,List<BookModel>>>  fetchNewArrivalBooks();
}