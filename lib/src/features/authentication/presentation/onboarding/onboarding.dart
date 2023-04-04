import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/config/navigation/navigation.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/styles.dart';
import '../../../../core/widgets/buttons/custom_button.dart';
import '../../../../core/widgets/spacing.dart';
import '../signup/signup_screen.dart';
import 'bloc/onboarding_bloc.dart';
import 'bloc/onboarding_events.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  static const String routeName = '/onboarding-screen';

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int onboardIndex = 0;
  late final PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  final onboardingSteps = <OnboardingPageParams>[
    OnboardingPageParams(
      title: "Welcome to Game Review",
      description:
          "Our app is the perfect place to discover and read reviews about the latest and greatest games, as well as leave your own reviews and share your thoughts with other gamers.",
      buttonText: "Let's get started!",
      icon: AppImages.gamePad,
      iconFormat: IconFormat.png,
      index: 0,
    ),
    OnboardingPageParams(
      title: "Read Reviews, Leave Your Own",
      description:
          "Reviews are the best way to find out what other gamers think about a game. You can read reviews from other gamers, and share your thoughts too",
      buttonText: "Next",
      icon: AppImages.actionOnboarding,
      iconFormat: IconFormat.png,
      index: 1,
    ),
    OnboardingPageParams(
      title: "Welcome on board!",
      description:
          "We're glad to have you here. We hope you enjoy our app and find it useful.",
      buttonText: "Continue",
      icon: AppImages.onboarding3,
      iconFormat: IconFormat.png,
      index: 2,
    ),
  ];

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void navigateToNextPage() => controller.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );

  void changePage(int index) => setState(() {
        onboardIndex = index;
      });

  void saveOnboardingState() {
    context.read<OnboardingBloc>().add(SaveOnboardingEvent());
    Navigation.intent(context, SignupScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: PageView(
            onPageChanged: changePage,
            physics: const BouncingScrollPhysics(),
            controller: controller,
            children: onboardingSteps
                .map(
                  (e) => OnboardingPage(
                    params: e,
                    onNext: _onNext,
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }

  void _onNext(int value) {
    if (onboardIndex == 2) {
      saveOnboardingState();
    } else {
      navigateToNextPage();
    }
  }
}

enum IconFormat { svg, png }

class OnboardingPageParams {
  final String title;
  final String description;
  final String buttonText;
  final String icon;
  final IconFormat iconFormat;
  final int index;

  OnboardingPageParams({
    required this.title,
    required this.description,
    required this.buttonText,
    required this.icon,
    required this.index,
    this.iconFormat = IconFormat.svg,
  });
}

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    Key? key,
    required this.params,
    required this.onNext,
  }) : super(key: key);

  final OnboardingPageParams params;
  final ValueSetter<int> onNext;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Spacer(),
          SizedBox(
            height: MediaQuery.of(context).size.height * 233 / 812,
            child: params.iconFormat == IconFormat.svg? SvgPicture.asset(
              params.icon,
              fit: BoxFit.contain,
            ) : Image.asset(
              params.icon,
              fit: BoxFit.contain,
            ),
          ),
          const Spacer(),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                Text(
                  params.title,
                  textAlign: TextAlign.center,
                  style: AppStyles.title3,
                ),
                Spacing.vertical(24),
                Text(
                  params.description,
                  textAlign: TextAlign.center,
                  style: AppStyles.body8.copyWith(height: 1.6),
                ),
                const SizedBox(height: 30), // for dot indicator
                const SizedBox(height: 24),
                CustomButton(
                  child: Text(
                    params.buttonText,
                    style: AppStyles.body1,
                  ),
                  onPressed: () {
                    onNext(params.index);
                  },
                ),
              ])),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
