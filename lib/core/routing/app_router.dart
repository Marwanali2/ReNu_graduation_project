import 'package:go_router/go_router.dart';
import 'package:graduation_project/features/clean_up/presentation/views/cleanup_check_view.dart';
import 'package:graduation_project/features/clean_up/presentation/views/cleanup_view.dart';
import 'package:graduation_project/features/clean_up/presentation/views/company_details_view.dart';
import 'package:graduation_project/features/clean_up/presentation/views/descripe_offers.dart';
import 'package:graduation_project/features/clean_up/presentation/views/fav_companies.dart';
import 'package:graduation_project/features/clean_up/presentation/views/select_company.dart';
import 'package:graduation_project/features/home/presentation/views/home_view.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/eco_tips.dart';
import 'package:graduation_project/features/home/presentation/views/widgets/recent_recycling.dart';

abstract class AppRouter {
  static const kHomeView = '/';
  static const kCleanUp = '/cleanUp';
  static const krecentRecycling = '/recentRecycling';
  static const kSelectCompany = '/selectCompany';
  static const kCompanyDetails = '/companyDetails';
  static const kDescripeOffers = '/descripeOffers';
  static const kFavCompanies = '/favCompanies';
  static const kCleanuUpCheck = '/cleanuUpCheck';
  static const kEcoTips = '/ecoTips';

  static final router = GoRouter(routes: <RouteBase>[
    GoRoute(
      path: kHomeView,
      builder: (context, state) {
        return HomeView(); //CleanupCheckView(); //const CompanyDetails(); // CompanyDetails(); // const CleanUpView(); //const HomeView();
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
      path: krecentRecycling,
      builder: (context, state) {
        return const RecentRecyclingView();
      },
    ),
    GoRoute(
      path: kCompanyDetails,
      builder: (context, state) {
        return CompanyDetails();
      },
    ),
    GoRoute(
      path: kDescripeOffers,
      builder: (context, state) {
        return DescripeOffers();
      },
    ),
    GoRoute(
      path: kFavCompanies,
      builder: (context, state) {
        return FavCompanies();
      },
    ),
    GoRoute(
      path: kEcoTips,
      builder: (context, state) {
        return EcoTipsView();
      },
    ),
    GoRoute(
      path: kCleanuUpCheck,
      builder: (context, state) {
        return CleanupCheckView();
      },
    ),
  ]);
}
