import 'package:foodninja/presentation/on_boarding/views/page_view.dart';
import 'package:foodninja/presentation/on_boarding/widgets/on_boarding2.dart';
import 'package:foodninja/presentation/paymentview/views/payment_view.dart';
import 'package:foodninja/presentation/set_location/views/set_location.dart';
import 'package:foodninja/presentation/sign_in/views/sign_in_view.dart';
import 'package:foodninja/presentation/sign_up/view/sign_up.dart';
import 'package:foodninja/presentation/sing_in_process/views/sign_in_process.dart';
import 'package:foodninja/presentation/splash_view/splash_view.dart';
import 'package:foodninja/presentation/upload_perview/views/upload_perview.dart';
import 'package:foodninja/presentation/uploadphoto1/views/upload_photo1.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const konboarding1 = '/onboarding1';
  static const konboarding2 = '/onboarding2';
  static const kpageviewbody = '/pageviewbody';
  static const ksignup = '/signup';
  static const ksignin = '/signin';
  static const ksigninprocess = '/signinprocess';
  static const kpaymentview = '/paymentview';
  static const kuploadphoto1 = '/uploadphoto1';
  static const kuploadpreview = '/uploadpreview';
   static const ksetlocation = '/setlocation';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: konboarding2, builder: (context, state) => OnBoarding2()),
      GoRoute(path: kpageviewbody, builder: (context, state) => PageViewBody()),
      GoRoute(path: ksignup, builder: (context, state) => SignUp()),
      GoRoute(path: ksignin, builder: (context, state) => SignInView()),
      GoRoute(
        path: ksigninprocess,
        builder: (context, state) => SignInProcess(),
      ),
      GoRoute(path: kpaymentview, builder: (context, state) => PaymentView()),
      GoRoute(path: kuploadphoto1, builder: (context, state) => UploadPhoto1()),
      GoRoute(
        path: kuploadpreview,
        builder: (context, state) => UploadPerview(),
      ),
      GoRoute(path: ksetlocation, builder: (context, state) => SetLocation()),
    ],
  );
}
