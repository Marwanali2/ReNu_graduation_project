import 'package:go_router/go_router.dart';
import 'package:graduation_project/features/clean_up/presentation/views/cleanup_view.dart';
import 'package:graduation_project/features/clean_up/presentation/views/company_details_view.dart';
import 'package:graduation_project/features/clean_up/presentation/views/select_company.dart';
import 'package:graduation_project/features/home/presentation/views/home_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kCleanUp = '/cleanUp';
  static const kSelectCompany = '/selectCompany';
  static const kCompanyDetails = '/companyDetails';

  static final router = GoRouter(routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const CleanUpView(); //const HomeView();
      },
    ),
    GoRoute(
      path: kCleanUp,
      builder: (context, state) {
        return const CleanUpView();
      },
    ),
    GoRoute(
      path: kSelectCompany,
      builder: (context, state) {
        return SelectCompanyView();
      },
    ),
    GoRoute(
      path: kCompanyDetails,
      builder: (context, state) {
        return CompanyDetails();
      },
    ),
  ]);
}
