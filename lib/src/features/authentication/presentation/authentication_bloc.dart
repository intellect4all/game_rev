import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:game_rev/src/features/authentication/data/data_source/authentication_data_source.dart';
import 'package:game_rev/src/features/authentication/domain/entity/login_dto.dart';

import '../../../core/constants/enums.dart';
import '../domain/entity/user.dart';
import '../domain/usecase/auth_facade.dart';

part 'authentication_event.dart';

part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthFacade _authFacade;

  AuthenticationBloc({
    required AuthFacade authFacade,
  })
      : _authFacade = authFacade,
        super(AuthenticationInitial()) {
    on<SignupEvent>(_handleSignUpEvent);
    on<VerifyEmailEvent>(_handleVerifyEmailEvent);
    on<ResendOtpEvent>(_handleResendOtpEvent);
    on<LoginUserEvent>(_handleLoginUserEvent);
    on<InitiateForgetPasswordEvent>(_handleInitiateForgetPasswordEvent);
    on<ResetPasswordOtpEvent>(_handleResetPasswordEvent);
    on<SignOutEvent>(_handleSignOutEvent);
  }

  Future<void> _handleSignUpEvent(SignupEvent event,
      Emitter<AuthenticationState> emit) async {
    emit(AuthenticationLoading());
    final signedUser = await _authFacade.signUp(
      SignUpUserParams(
        email: event.email,
        password: event.password,
        firstName: event.firstName,
        lastName: event.lastName,
        phone: event.phone,
        role: event.role,
        userName: event.userName,
        city: event.city,
        country: event.country,
        latitude: event.latitude,
        longitude: event.longitude,
        countryCode: event.countryCode,
      ),
    );
    signedUser.fold(
          (left) {
        emit(AuthenticationError(message: left.message));
      },
          (res) {
        res.fold(
              (left) {
            emit(UserSignedUpButRequiredLogin());
          },
              (success) {
            emit(AccountCreatedSuccessfully(user: success.user));
          },
        );
      },
    );
  }

  Future<void> _handleVerifyEmailEvent(VerifyEmailEvent event,
      Emitter<AuthenticationState> emit) async {
    emit(AuthenticationLoading());
    final res = await _authFacade.verifyEmail(
      VerifyEmailParams(
        email: event.email,
        otp: event.otp,
        otpId: event.id,
      ),
    );

    res.fold(
          (left) => emit(AuthenticationError(message: left.message)),
          (success) {
        emit(EmailVerificationSuccess());
      },
    );
  }

  Future<void> _handleResendOtpEvent(ResendOtpEvent event,
      Emitter<AuthenticationState> emit) async {
    emit(AuthenticationLoading());
    final res = await _authFacade.sendEmailOtp(
      ResendOtpParams(
        email: event.email,
        type: event.type,
      ),
    );
    res.fold(
          (left) => emit(AuthenticationError(message: left.message)),
          (success) => emit(OtpResendSuccess(id: success)),
    );
  }

  Future<void> _handleLoginUserEvent(LoginUserEvent event,
      Emitter<AuthenticationState> emit) async {
    emit(AuthenticationLoading());
    final res = await _authFacade.login(
      LoginUserParams(
        email: event.email,
        password: event.password,
      ),
    );

    res.fold(
          (left) {
        emit(AuthenticationError(message: left.message));
        return null;
      },
          (success) => emit(LoginSuccess(user: success.user)),
    );
  }

  Future<void> _handleInitiateForgetPasswordEvent(
      InitiateForgetPasswordEvent event,
      Emitter<AuthenticationState> emit) async {
    emit(AuthenticationLoading());
    final res = await _authFacade.initiateForgetPassword(event.email);
    res.fold(
          (left) => emit(AuthenticationError(message: left.message)),
          (success) =>
          emit(
            ForgetPasswordInitiated(id: success, email: event.email),
          ),
    );
  }

  Future<void> _handleResetPasswordEvent(ResetPasswordOtpEvent event,
      Emitter<AuthenticationState> emit,) async {
    emit(AuthenticationLoading());
    final res = await _authFacade.resetPassword(
      ResetPasswordParams(
        email: event.email,
        otp: event.otp,
        otpId: event.id,
        password: event.password,
      ),
    );

    res.fold(
          (left) => emit(AuthenticationError(message: left.message)),
          (success) {
        emit(PasswordResetSuccess());
      },
    );
  }

  Future<void> _handleSignOutEvent(SignOutEvent event,
      Emitter<AuthenticationState> emit) async {
    emit(AuthenticationLoading());
    final res = await _authFacade.signOut();
    res.fold(
          (left) => emit(AuthenticationError(message: left.message)),
          (success) {
        emit(UserSignedOut());
      },
    );
  }
}
