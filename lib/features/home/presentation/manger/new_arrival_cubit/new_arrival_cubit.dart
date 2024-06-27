import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
part 'new_arrival_state.dart';

class NewArrivalCubit extends Cubit<NewArrivalState> {
  NewArrivalCubit(this.repo) : super(FetchBookInitial());
   final HomeRepoImpl repo;
   fetchNewArrivalBooks()async{
    emit(FetchBookLoading());
    var res = await repo.fetchBestSellerBooks();
    res.fold(
      (failure) => emit(FetchBookFailed(failure.errorMessage)),
       (books) =>emit(FetchBookSuccess(books)));
  }
}
