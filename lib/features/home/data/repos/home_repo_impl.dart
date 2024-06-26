import 'package:bookly/core/errors/Failures.dart';
import 'package:bookly/features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
@override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
 
    throw UnimplementedError();
  }
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewArrivalBooks() {
    throw UnimplementedError();
  }
}