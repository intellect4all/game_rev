import 'package:equatable/equatable.dart';

import '../../../domain/entity/user.dart';

abstract class OnboardingState extends Equatable {
  @override
  List<Object> get props => [];
}

class OnboardingInitial extends OnboardingState {}

class OnboardingLoading extends OnboardingState {}

class OnboardingLoaded extends OnboardingState {
  OnboardingLoaded({required this.isUserOnboarded});
  final bool isUserOnboarded;
  @override
  List<Object> get props => [isUserOnboarded];
}

class UserCurrentlyLoggedInState extends OnboardingState {
  UserCurrentlyLoggedInState({required this.isUserLoggedIn, this.user});
  final bool isUserLoggedIn;
  final User? user;
  @override
  List<Object> get props => [isUserLoggedIn];
}

class OnboardingError extends OnboardingState {
  OnboardingError({required this.message});
  final String message;

  @override
  List<Object> get props => [message];
}
