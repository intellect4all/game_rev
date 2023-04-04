import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game_rev/src/features/authentication/data/data_source/authentication_data_source.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


import '../../../../core/config/navigation/navigation.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/constants/styles.dart';
import '../../../../core/utils/utils.dart';
import '../../../../core/widgets/buttons/custom_button.dart';
import '../../../../core/widgets/spacing.dart';
import '../../domain/entity/account_creation_dto.dart';
import '../authentication_bloc.dart';

class EmailVerificationScreen extends StatefulWidget {
  final AccountCreatedDto dto;

  const EmailVerificationScreen({
    Key? key,
    required this.dto,
  }) : super(key: key);

  static const routeName = "/email-verification";

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final pinTextController = TextEditingController();
  bool emailVerified = false;
  AccountCreatedDto dto = AccountCreatedDto(
    email: '',
    fullName: '',
    token: '',
    id: '',
  );

  @override
  void initState() {
    super.initState();
    dto = widget.dto;
  }

  void confirmOTP(BuildContext context) {
    final otp = int.tryParse(pinTextController.text);
    if (otp != null) {
      log("otp: $otp");
      context.read<AuthenticationBloc>().add(
            VerifyEmailEvent(
              otp: otp.toString(),
              id: dto.id,
              email: dto.email,
            ),
          );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: emailVerified
              ? Center(child: _buildEmailVerifiedScreen())
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacing.vertical(32),
                    const Text("Email Verification", style: AppStyles.title3),
                    Spacing.vertical(50),
                    Text(
                      'An OTP has been sent to ${dto.email}, pls enter the 6 digit code in the box below',
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
                        fieldWidth: 50,
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
                    Spacing.vertical(44),
                    BlocConsumer<AuthenticationBloc, AuthenticationState>(
                      listener: _emailVerificationListener,
                      builder: (context, state) {
                        return CustomButton(
                          isLoading: state is AuthenticationLoading,
                          onPressed: () => confirmOTP(context),
                          child: const Text('Confirm'),
                        );
                      },
                    ),
                    Spacing.vertical(24),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Didn’t you receive any code?",
                        style: AppStyles.body3,
                      ),
                    ),
                    Spacing.vertical(8),
                    GestureDetector(
                      onTap: () => _resendOtP(context),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Resend a new code",
                          style: AppStyles.body3
                              .copyWith(color: AppColors.primary),
                        ),
                      ),
                    ),
                    Spacing.vertical(24),
                  ],
                ),
        ),
      ),
    );
  }

  void _emailVerificationListener(
      BuildContext context, AuthenticationState state) {
    if (state is AuthenticationError) {
      pinTextController.clear();
      Utils.showToast(state.message);
    }
    if (state is OtpResendSuccess) {
      pinTextController.clear();
      Utils.showToast("OTP resent successfully");
      dto = dto.copyWith(
        id: state.id,
      );
    }
    if (state is EmailVerificationSuccess) {
      setState(() {
        emailVerified = true;
      });
    }
  }

  _resendOtP(BuildContext context) {
    context.read<AuthenticationBloc>().add(
          ResendOtpEvent(email: dto.email, type: ResendOTPType.verifyEmail),
        );
  }

  Widget _buildEmailVerifiedScreen() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Spacer(
          flex: 1,
        ),
        // SvgPicture.asset(
        //   AppIcons.whiteOnRedCheck,
        //   height: 100,
        //   width: 100,
        // ),
        Spacing.vertical(24),
        const Text(
          "Email Verified",
          style: AppStyles.title3,
        ),
        Spacing.vertical(10),
        const Text(
          'Your Email Address has been\nsuccessfully reset.',
          textAlign: TextAlign.center,
          style: AppStyles.body5,
        ),
        Spacing.vertical(32),
        CustomButton(
          onPressed: () {
            // Navigation.intentWithDataAndClearAllRoutes(
            //     context,
            //     DashboardScreen.routeName,
            //     WapUser(
            //         email: dto.email,
            //         fullname: dto.fullName,
            //         isVerified: true));
          },
          child: const Text('Go to home'),
        ),
        const Spacer(
          flex: 2,
        ),
      ],
    );
  }
}
