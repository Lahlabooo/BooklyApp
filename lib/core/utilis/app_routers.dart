import 'package:bookly/feature/Search/presentation/views/Search_View.dart';
import 'package:bookly/feature/Splash/Peresntation/Views/SplashView.dart';
import 'package:bookly/feature/home/presentation/Manager/SimiliarBooksCubit/similir_books_cubit.dart';
import 'package:bookly/feature/home/presentation/views/BookDetail_view.dart';
import 'package:bookly/feature/home/presentation/views/homeView.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../feature/home/data/repos/homeRepoImpl.dart';
import 'ServiceLocator.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailView = '/BookDetailView';
  static const kSearchView = '/SearchView';
  static final routers = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, state) => const SearchView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kBookDetailView,
      builder: (context, state) => BlocProvider(
          create: (context) => SimilirBooksCubit(getIt.get<HomeRepoImpl>()),
          child: const BookDetailView()),
    ),
  ]);
}
