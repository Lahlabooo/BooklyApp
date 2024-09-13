import 'package:bookly/constants.dart';
import 'package:bookly/core/utilis/app_routers.dart';
import 'package:bookly/feature/home/presentation/Manager/NewestbooksCubit/NewestBooksCubit.dart';
import 'package:bookly/feature/home/presentation/Manager/featuredBooksCubit/FeaturedBooksCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/utilis/ServiceLocator.dart';
import 'feature/home/data/repos/homeRepoImpl.dart';

void main() {
  runApp(const BooklyApp());
  setupServiceLocator();
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
            ..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewestBooksCubit(getIt.get<HomeRepoImpl>())..fetchFeaturedBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.routers,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
