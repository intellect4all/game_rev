import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_rev/src/features/admin/presentation/screens/admin_screen.dart';
import 'package:game_rev/src/features/dashboard/presentation/home_screen.dart';
import 'package:geolocator/geolocator.dart';

import 'src/core/config/navigation/navigation.dart';
import 'src/core/constants/styles.dart';
import 'src/features/authentication/presentation/login/pages/login_screen.dart';
import 'src/features/authentication/presentation/onboarding/bloc/onboarding_bloc.dart';
import 'src/features/authentication/presentation/onboarding/bloc/onboarding_events.dart';
import 'src/features/authentication/presentation/onboarding/bloc/onboarding_state.dart';
import 'src/features/authentication/presentation/onboarding/onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const String routeName = '/splash-screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkAuthState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<OnboardingBloc, OnboardingState>(
        listener: _handleStartUpState,
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Game Review App",
                  style: AppStyles.title3,
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void _handleStartUpState(BuildContext context, OnboardingState state) {
    if (state is OnboardingLoaded) {
      if (state.isUserOnboarded) {
        // navigate to login screen
        Navigation.intentWithClearAllRoutes(context, LoginScreen.routeName);
        log("User is onboarded");
      } else {
        log("User is not onboarded");
        Navigation.intentWithClearAllRoutes(
          context,
          OnboardingScreen.routeName,
        );
      }
      return;
    }

    if (state is OnboardingError) {
      Navigation.intentWithClearAllRoutes(context, LoginScreen.routeName);
      return;
    }
    if (state is UserCurrentlyLoggedInState) {
      log("User is currently : ${state.isUserLoggedIn}");
      if (!state.isUserLoggedIn) {
        log("User is not logged in");
        context.read<OnboardingBloc>().add(GetOnboardingEvent());
        return;
      }

      log("User is logged in");
      final user = state.user;

      if (user == null) {
        context.read<OnboardingBloc>().add(GetOnboardingEvent());
        return;
      }
      String route = LoginScreen.routeName;
      if (user.isAdmin) {
        route = AdminScreen.routeName;
      } else if (user.isModerator) {
        route = AdminScreen.routeName;
      } else {
        route = HomeScreen.routeName;
      }

      Navigation.intentWithClearAllRoutes(context, route);
    }
  }

  Future<void> _checkAuthState() async {
    // get Location permission
    await checkPermission(context);
    context.read<OnboardingBloc>().add(CheckUserLoggedStateEvent());
  }

  Future<bool> checkPermission(BuildContext context) async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.

        return false;
      }
    } else if (permission == LocationPermission.deniedForever) {
      await _showDialog();
      return false;
    }

    return true;
  }

  Future<void> _showDialog() async {
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Location Permission"),
        content: Text("Please enable location permission"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Cancel"),
          ),
          TextButton(
            onPressed: () async => await Geolocator.openAppSettings(),
            child: Text("Okay"),
          )
        ],
      ),
    );
  }
}
