import 'dart:developer';
import 'dart:ffi';

import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_libphonenumber/flutter_libphonenumber.dart';
import 'package:game_rev/src/core/constants/enums.dart';
import 'package:game_rev/src/core/constants/extensions/extensions.dart';
import 'package:game_rev/src/features/dashboard/presentation/admin_screen.dart';
import 'package:geolocator/geolocator.dart';
import 'package:string_extensions/string_extensions.dart';

import '../../../../core/config/navigation/navigation.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/styles.dart';
import '../../../../core/utils/validator.dart';
import '../../../../core/widgets/buttons/custom_button.dart';
import '../../../../core/widgets/buttons/custom_text_button.dart';
import '../../../../core/widgets/spacing.dart';
import '../../../../core/widgets/text_input.dart';
import '../../../dashboard/presentation/home_screen.dart';
import '../authentication_bloc.dart';
import '../login/pages/login_screen.dart';
import '../otp/email_verification_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  static const routeName = "/signup-screen";

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

enum TextFields {
  email,
  password,
  firstName,
  lastName,
  phone,
  userName,
  city,
  country
}

class SignupTextFields {
  final String label;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool obscureText;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final List<TextInputFormatter>? inputFormatters;
  final VoidCallback? onTap;

  SignupTextFields({
    required this.label,
    this.validator,
    this.keyboardType,
    this.textInputAction,
    this.obscureText = false,
    this.controller,
    this.suffixIcon,
    this.inputFormatters,
    this.onTap,
  });
}

class _SignupScreenState extends State<SignupScreen> {
  bool isPasswordVisible = true;
  bool rememberMe = false;

  final formKey = GlobalKey<FormState>();
  final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  final textControllers = <TextFields, TextEditingController>{};

  final ValueNotifier<CountryWithPhoneCode> country =
      ValueNotifier(const CountryWithPhoneCode.gb());

  final fields = <SignupTextFields>[];
  String flagEmoji = "🇬🇧";

  @override
  void initState() {
    super.initState();

    for (final element in TextFields.values) {
      textControllers[element] = TextEditingController();
    }
  }

  @override
  void dispose() {
    for (final element in TextFields.values) {
      textControllers[element]!.dispose();
    }

    super.dispose();
  }

