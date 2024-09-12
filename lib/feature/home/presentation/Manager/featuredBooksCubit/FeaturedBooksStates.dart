import 'package:bookly/feature/home/data/Models/book_model/book_model.dart';

class FeaturedBooksStates {}

class FeaturedBooksInitial extends FeaturedBooksStates {}

class FeaturedBooksLoading extends FeaturedBooksStates {}

class FeaturedBooksFailure extends FeaturedBooksStates {
  final String errMessage;

  FeaturedBooksFailure(this.errMessage);
}

class FeaturedBooksSuccess extends FeaturedBooksStates {
  final List<BookModel> books;

  FeaturedBooksSuccess(this.books);
}
