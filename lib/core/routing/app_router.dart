import 'package:go_router/go_router.dart';
import 'package:graduation_project/features/auth/presentation/views/Log_or_sign_view.dart';
import 'package:graduation_project/features/splash/presentaion/view/splash_view.dart';

abstract class AppRouter {
  static const kAuth = '/auth';
 static final router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kAuth,
        builder: (context, state) {
          return const LogOrSignView();
        },
      ),
    ]
 );
      
}