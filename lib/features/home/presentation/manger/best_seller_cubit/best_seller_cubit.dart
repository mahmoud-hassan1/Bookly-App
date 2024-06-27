import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';

part 'best_seller_state.dart';

class BestSellerCubit extends Cubit<BestSellerState> {
  BestSellerCubit(this.repo) : super(FetchBookInitial());
 final HomeRepoImpl repo;
  fetchBestSeller()async{
    emit(FetchBookLoading());
    var res = await repo.fetchBestSellerBooks();
    res.fold(
      (failure) => emit(FetchBookFailed(failure.errorMessage)),
       (books) =>emit(FetchBookSuccess(books)));
  }
  
}
