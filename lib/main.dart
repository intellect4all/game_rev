import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_libphonenumber/flutter_libphonenumber.dart';
import 'package:game_rev/src/core/config/navigation/generate_route.dart';
import 'package:game_rev/src/core/config/navigation/navigation.dart';
import 'package:game_rev/src/core/config/theme/theme.dart';
import 'package:game_rev/src/core/constants/app_colors.dart';
import 'package:game_rev/src/features/admin/presentation/admin_bloc.dart';
import 'package:game_rev/src/features/authentication/data/data_source/authentication_manager.dart';
import 'package:game_rev/src/features/authentication/presentation/authentication_bloc.dart';
import 'package:game_rev/src/features/authentication/presentation/login/pages/login_screen.dart';
import 'package:game_rev/src/features/authentication/presentation/onboarding/bloc/onboarding_bloc.dart';
import 'package:game_rev/splash_screen.dart';
import 'package:game_rev/src/features/authentication/presentation/signup/signup_screen.dart';
import 'package:game_rev/src/features/dashboard/presentation/dashboard_bloc/dashboard_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

import 'injection.dart';

Future<void> main() async {
  await initialize();

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  _initPhoneNumberUtil();

  runApp(const MyApp());
}

Future<void> _initPhoneNumberUtil() async {
  await init();
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final StreamSubscription _authStateSubscription;

  final navigator = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
    _startAuthListener();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<OnboardingBloc>(
          create: (context) => getIt<OnboardingBloc>(),
        ),
        BlocProvider<AuthenticationBloc>(
          create: (context) => getIt<AuthenticationBloc>(),
        ),
        BlocProvider<DashboardBloc>(
            create: (context) => getIt<DashboardBloc>()),
        BlocProvider<AdminBloc>(
          create: (context) => getIt<AdminBloc>(),
        )
      ],
      child: MaterialApp(
        title: 'Game Review',

        debugShowCheckedModeBanner: false,
        theme: AppThemes.getTheme(),
        darkTheme: AppThemes.getTheme(themeMode: ThemeMode.dark),
        themeMode: ThemeMode.system,
        home: const SplashScreen(),
        onGenerateRoute: GenerateRoutes.onGenerateRoute,
        navigatorKey: navigator,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _startAuthListener() {
    _authStateSubscription =
        getIt<AuthenticationManager>().authStateStream.listen((user) {
          if (user == null) {
            final context = navigator.currentContext;

            log('User is null');

            if (context != null) {
              Navigation.intentWithClearAllRoutes(
                  context, LoginScreen.routeName);
            }
          }
        });
  }
}
