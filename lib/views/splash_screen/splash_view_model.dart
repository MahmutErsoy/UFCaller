import 'package:flutter/material.dart';
import 'package:ufc_caller/core/base/base_view_model.dart';

class SplashViewModel extends BaseViewModel {
  bool isInit = false;

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
