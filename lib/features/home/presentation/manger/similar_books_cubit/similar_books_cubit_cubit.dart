import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';


part 'similar_books_cubit_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.repo) : super(SimilarBooksInitial());
   final HomeRepoImpl repo;
   fetchSimilarBooks(String category)async{
    emit(FetchBookLoading());
    var res = await repo.fetchSimillarBooks(category);
    res.fold(
      (failure) => emit(FetchBookFailed(failure.errorMessage)),
       (books) =>emit(FetchBookSuccess(books)));
  }
}
