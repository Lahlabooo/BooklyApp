part of 'similir_books_cubit.dart';

sealed class SimilirBooksState extends Equatable {
  const SimilirBooksState();

  @override
  List<Object> get props => [];
}

final class SimilirBooksInitial extends SimilirBooksState {}

class SimilirBooksLoading extends SimilirBooksState {}

class SimilirBooksFailure extends SimilirBooksState {
  final String errMessage;

  const SimilirBooksFailure(this.errMessage);
}

class SimilirBooksSuccess extends SimilirBooksState {
  final List<BookModel> books;

  const SimilirBooksSuccess(this.books);
}
