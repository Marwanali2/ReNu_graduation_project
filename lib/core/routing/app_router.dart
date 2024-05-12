import 'package:go_router/go_router.dart';
import 'package:graduation_project/features/antica/presentation/views/antica_tab_bar_controller.dart';
import 'package:graduation_project/features/antica/presentation/views/details_of_antica_view.dart';
import 'package:graduation_project/features/antica/presentation/views/widgets/bidders_bottom_sheet.dart';
import 'package:graduation_project/features/auth/presentation/views/log_or_sign_view.dart';
import 'package:graduation_project/features/auth/presentation/views/forget_password_view.dart';
import 'package:graduation_project/features/auth/presentation/views/login_view.dart';
import 'package:graduation_project/features/auth/presentation/views/reset_password_view.dart';
import 'package:graduation_project/features/auth/presentation/views/sign_up_view.dart';
import 'package:graduation_project/features/auth/presentation/views/success_view.dart';
import 'package:graduation_project/features/auth/presentation/views/verify_email_view.dart';
import 'package:graduation_project/features/splash/presentaion/view/splash_view.dart';

abstract class AppRouter {
  static const kLogOrSign = '/logorsign';
  static const kSignUp = '/signup';
  static const kLogIn = '/login';
  static const kForgetPassword = '/forget';
  static const kVerifyEmail = '/verify';
  static const kResetPassword = '/reset';
  static const kSuccess = '/success';
  static const kAnticaTabbar = '/anticatabbar';
  static const kDetailsOfAntica = '/detailsofantica';
  static const kbottomSheet='/bottomsheet';
  static const kRecyclingTabBar='/recyclingtabbar';
 static final router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kLogOrSign,
        builder: (context, state) {
          return const LogOrSignView();
        },
      ),
       GoRoute(
        path: kSignUp,
        builder: (context, state) {
          return const SignUpView();
        },
      ),
      GoRoute(
        path: kLogIn,
        builder: (context, state) {
          return const LogInView();
        },
      ),
       GoRoute(
        path: kForgetPassword,
        builder: (context, state) {
          return const ForgetPaaswordView();
        },
      ),
       GoRoute(
        path: kVerifyEmail,
        builder: (context, state) {
          return const VerifyEmailView();
        },
      ),
      GoRoute(
        path: kResetPassword,
        builder: (context, state) {
          return const ResetPasswordView();
        },
      ),
        GoRoute(
        path: kSuccess,
        builder: (context, state) {
          return const SuccessView();
        },
      ),
        GoRoute(
        path: kAnticaTabbar,
        builder: (context, state) {
          return const AnticaTabBar();
        },
      ),
      GoRoute(
        path: kDetailsOfAntica,
        builder: (context, state) {
          return const DetailsOfAnticaView();
        },
      ),
      GoRoute(
        path: kbottomSheet,
        builder: (context, state) {
          return const BiddersBottomSheet();
        },
      ),
      // GoRoute(
      //   path: kRecyclingTabBar,
      //   builder: (context, state) {
      //     return const RecyclingTabBar();
      //   },
      // ),
    ]
 );
      
}