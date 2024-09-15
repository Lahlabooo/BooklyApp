import 'package:bookly/feature/home/data/repos/homeRepoImpl.dart';
import 'package:bookly/feature/home/presentation/Manager/NewestbooksCubit/NewestBooksStates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksCubit extends Cubit<NewestBooksStates> {
  NewestBooksCubit(this._homeRepoImpl) : super(NewestBooksInitial());

  final HomeRepoImpl _homeRepoImpl;
  Future<void> fetchNewestdBooks() async {
    emit(NewestBooksLoading());

    var result = await _homeRepoImpl.fetchNewsetBooks();
    result.fold(
      (failure) {
        emit(NewestBooksFailure(failure.errMessage));
      },
      (books) {
        emit(NewestBooksSuccess(books));
      },
    );
  }
}
