import 'package:bookly/feature/home/data/Models/book_model/book_model.dart';

class NewestBooksStates {}

class NewestBooksInitial extends NewestBooksStates {}

class NewestBooksLoading extends NewestBooksStates {}

class NewestBooksFailure extends NewestBooksStates {
  final String errMessage;

  NewestBooksFailure(this.errMessage);
}

class NewestBooksSuccess extends NewestBooksStates {
  final List<BookModel> books;

  NewestBooksSuccess(this.books);
}
