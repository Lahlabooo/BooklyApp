import 'package:bloc/bloc.dart';
import 'package:bookly/feature/home/data/Models/book_model/book_model.dart';
import 'package:bookly/feature/home/data/repos/homeRepoImpl.dart';
import 'package:equatable/equatable.dart';

part 'similir_books_state.dart';

class SimilirBooksCubit extends Cubit<SimilirBooksState> {
  SimilirBooksCubit(this._homeRepoImpl) : super(SimilirBooksInitial());

  final HomeRepoImpl _homeRepoImpl;
  Future<void> fetchSimiliarBooks({required String category}) async {
    emit(SimilirBooksLoading());

    var result = await _homeRepoImpl.fetchSimiliarBooks(category: category);
    result.fold(
      (failure) {
        emit(SimilirBooksFailure(failure.errMessage));
      },
      (books) {
        emit(SimilirBooksSuccess(books));
      },
    );
  }
}
