import 'package:bookly/core/Models/book_model/book_model.dart';

class FeaturedBooksStates {}

class FeaturedBooksInitial extends FeaturedBooksStates {}

class FeaturedBooksLoading extends FeaturedBooksStates {
  final bool isEnabeld;

  FeaturedBooksLoading(this.isEnabeld);
}

class FeaturedBooksFailure extends FeaturedBooksStates {
  final String errMessage;

  FeaturedBooksFailure(this.errMessage);
}

class FeaturedBooksSuccess extends FeaturedBooksStates {
  final List<BookModel> books;

  FeaturedBooksSuccess(this.books);
}
