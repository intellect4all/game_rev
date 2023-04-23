import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_rev/src/features/authentication/data/data_source/authentication_manager.dart';

import '../../../domain/usecase/auth_facade.dart';
import 'onboarding_events.dart';
import 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  final AuthFacade _authFacade;

  OnboardingBloc({
    required AuthFacade authFacade,
  })
      : _authFacade = authFacade,
        super(OnboardingInitial()) {
    on<GetOnboardingEvent>(_handleGetOnboarding);
    on<SaveOnboardingEvent>(_handleSaveOnboarding);
    on<CheckUserLoggedStateEvent>(_handleCheckUserLoggedState);
  }

  Future<void> _handleGetOnboarding(GetOnboardingEvent event,
      Emitter<OnboardingState> emit) async {
    final res = await _authFacade.isUserOnboarded();
    res.fold(
          (l) => emit(OnboardingError(message: "Unable to get from Storage")),
          (success) =>
          emit(
            OnboardingLoaded(isUserOnboarded: success),
          ),
    );
  }

  void _handleSaveOnboarding(SaveOnboardingEvent event,
      Emitter<OnboardingState> emit) {
    _authFacade.setUserOnboarded().then(
          (value) =>
          value.fold(
                (l) => emit(OnboardingError(message: "Storage Error")),
                (r) {
              emit(OnboardingInitial()); // TODO: check this
            },
          ),
    );
  }

  Future<void> _handleCheckUserLoggedState(CheckUserLoggedStateEvent event,
      Emitter<OnboardingState> emit) async {
    final res = await _authFacade.isUserLoggedIn();


    await res.fold(
            (l) async =>
            emit(
              UserCurrentlyLoggedInState(isUserLoggedIn: false),
            ), (success) async {
      if (!success) {
        emit(UserCurrentlyLoggedInState(isUserLoggedIn: false));
        return;
      }

      final user = await _authFacade.getUser();
      return user.fold(
            (l) {
          emit(UserCurrentlyLoggedInState(isUserLoggedIn: false));
        },
            (success) =>
            emit(
              UserCurrentlyLoggedInState(isUserLoggedIn: true, user: success),
            ),
      );
    });
  }
}
