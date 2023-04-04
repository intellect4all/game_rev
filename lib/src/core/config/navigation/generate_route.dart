import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_rev/src/features/dashboard/presentation/admin_screen.dart';
import 'package:game_rev/src/features/dashboard/presentation/game_screen.dart';
import 'package:game_rev/src/features/dashboard/presentation/home_screen.dart';

import '../../../../page_not_found.dart';
import '../../../features/authentication/domain/entity/account_creation_dto.dart';
import '../../../features/authentication/presentation/login/pages/first_reset_password_screen.dart';
import '../../../features/authentication/presentation/login/pages/forget_password_page_args.dart';
import '../../../features/authentication/presentation/login/pages/login_screen.dart';
import '../../../features/authentication/presentation/login/pages/new_password.dart';
import '../../../features/authentication/presentation/login/pages/password_reset.dart';
import '../../../features/authentication/presentation/login/pages/reset_password.dart';
import '../../../features/authentication/presentation/onboarding/onboarding.dart';
import '../../../features/authentication/presentation/otp/email_verification_screen.dart';
import '../../../features/authentication/presentation/otp/success_screen.dart';
import '../../../features/authentication/presentation/signup/signup_screen.dart';
import '../../../../splash_screen.dart';
import '../../../features/dashboard/domain/entity/game.dart';

class GenerateRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case OnboardingScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
          settings: settings,
        );
      case LoginScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
          settings: settings,
        );
      case SignupScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => const SignupScreen(),
          settings: settings,
        );
      case FirstResetPasswordScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => const FirstResetPasswordScreen(),
          settings: settings,
        );
      case ResetPasswordOtpScreen.routeName:
        final args = settings.arguments as ForgetPasswordPageArgs;
        return MaterialPageRoute(
          builder: (_) => ResetPasswordOtpScreen(
            args: args,
          ),
          settings: settings,
        );
      case CreateNewPasswordAfterForget.routeName:
        final args = settings.arguments as ForgetPasswordPageArgs;
        return MaterialPageRoute(
          builder: (_) => CreateNewPasswordAfterForget(
            args: args,
          ),
          settings: settings,
        );
      case PasswordResetSuccessScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => const PasswordResetSuccessScreen(),
          settings: settings,
        );
      case EmailVerificationScreen.routeName:
        final args = settings.arguments as AccountCreatedDto;
        return MaterialPageRoute(
          builder: (_) => EmailVerificationScreen(
            dto: args,
          ),
          settings: settings,
        );

      case SplashScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
          settings: settings,
        );

      case HomeScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
          settings: settings,
        );

      case AdminScreen.routeName:
        return MaterialPageRoute(
          builder: (_) => const AdminScreen(),
          settings: settings,
        );

      case GameScreen.routeName:
        final args = settings.arguments as Game;
        return MaterialPageRoute(
          builder: (_) => GameScreen(
            game: args,
          ),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const PageNotFoundScreen(),
          settings: settings,
        );
    }
  }
}
