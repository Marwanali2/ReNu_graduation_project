import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/core/helpers/service_locator.dart';
import 'package:graduation_project/core/routing/app_router.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graduation_project/features/antika/data/repos/antika_repo_impl.dart';
import 'package:graduation_project/features/antika/presentation/manger/fav%20cubit/favorites_cubit.dart';
import 'package:graduation_project/features/antika/presentation/manger/show_antika%20cubit/show_antika_cubit.dart';
import 'package:graduation_project/features/antika/presentation/manger/show_camera_cubit/show_camera_cubit.dart';
import 'package:graduation_project/features/antika/presentation/manger/show_coins/show_coins_cubit.dart';
import 'package:graduation_project/features/antika/presentation/manger/show_jewelry_cubit/show_jewelry_cubit.dart';
import 'package:graduation_project/features/auth/presentation/mangers/auth%20cubit/auth_cubit.dart';

void main() {
  setupServiceLocator();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthCubit>(
            create: (context) => AuthCubit(),
          ),
          BlocProvider(
            create: (context) => FavoritesCubit(
              getIt.get<AntikaRepoImpl>()
            )..fetchFavoriteAntika(),
          ),
          BlocProvider(
            create: (context) => AntikaCubit(
             getIt.get<AntikaRepoImpl>()

            ),
          ),
          BlocProvider(
            create: (context) => ShowCameraCubit(
              getIt.get<AntikaRepoImpl>()

            ),
          ),
          BlocProvider(
            create: (context) => ShowJewelryCubit(
           getIt.get<AntikaRepoImpl>()

            ),
          ),
          BlocProvider(
            create: (context) => ShowCoinsCubit(
            getIt.get<AntikaRepoImpl>()

            ),
          ),
        ],
        child: MaterialApp.router(
          routerConfig: AppRouter.router,
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}
