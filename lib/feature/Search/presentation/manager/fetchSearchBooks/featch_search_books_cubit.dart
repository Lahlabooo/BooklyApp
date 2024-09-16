import 'package:bloc/bloc.dart';
import 'package:bookly/core/Models/book_model/book_model.dart';
import 'package:bookly/feature/Search/data/repos/SearchRepoImp.dart';
import 'package:equatable/equatable.dart';

part 'featch_search_books_state.dart';

class FeatchSearchBooksCubit extends Cubit<FeatchSearchBooksState> {
  FeatchSearchBooksCubit(this._serchRepoIMp)
      : super(FeatchSearchBooksInitial());
  final SearchRepoImp _serchRepoIMp;
  List<BookModel> searchbooks = [];
  Future<void> fetchSearchBooks({required String value}) async {
    emit(FeatchSearchBooksLoading());

    var result = await _serchRepoIMp.fetchSearchBooks(value: value);
    result.fold(
      (failure) {
        emit(FeatchSearchBooksFailure(failure.errMessage));
      },
      (books) {
        emit(FeatchSearchBooksSuccess(books));
        searchbooks = books;
      },
    );
  }
}
