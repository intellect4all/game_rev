import 'package:equatable/equatable.dart';

abstract class OnboardingEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetOnboardingEvent extends OnboardingEvent {}

class CheckUserLoggedStateEvent extends OnboardingEvent {}

class SaveOnboardingEvent extends OnboardingEvent {}
