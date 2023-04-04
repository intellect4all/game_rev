import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_rev/src/features/authentication/data/data_source/authentication_data_source.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../core/config/navigation/navigation.dart';
import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/styles.dart';
import '../../../../../core/utils/utils.dart';
import '../../../../../core/widgets/buttons/custom_button.dart';
import '../../../../../core/widgets/buttons/custom_text_button.dart';
import '../../../../../core/widgets/spacing.dart';
import '../../authentication_bloc.dart';
import 'forget_password_page_args.dart';
import 'new_password.dart';

class ResetPasswordOtpScreen extends StatefulWidget {
  final ForgetPasswordPageArgs args;

  const ResetPasswordOtpScreen({super.key, required this.args});

  static const String routeName = '/reset-password-otp';

  @override
  State<ResetPasswordOtpScreen> createState() => _ResetPasswordOtpScreenState();
}

class _ResetPasswordOtpScreenState extends State<ResetPasswordOtpScreen> {
  bool isPinIncorrect = false;
  String pinInput = '';

  ForgetPasswordPageArgs? forgetPasswordPageArgs;

  final pinTextController = TextEditingController();
  String otpId = '';

  @override
  void initState() {
    super.initState();
    forgetPasswordPageArgs = widget.args;
  }

  void confirmOTP(BuildContext context) {
    final otp = int.tryParse(pinTextController.text);
    if (otp == null) {
      Utils.showToast("Invalid Otp");
      return;
    }

    Navigation.intentWithData(
      context,
      CreateNewPasswordAfterForget.routeName,
      forgetPasswordPageArgs!.copyWith(otp: otp.toString()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
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
                    'Reset Password',
                    style: AppStyles.body2,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 90.0, left: 20, right: 20),
                child: Column(
                  children: [
                    Text(
                      'An OTP has been sent to ${forgetPasswordPageArgs!.email}, please enter the 6 digit code in the box below',
                      style: AppStyles.body5,
                    ),
                    Spacing.vertical(32),
                    PinCodeTextField(
                      appContext: context,
                      controller: pinTextController,
                      length: 6,
                      keyboardType: TextInputType.number,
                      backgroundColor: Colors.black,
                      cursorColor: AppColors.primary,
                      textStyle: AppStyles.title3,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(10),
                        fieldHeight: 62,
                        fieldWidth: 40,
                        activeFillColor: Colors.white,
                        inactiveFillColor: Colors.white,
                        activeColor: AppColors.primary,
                        inactiveColor: AppColors.primary,
                        selectedColor: AppColors.primary,
                        selectedFillColor: Colors.white,
                      ),
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      onChanged: (value) {},
                      onCompleted: (value) {
                        confirmOTP(context);
                      },
                    ),
                    Spacing.vertical(30),
                    BlocConsumer<AuthenticationBloc, AuthenticationState>(
                      listener: _blocListener,
                      builder: (context, state) {
                        return CustomButton(
                          onPressed: () => confirmOTP(context),
                          isLoading: state is AuthenticationLoading,
                          child: const Text('Confirm'),
                        );
                      },
                    ),
                    Spacing.vertical(44),
                    BlocBuilder<AuthenticationBloc, AuthenticationState>(
                      builder: (context, state) {
                        return Visibility(
                          visible: state is! AuthenticationLoading,
                          child: CustomTextButton(
                            onPressed: () {
                              if (state is! AuthenticationLoading) {
                                context.read<AuthenticationBloc>().add(
                                      ResendOtpEvent(
                                        email: forgetPasswordPageArgs!.email,
                                        type: ResendOTPType.resetPassword,
                                      ),
                                    );
                              }
                            },
                            child: Text(
                              'Resend a new code',
                              style: AppStyles.body3
                                  .copyWith(color: AppColors.primary),
                            ),
                          ),
                        );
                      },
                    ),
                    Spacing.vertical(16),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _blocListener(BuildContext context, AuthenticationState state) {
    if (state is AuthenticationError) {
      Utils.showToast(state.message);
    }
    if (state is OtpResendSuccess) {
      Utils.showToast("Otp resent successfully");
      forgetPasswordPageArgs =
          forgetPasswordPageArgs!.copyWith(otpId: state.id);
    }
  }
}
