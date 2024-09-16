part of 'featch_search_books_cubit.dart';

sealed class FeatchSearchBooksState extends Equatable {
  const FeatchSearchBooksState();

  @override
  List<Object> get props => [];
}

final class FeatchSearchBooksInitial extends FeatchSearchBooksState {}

class FeatchSearchBooksLoading extends FeatchSearchBooksState {}

class FeatchSearchBooksFailure extends FeatchSearchBooksState {
  final String errMessage;

  const FeatchSearchBooksFailure(this.errMessage);
}

class FeatchSearchBooksSuccess extends FeatchSearchBooksState {
  final List<BookModel> books;

  const FeatchSearchBooksSuccess(this.books);
}
