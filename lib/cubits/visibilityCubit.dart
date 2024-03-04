import 'package:flutter_bloc/flutter_bloc.dart';
import '/cubits/cupit_states.dart';

class VisibilityCubit extends Cubit<VisibilityState> {
  VisibilityCubit() : super(VisibilityState(true));

  void toggleVisibility() {
    emit(VisibilityState(!state.isVisible));
  }
}
