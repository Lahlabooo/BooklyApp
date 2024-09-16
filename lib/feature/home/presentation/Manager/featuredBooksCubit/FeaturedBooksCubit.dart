import 'package:bookly/feature/home/data/repos/homeRepoImpl.dart';
import 'package:bookly/feature/home/presentation/Manager/featuredBooksCubit/FeaturedBooksStates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksStates> {
  FeaturedBooksCubit(this._homeRepoImpl) : super(FeaturedBooksInitial());

  final HomeRepoImpl _homeRepoImpl;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading(true));

    var result = await _homeRepoImpl.fetchFeaturedBooks();
    result.fold(
      (failure) {
        emit(FeaturedBooksFailure(failure.errMessage));
      },
      (books) {
        emit(FeaturedBooksSuccess(books));
      },
    );
  }
}
