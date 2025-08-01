import 'package:foodninja/presentation/call_ringing/views/call_ringing.dart';
import 'package:foodninja/presentation/chat_deatils/views/chat_deatils.dart';
import 'package:foodninja/presentation/explore_menu/explore_menu.dart';
import 'package:foodninja/presentation/explore_resturant/views/explore_resturant.dart';
import 'package:foodninja/presentation/filter/view/filter.dart';
import 'package:foodninja/presentation/finish_order/views/finish_order.dart';
import 'package:foodninja/presentation/navigation_bar/navigation_bar.dart';
import 'package:foodninja/presentation/notificion_success/notifiction_success.dart';
import 'package:foodninja/presentation/on_boarding/views/page_view.dart';
import 'package:foodninja/presentation/on_boarding/widgets/on_boarding2.dart';
import 'package:foodninja/presentation/password/password.dart';
import 'package:foodninja/presentation/paymentview/views/payment_view.dart';
import 'package:foodninja/presentation/set_location/views/set_location.dart';
import 'package:foodninja/presentation/sign_in/views/sign_in_view.dart';
import 'package:foodninja/presentation/sign_up/view/sign_up.dart';
import 'package:foodninja/presentation/sign_up_success/views/sign_up_notifiction.dart';
import 'package:foodninja/presentation/sing_in_process/views/sign_in_process.dart';
import 'package:foodninja/presentation/splash_view/splash_view.dart';
import 'package:foodninja/presentation/uploadphoto1/views/upload_photo1.dart';
import 'package:foodninja/presentation/verifiction_code/views/verifiction_code.dart';
import 'package:foodninja/presentation/via_method/views/via_method.dart';
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
  static const ksignupnotifiction = '/signupnotifiction';
  static const kverifictioncode = '/verifictioncode';
  static const kviamethod = '/viamethod';
  static const kpassword = '/password';
  static const kNotifictionSuccess = '/NotifictionSuccess';
  static const knavigationbar = '/navigationbar';
  static const kexploreresturant = '/exploreresturant';
  static const kfilter = '/filter';
  static const kexploremenu = '/exploremenu';
  static const kchatdeatils = '/chatdeatils';
  static const kcallringing = '/callringing';
   static const kfinishorder = '/finishorder';
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

      GoRoute(path: ksetlocation, builder: (context, state) => SetLocation()),
      GoRoute(
        path: ksignupnotifiction,
        builder: (context, state) => SignUpNotifiction(),
      ),
      GoRoute(
        path: kverifictioncode,
        builder: (context, state) => VerifictionCode(),
      ),
      GoRoute(path: kviamethod, builder: (context, state) => ViaMethod()),
      GoRoute(path: kpassword, builder: (context, state) => Password()),
      GoRoute(
        path: kNotifictionSuccess,
        builder: (context, state) => NotifictionSuccess(),
      ),
      GoRoute(path: knavigationbar, builder: (context, state) => NavBar()),
      GoRoute(
        path: kexploreresturant,
        builder: (context, state) => ExploreResturant(),
      ),
      GoRoute(path: kfilter, builder: (context, state) => FilterSearch()),
      GoRoute(path: kexploremenu, builder: (context, state) => ExploreMenu()),
      GoRoute(path: kchatdeatils, builder: (context, state) => ChatDeatils()),
      GoRoute(path: kcallringing, builder: (context, state) => CallRinging()),
        GoRoute(path: kfinishorder, builder: (context, state) => FinishOrder()),
    ],
  );
}
