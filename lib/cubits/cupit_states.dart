// ignore_for_file: camel_case_types

import 'package:equatable/equatable.dart';

abstract class LanguagesState {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LanguagesinitialState extends LanguagesState {}

class LanguagesLoadingState extends LanguagesState {}

class LanguagesSuccessState extends LanguagesState {}

class VisibilityState {
  final bool isVisible;

  VisibilityState(this.isVisible);

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

abstract class cupit_states extends Equatable {}

class initialState extends cupit_states {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class onboardingPageState extends cupit_states {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class mainpageState extends cupit_states {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class HomePageState extends cupit_states {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class detailedpageState extends cupit_states {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
