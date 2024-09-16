import 'package:bookly/core/Models/book_model/book_model.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utilis/Api_Services.dart';
import 'package:bookly/feature/Search/data/repos/SearchRepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImp implements SearchRepo {
  final ApiService apiServer;

  SearchRepoImp(this.apiServer);
  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks(
      {required String value}) async {
    try {
      var data = await apiServer.Get(
          endPoint: 'volumes?Filtering=free-ebooks&q=$value');
      List<BookModel> books = [];

      for (var element in data['items']) {
        books.add(BookModel.fromJson(element));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServicesError.fromDioExeption(e));
      }
      return left(ServicesError(e.toString()));
    }
  }
}
