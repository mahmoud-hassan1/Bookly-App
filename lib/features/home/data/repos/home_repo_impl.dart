import 'package:bookly/core/errors/Failures.dart';
import 'package:bookly/core/utils/api_services.dart';
import 'package:bookly/features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;
  HomeRepoImpl({required this.apiServices});
@override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async{
   try{
     var data=await  apiServices.get("volumes?Filtrering=free-books&q=subject:programming");
     List<BookModel> books=[];
     for (var item in data['items']){
       books.add(BookModel.fromJson(item));
     }
     return right(books);

   }
   catch(e){
      left(ServerFailure());
   }
    throw UnimplementedError();
  }
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewArrivalBooks() {
    throw UnimplementedError();
  }
}