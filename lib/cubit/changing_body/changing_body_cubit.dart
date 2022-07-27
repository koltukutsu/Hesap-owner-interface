import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
part 'changing_body_state.dart';

class ChangingBodyCubit extends Cubit<ChangingBodyState> {
  int prevIndex;

  ChangingBodyCubit({this.prevIndex = 1}) : super(ChangingBodyState(index: 0));

  void onChangedButton(int index) {
    emit(ChangingBodyState(index: index));
  }

  @override
  void onChange(Change<ChangingBodyState> change) {
    super.onChange(change);
    prevIndex = change.currentState.index;
  }
}
