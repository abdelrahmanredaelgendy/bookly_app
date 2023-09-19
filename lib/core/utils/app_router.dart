import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter
{
 static const String kHomePath="/homeView";
 static const String kDetailsPath="/detailsView";
  static final router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) {
        return const SplashView();
      },
    ),
    GoRoute(
      path: kHomePath,
      builder: (context, state) {
        return const HomeView();
      },
    ),
    GoRoute(
      path: kDetailsPath,
      builder: (context, state) {
        return const BookDetailsView();
      },
    ),
  ]);

}
