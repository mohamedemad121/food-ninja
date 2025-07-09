import 'package:foodninja/presentation/on_boarding/views/page_view.dart';
import 'package:foodninja/presentation/splash_view/splash_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const konboarding1 = '/onboarding1';
  static const konboarding2 = '/onboarding2';
  static const kpageviewbody = '/pageviewbody';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: kpageviewbody, builder: (context, state) => PageViewBody()),
    ],
  );
}
