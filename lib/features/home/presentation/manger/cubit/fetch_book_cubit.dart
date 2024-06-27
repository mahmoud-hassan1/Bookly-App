import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/Models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/home/domain/repos/home_repo.dart';

import 'package:meta/meta.dart';
part 'fetch_book_state.dart';

class FetchBookCubit extends Cubit<FetchBookState> {
  FetchBookCubit(this.repo) : super(FetchBookInitial());
 final HomeRepoImpl repo;
  fetchBestSeller(){
  }
}
