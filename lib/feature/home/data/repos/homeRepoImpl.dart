import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utilis/Api_Services.dart';
import 'package:bookly/feature/home/data/Models/book_model/book_model.dart';
import 'package:bookly/feature/home/data/repos/homeRepo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServer apiServer;

  HomeRepoImpl(this.apiServer);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiServer.Get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=programming&Sorting =newst');
      List<BookModel> books = [];

      for (var element in data['items']) {
        books.add(BookModel.fromJson(element));
      }
      return right(books);
    } on Exception catch (e) {
      return left(ServicesError());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchNewsetBooks
    throw UnimplementedError();
  }
}
