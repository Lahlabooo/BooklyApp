import 'package:bookly/core/utilis/Api_Services.dart';
import 'package:bookly/feature/Search/data/repos/SearchRepoImp.dart';
import 'package:bookly/feature/home/data/repos/homeRepoImpl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    getIt.get<ApiService>(),
  ));
  getIt.registerSingleton<SearchRepoImp>(SearchRepoImp(
    getIt.get<ApiService>(),
  ));
}
