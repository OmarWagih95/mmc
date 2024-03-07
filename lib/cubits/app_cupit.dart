import 'package:flutter_bloc/flutter_bloc.dart';
import '/cubits/cupit_states.dart';

class app_cupit extends Cubit<cupit_states> {
  static String lan = 'en';
///////////////
///ghghg
///hghg
///h
  app_cupit() : super(initialState()) {
    emit(onboardingPageState());
  }

  mainpage() {
    emit(mainpageState());
  }

  HomePage(bool isVisible) {
    late bool isVisible;
    void toggleMessage() {
      isVisible = !isVisible;
    }

    emit(HomePage(isVisible));
  }

  detailedpage() {
    emit(detailedpageState());
  }
}
