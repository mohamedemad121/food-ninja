import 'package:foodninja/presentation/on_boarding/views/page_view.dart';
import 'package:foodninja/presentation/on_boarding/widgets/on_boarding2.dart';
import 'package:foodninja/presentation/sign_in/views/sign_in_view.dart';
import 'package:foodninja/presentation/sign_up/view/sign_up.dart';
import 'package:foodninja/presentation/splash_view/splash_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const konboarding1 = '/onboarding1';
  static const konboarding2 = '/onboarding2';
  static const kpageviewbody = '/pageviewbody';
  static const ksignup = '/signup';
  static const ksignin = '/signin';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: konboarding2, builder: (context, state) => OnBoarding2()),
      GoRoute(path: kpageviewbody, builder: (context, state) => PageViewBody()),
      GoRoute(path: ksignup, builder: (context, state) => SignUp()),
      GoRoute(path: ksignin, builder: (context, state) => SignInView()),
    ],
  );
}
