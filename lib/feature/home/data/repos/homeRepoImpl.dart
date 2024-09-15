import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utilis/Api_Services.dart';
import 'package:bookly/feature/home/data/Models/book_model/book_model.dart';
import 'package:bookly/feature/home/data/repos/homeRepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiServer;

  HomeRepoImpl(this.apiServer);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async {
    try {
      var data = await apiServer.Get(
          endPoint: 'volumes?Filtering=free-ebooks&q=Stories&Sorting=newest');
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

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiServer.Get(
          endPoint: 'volumes?Filtering=free-ebooks&q=Stories');
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

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimiliarBooks() async {
    try {
      var data = await apiServer.Get(
          endPoint: 'volumes?Filtering=free-ebooks&q=Stories&Sorting=newest');
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
