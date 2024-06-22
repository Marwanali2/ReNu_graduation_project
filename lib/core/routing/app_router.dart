import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:graduation_project/core/helpers/service_locator.dart';
import 'package:graduation_project/features/antika/data/models/antika_model.dart';
import 'package:graduation_project/features/antika/data/repos/antika_repo_impl.dart';
import 'package:graduation_project/features/antika/presentation/manger/details%20cubit/details_cubit.dart';
import 'package:graduation_project/features/antika/presentation/views/widgets/listview_of_bidders_of_antika.dart';
import 'package:graduation_project/features/clean_up/presentation/views/cleanup_check_view.dart';
import 'package:graduation_project/features/clean_up/presentation/views/cleanup_view.dart';
import 'package:graduation_project/features/clean_up/presentation/views/company_details_view.dart';
import 'package:graduation_project/features/clean_up/presentation/views/custom_google_map.dart';
import 'package:graduation_project/features/clean_up/presentation/views/descripe_offers.dart';
import 'package:graduation_project/features/clean_up/presentation/views/fav_companies.dart';
import 'package:graduation_project/features/clean_up/presentation/views/select_company.dart';
import 'package:graduation_project/features/home/presentation/views/drawer_views/my_orders_view.dart';
import 'package:graduation_project/features/home/presentation/views/drawer_views/settings_view.dart';
import 'package:graduation_project/features/home/presentation/views/eco_tips_view.dart';
import 'package:graduation_project/features/home/presentation/views/home_view.dart';
import 'package:graduation_project/features/home/presentation/views/last_cleanup_view.dart';
import 'package:graduation_project/features/home/presentation/views/notifications_view.dart';
import 'package:graduation_project/features/home/presentation/views/recent_recycling_view.dart';
import 'package:graduation_project/features/antika/presentation/views/antica_tab_bar_controller.dart';
import 'package:graduation_project/features/antika/presentation/views/details_of_antica_view.dart';
import 'package:graduation_project/features/antika/presentation/views/widgets/bidders_bottom_sheet.dart';
import 'package:graduation_project/features/auth/presentation/views/log_or_sign_view.dart';
import 'package:graduation_project/features/auth/presentation/views/forget_password_view.dart';
import 'package:graduation_project/features/auth/presentation/views/login_view.dart';
import 'package:graduation_project/features/auth/presentation/views/reset_password_view.dart';
import 'package:graduation_project/features/auth/presentation/views/sign_up_view.dart';
import 'package:graduation_project/features/auth/presentation/views/success_view.dart';
import 'package:graduation_project/features/auth/presentation/views/verify_email_view.dart';
import 'package:graduation_project/features/splash/presentaion/view/splash-view2.dart';
import 'package:graduation_project/features/splash/presentaion/view/splash_view1.dart';
import 'package:graduation_project/features/splash/presentaion/view/splash_view3.dart';

abstract class AppRouter {
  // AppDrawer
  static const kHome = '/home';
  static const kMyOrders = '/myorders';
  static const kSettings = '/settings';
  //
  static const kCleanUp = '/cleanUp';
  static const krecentRecycling = '/recentRecycling';
  static const kSelectCompany = '/selectCompany';
  static const kCompanyDetails = '/companyDetails';
  static const kDescripeOffers = '/descripeOffers';
  static const kFavCompanies = '/favCompanies';
  static const kCleanuUpCheck = '/cleanuUpCheck';
  static const kEcoTips = '/ecoTips';
  static const kNotifications = '/notifications';
  static const kGoogleMaps = '/googleMaps';
  static const kLastCleanUp = '/lastCleanUp';
  static const splash2 = '/splash2';
  static const splash3 = '/splash3';
  static const kLogOrSign = '/logorsign';
  static const kSignUp = '/signup';
  static const kLogIn = '/login';
  static const kForgetPassword = '/forget';
  static const kVerifyEmail = '/verify';
  static const kResetPassword = '/reset';
  static const kSuccess = '/success';
  static const kAnticaTabbar = '/anticatabbar';
  static const kDetailsOfAntica = '/detailsofantica';
  static const kBidderstoDetails = '/bidderstodetails';
  static const kbottomSheet = '/bottomsheet';
  static const kRecyclingTabBar = '/recyclingtabbar';
  static final router = GoRouter(routes: <RouteBase>[
    GoRoute(
      path: kHome,
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
        return const SelectCompanyView(
          placemarks: [],
        );
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
        return const CompanyDetailsView();
      },
    ),
    GoRoute(
      path: kDescripeOffers,
      builder: (context, state) {
        return const DescripeOffers();
      },
    ),
    GoRoute(
      path: kNotifications,
      builder: (context, state) {
        return const NotificationsView();
      },
    ),
    GoRoute(
      path: kFavCompanies,
      builder: (context, state) {
        return const FavCompanies();
      },
    ),
    GoRoute(
      path: kEcoTips,
      builder: (context, state) {
        return const EcoTipsView();
      },
    ),
    GoRoute(
      path: kCleanuUpCheck,
      builder: (context, state) {
        return CleanupCheckView(
          selectedEndDate: DateTime.now(),
          selectedStartDate: DateTime.now(),
        );
      },
    ),
    GoRoute(
      path: kGoogleMaps,
      builder: (context, state) {
        return const CustomGoogleMap(
          isShowCompany: false,
        );
      },
    ),
    GoRoute(
      path: kLastCleanUp,
      builder: (context, state) {
        return const LastCleanUpView();
      },
    ),
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const SplashView();
      },
    ),
    GoRoute(
      path: splash2,
      builder: (context, state) {
        return const SplashView2();
      },
    ),
    GoRoute(
      path: splash3,
      builder: (context, state) {
        return const SplashView3();
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
      builder :(context,state){
        final details = state.extra as AntikaModel;
            return DetailsOfAnticaView(antikaModel: details);
      }
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
    GoRoute(
      path: kMyOrders,
      builder: (context, state) {
        return const MyOrdersView();
      },
    ),
    GoRoute(
      path: kSettings,
      builder: (context, state) {
        return const SettingsView();
      },
    ),
  ]);
}