  Future<void> signup(BuildContext context) async {
    double latitude = 0.0;
    double longitude = 0.0;

    final res = await _getLocation();

    if (res == null) {
      return _showSnackBar("Please enable location services");
    }

    latitude = res[0];
    longitude = res.last;

    final form = formKey.currentState;
    if (form!.validate()) {
      _sendSignUpReq(
        SignupEvent(
          email: textControllers[TextFields.email]?.text ?? "",
          password: textControllers[TextFields.password]?.text ?? "",
          firstName: textControllers[TextFields.firstName]?.text ?? "",
          lastName: textControllers[TextFields.lastName]?.text ?? "",
          phone:
              textControllers[TextFields.phone]?.text.trim().removeWhiteSpace ??
                  "",
          userName: textControllers[TextFields.userName]?.text ?? "",
          role: UserRole.user,
          city: textControllers[TextFields.city]?.text ?? "",
          country: textControllers[TextFields.country]?.text ?? "",
          latitude: latitude,
          longitude: longitude,
          countryCode: country.value.countryCode,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    _rebuildFields();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 24.0, top: 20),
                  child: Text(
                    "Hello! Register to get started",
                    style: context.textTheme.titleLarge,
                  ),
                ),
                Spacing.vertical(30),
                Form(
                  key: formKey,
                  child: Column(
                      children: fields
                          .map(
                            (e) => ValueListenableBuilder<CountryWithPhoneCode>(
                                valueListenable: country,
                                builder: (context, value, child) {
                                  return CustomTextInput(
                                    label: e.label,
                                    prefixIcon: e.suffixIcon,
                                    validator: e.validator,
                                    keyboardType: e.keyboardType,
                                    obscureText: e.obscureText,
                                    controller: e.controller,
                                    inputFormatters: e.inputFormatters,
                                    onTap: e.onTap,
                                  );
                                }),
                          )
                          .toList()),
                ),
                BlocConsumer<AuthenticationBloc, AuthenticationState>(
                  listener: _authenticationBlocListener,
                  builder: (context, state) {
                    return CustomButton(
                      isLoading: state is AuthenticationLoading,
                      onPressed: () => signup(context),
                      child: Text(
                        "Sign up",
                        style: context.textTheme.labelMedium,
                      ),
                    );
                  },
                ),
                Spacing.vertical(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?",
                        style: context.textTheme.bodyMedium),
                    CustomTextButton(
                      onPressed: () {
                        Navigation.intentWithoutBack(
                            context, LoginScreen.routeName);
                      },
                      child: Text(
                        "Login Now",
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
      ),
    );
  }

  void _authenticationBlocListener(
      BuildContext context, AuthenticationState state) {
    if (state is AuthenticationError) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(state.message),
        ),
      );
    }

    if (state is UserSignedUpButRequiredLogin) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text("Account created successfully. \nPlease login to continue"),
              SizedBox(height: 10),
              SizedBox(
                width: 100,
                height: 100,
                child: CircularProgressIndicator(),
              )
            ],
          ),
        ),
      );
    }
    if (state is AccountCreatedSuccessfully) {
      final user = state.user;
      if (user.role == UserRole.user) {
        Navigation.intentWithoutBack(context, HomeScreen.routeName);
      } else {
        Navigation.intentWithoutBack(context, AdminScreen.routeName);
      }
    }
  }

  void _rebuildFields() {
    fields.clear();
    fields.addAll([
      SignupTextFields(
        label: "Username",
        validator: Validators.username(),
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.next,
        controller: textControllers[TextFields.userName],
      ),
      SignupTextFields(
        label: "Email",
        validator: Validators.email(),
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        controller: textControllers[TextFields.email],
      ),
      SignupTextFields(
        label: "Password",
        validator: Validators.password(),
        keyboardType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.next,
        obscureText: true,
        controller: textControllers[TextFields.password],
      ),
      SignupTextFields(
        label: "First Name",
        validator: Validators.name(),
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.next,
        controller: textControllers[TextFields.firstName],
      ),
      SignupTextFields(
        label: "Last Name",
        validator: Validators.name(),
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.next,
        controller: textControllers[TextFields.lastName],
      ),
      SignupTextFields(
        label: "Country",
        validator: Validators.name(),
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.next,
        controller: textControllers[TextFields.country],
        onTap: () async {
          showCountryPicker(
            context: context,
            showPhoneCode: true,
            // optional. Shows phone code before the country name.
            onSelect: (Country country) async {
              textControllers[TextFields.country]!.text = country.name;
              final allCountries = await getAllSupportedRegions();
              log(allCountries.toString());
              final c = allCountries.keys.firstWhere(
                  (element) => element == country.countryCode,
                  orElse: () => "UK");
              log(c);
              final selectedCountry = allCountries[c]!;
              log(selectedCountry.toString());
              this.country.value = selectedCountry;
              flagEmoji = country.flagEmoji;

              setState(() {});
            },
          );
        },
      ),
      SignupTextFields(
        label: "Phone",
        validator: Validators.phone(),
        keyboardType: TextInputType.phone,
        textInputAction: TextInputAction.next,
        controller: textControllers[TextFields.phone],
        suffixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            flagEmoji,
            style: const TextStyle(fontSize: 25),
          ),
        ),
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LibPhonenumberTextFormatter(
            phoneNumberType: PhoneNumberType.mobile,
            country: country.value,
            inputContainsCountryCode: true,
          ),
        ],
      ),
      SignupTextFields(
        label: "City",
        validator: Validators.name(),
        keyboardType: TextInputType.name,
        textInputAction: TextInputAction.next,
        controller: textControllers[TextFields.city],
      ),
    ]);
  }

  Future<List<double>?> _getLocation() async {
    try {
      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      return [position.latitude, position.longitude];
    } catch (e) {
      return null;
    }
  }

  void _sendSignUpReq(SignupEvent signupEvent) {
    context.read<AuthenticationBloc>().add(signupEvent);
  }

  Future<void> _showSnackBar(String s) async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(s),
      ),
    );
  }
}
