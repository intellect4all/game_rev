import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_rev/src/features/authentication/presentation/login/pages/reset_password.dart';


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

class FirstResetPasswordScreen extends StatefulWidget {
  const FirstResetPasswordScreen({super.key});

  static const String routeName = '/first-reset-password-screen';

  @override
  State<FirstResetPasswordScreen> createState() =>
      _FirstResetPasswordScreenState();
}

class _FirstResetPasswordScreenState extends State<FirstResetPasswordScreen> {
  late final TextEditingController _emailController;
  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
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
                      'Enter your Email',
                      style: AppStyles.body2,
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 40),
                  child: Column(
                    children: [
                      CustomTextInput(
                        label: 'Enter Email Address',
                        controller: _emailController,
                        keyboardType: TextInputType.emailAddress,
                        validator: Validators.email(),
                      ),
                      Spacing.vertical(33),
                      BlocConsumer<AuthenticationBloc, AuthenticationState>(
                        listener: _listener,
                        builder: (context, state) {
                          return CustomButton(
                            onPressed: () => _handleForgetPassword(context),
                            isLoading: state is AuthenticationLoading,
                            child:
                                const Text('Send OTP', style: AppStyles.body1),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _handleForgetPassword(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      context.read<AuthenticationBloc>().add(
            InitiateForgetPasswordEvent(
              email: _emailController.text,
            ),
          );
    }
  }

  void _listener(BuildContext context, AuthenticationState state) {
    if (state is ForgetPasswordInitiated) {
      Navigation.intentWithData(
        context,
        ResetPasswordOtpScreen.routeName,
        ForgetPasswordPageArgs(
          email: state.email,
          password: '',
          otp: '',
          otpId: state.id,
        ),
      );
    }
    if (state is AuthenticationError) {
      Utils.showToast(state.message);
    }
  }
}
