import 'package:flt1/screens/details_screen.dart';
import 'package:flt1/screens/home_screen.dart';
import 'package:go_router/go_router.dart';

class Routing {
  //lister les routes

  static GoRouter getRoutes() {
    return GoRouter(routes: [
      GoRoute(
          path: '/',
          name: 'home',
          builder: (context, state) => const HomeScreen()),
      GoRoute(
          path: '/details',
          name: 'details',
          builder: (context, state) => const DetailsScreen())
    ]); //Gorouter
  }
}
