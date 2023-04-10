import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_rev/src/core/constants/extensions/extensions.dart';
import 'package:game_rev/src/core/widgets/screen_adjuster.dart';

import '../../../../../core/config/navigation/navigation.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/enums.dart';
import '../../../../../core/constants/styles.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/utils/validator.dart';
import '../../../../../core/widgets/buttons/custom_button.dart';
import '../../../../../core/widgets/buttons/custom_text_button.dart';
import '../../../../../core/widgets/spacing.dart';
import '../../../../../core/widgets/text_input.dart';
import '../../../../admin/presentation/screens/admin_screen.dart';
import '../../../../dashboard/presentation/home_screen.dart';
import '../../authentication_bloc.dart';
import '../../signup/signup_screen.dart';
import 'first_reset_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isVisible = false;
  bool rememberDetails = false;

  late final TextEditingController passwordController;
  late final TextEditingController emailController;

  void toggleVisibility() => setState(() => isVisible = !isVisible);

  void toggleDetailsVisibility(value) =>
      setState(() => rememberDetails = value);

  @override
  void initState() {
    super.initState();
    passwordController = TextEditingController();
    emailController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: ScreenAdjuster(
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 61.0, left: 22, right: 22),
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //INTRODUCTORY MESSAGE

                        Text(
                          'Welcome back! Glad to see\nyou Again!',
                          style: context.textTheme.titleLarge,
                        ),
                        Spacing.vertical(32),

                        //EMAIL TEXTFIELD

                        CustomTextInput(
                          label: 'Email Address',
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: Validators.email(),
                        ),
                        Spacing.vertical(20),

                        //PASSWORD TEXTFIELD

                        CustomTextInput(
                          controller: passwordController,
                          label: 'Password',
                          keyboardType: TextInputType.visiblePassword,
                          prefixIcon: IconButton(
                            onPressed: () => toggleVisibility(),
                            icon: isVisible
                                ? Icon(
                                    Icons.visibility_off,
                                    size: 15,
                                    color: context.colorScheme.background,
                                  )
                                : Icon(
                                    Icons.visibility,
                                    size: 15,
                                    color: context.colorScheme.background,
                                  ),
                          ),
                          obscureText: isVisible,
                          validator: Validators.password(),
                        ),
                        Spacing.vertical(10),

                        //FORGET PASSWORD & REMEMBER ME

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(),
                            CustomTextButton(
                              onPressed: () {
                                Navigation.intent(
                                  context,
                                  FirstResetPasswordScreen.routeName,
                                );
                              },
                              child: Text(
                                'Forgot Password?',
                                style: context.textTheme.bodyMedium,
                              ),
                            )
                          ],
                        ),
                        Spacing.vertical(27),

                        //LOGIN BUTTON

                        BlocConsumer<AuthenticationBloc, AuthenticationState>(
                          listener: (context, state) {
                            if (state is AuthenticationError) {
                              Utils.showToast(state.message);
                              return;
                            }

                            //TODO: navigate to game dashboard for user or admin panel of admin
                            if (state is LoginSuccess) {
                              final user = state.user;
                              if (user.role == UserRole.user) {
                                Navigation.intentWithoutBack(
                                    context, HomeScreen.routeName);
                              } else {
                                Navigation.intentWithoutBack(
                                    context, AdminScreen.routeName);
                              }
                            }
                          },
                          builder: (context, state) {
                            return CustomButton(
                              isLoading: state is AuthenticationLoading,
                              onPressed: () => _handleSignIn(context),
                              child: Text('Login',
                                  style: context.textTheme.labelMedium),
                            );
                          },
                        ),
                        Spacing.vertical(32),
                        Spacing(height: size.height * 0.07),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: context.textTheme.bodyMedium,
                            ),
                            CustomTextButton(
                              onPressed: () => Navigation.intent(
                                context,
                                SignupScreen.routeName,
                              ),
                              child: Text(
                                'Sign up',
                                style: context.textTheme.bodyMedium?.copyWith(
                                  color: context.theme.primaryColor,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleSignIn(BuildContext context) {
    if (formKey.currentState!.validate()) {
      context.read<AuthenticationBloc>().add(
            LoginUserEvent(
              email: emailController.text,
              password: passwordController.text,
            ),
          );
    }
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    this.height,
    this.width,
    this.child,
    this.color,
    this.borderColor,
    this.padding,
    this.borderRadius,
  });

  final double? height;
  final double? width;
  final Widget? child;
  final Color? color;
  final Color? borderColor;
  final double? borderRadius;

  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        borderRadius:
            borderRadius != null ? BorderRadius.circular(borderRadius!) : null,
        border: borderColor != null
            ? Border.all(width: 2, color: borderColor!)
            : null,
      ),
      child: child,
    );
  }
}
