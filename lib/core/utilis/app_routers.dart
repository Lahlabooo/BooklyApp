import 'package:bookly/feature/Splash/Peresntation/Views/SplashView.dart';
import 'package:bookly/feature/home/presentation/views/BookDetail_view.dart';
import 'package:bookly/feature/home/presentation/views/homeView.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  // static const kBookDetailsView = '/bookDetailsView';
  static const kBookDetailView = '/BookDetailView';
  static final routers = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kBookDetailView,
      builder: (context, state) => const BookDetailView(),
    ),
  ]);
}
