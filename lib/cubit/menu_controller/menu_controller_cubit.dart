import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part "menu_controller_state.dart";

class MenuControllerCubit extends Cubit<MenuControllerState> {
  MenuControllerCubit() : super(MenuControllerState());

  get scaffoldKey => state.scaffoldKey;

  void controlMenu() {
    if (!state.scaffoldKey.currentState!.isDrawerOpen) {
      scaffoldKey.currentState!.openDrawer();
    }
  }
}
