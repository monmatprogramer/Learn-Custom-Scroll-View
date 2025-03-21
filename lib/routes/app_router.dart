import 'package:go_router/go_router.dart';
import 'package:learn_food_delivery_app/preentations/pages/basic_custom_scroll_view.dart';
import 'package:learn_food_delivery_app/preentations/pages/home_page.dart';
import 'package:learn_food_delivery_app/preentations/widgets/not_found_screen.dart';

class AppRouter {
  static final router = GoRouter(
    initialLocation: '/', // home page
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        name: 'home', // name of this route or this screen
        builder: (context, state) => HomePage(),
      ),
      GoRoute(
        path: '/learnCustomScrollView',
        name: 'lcsv', //lcsv = learn custom scroll view
        builder: (context, state) => BasicCustomScrollView(),
      ),
    ],
    // Handle unknow routes
    errorBuilder:
        (context, state) =>
            NotFoundScreen(message: "Route not found: ${state.uri.path}"),
  );
}
