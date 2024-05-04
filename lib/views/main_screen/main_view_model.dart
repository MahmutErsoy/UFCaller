import 'package:flutter/material.dart';
import 'package:ufc_caller/core/base/base_view_model.dart';
import 'package:ufc_caller/views/alarm_screen/alarm_view.dart';
import 'package:ufc_caller/views/home_screen/home_view.dart';
import 'package:ufc_caller/views/search_screen/search_view.dart';
import 'package:ufc_caller/views/settings_screen/settings_view.dart';

class MainViewModel extends BaseViewModel {
  bool isInit = false;

  int currentIndex = 0;

  final List<Widget> widgetOptions = <Widget>[
    const HomeView(),
    const SearchView(),
    const AlarmView(),
    const SettingsView(),
  ];

  void navigateTo(int index) {
    currentIndex = index;

    notifyListeners();
  }

  @override
  void setContext(BuildContext context) => this.context = context;

  @override
  Future<void> init() async {
    if (!isInit) {
      changeStatus();
      isInit = !isInit;
    }
  }
}
