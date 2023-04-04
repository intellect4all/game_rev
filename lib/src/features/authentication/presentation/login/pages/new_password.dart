import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_rev/src/features/authentication/presentation/login/pages/password_reset.dart';

import '../../../../../core/config/navigation/navigation.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/styles.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/utils/validator.dart';
import '../../../../../core/widgets/buttons/custom_button.dart';
import '../../../../../core/widgets/spacing.dart';
import '../../../../../core/widgets/text_input.dart';
import '../../authentication_bloc.dart';
import 'forget_password_page_args.dart';
import 'login_screen.dart';

class CreateNewPasswordAfterForget extends StatefulWidget {
  const CreateNewPasswordAfterForget({super.key, required this.args});

  final ForgetPasswordPageArgs args;

  static const routeName = "/create-new-password-after-forget";

  @override
  State<CreateNewPasswordAfterForget> createState() =>
      _CreateNewPasswordAfterForgetState();
}

class _CreateNewPasswordAfterForgetState
    extends State<CreateNewPasswordAfterForget> {
  bool isVisible = false;

  void toggleVisibility() => setState(() => isVisible = !isVisible);

  late final TextEditingController passwordController;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.chevron_left_sharp,
                      color: AppColors.white,
                      size: 30,
                    ),
                  ),
                  Spacing.horizontal(10),
                  const Text(
                    'New Password',
                    style: AppStyles.body2,
                  ),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Reset your password', style: AppStyles.body9),
                    Spacing.vertical(32),
                    CustomTextInput(
                      controller: passwordController,
                      label: 'Password',
                      keyboardType: TextInputType.visiblePassword,
                      prefixIcon: IconButton(
                        onPressed: () => toggleVisibility(),
                        icon: isVisible
                            ? const Icon(
                                Icons.visibility,
                                size: 15,
                                color: AppColors.white,
                              )
                            : const Icon(
                                Icons.visibility_off,
                                size: 15,
                                color: AppColors.white,
                              ),
                      ),
                      obscureText: isVisible,
                      validator: Validators.password(),
                    ),
                    Spacing.vertical(37),
                    BlocConsumer<AuthenticationBloc, AuthenticationState>(
                      listener: _blocListener,
                      builder: (context, state) {
                        return CustomButton(
                          isLoading: state is AuthenticationLoading,
                          onPressed: () => _resetPassword(context),
                          child: const Text('Reset', style: AppStyles.body1),
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }

  void _resetPassword(BuildContext context) {
    if (formKey.currentState!.validate()) {
      context.read<AuthenticationBloc>().add(
            ResetPasswordOtpEvent(
              otp: widget.args.otp,
              id: widget.args.otpId,
              email: widget.args.email,
              password: passwordController.text,
            ),
          );
    }
  }

  void _blocListener(BuildContext context, AuthenticationState state) {
    if (state is PasswordResetSuccess) {
      Navigation.intentWithClearAllRoutes(
        context,
        PasswordResetSuccessScreen.routeName,
        predicateRouteName: LoginScreen.routeName,
      );
      return;
    }
    if (state is AuthenticationError) {
      Utils.showToast(state.message);
    }
  }
}
