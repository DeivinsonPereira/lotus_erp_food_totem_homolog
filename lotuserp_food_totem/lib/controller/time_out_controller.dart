import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../page/tefs/si_tef/components/clisitef_controller.dart';

class TimeOutController extends GetxController with WidgetsBindingObserver {
  late Timer _timer;
  final MainController controller;

  TimeOutController(this.controller);

  @override
  void onInit() {
    super.onInit();
    WidgetsBinding.instance.addObserver(this);
    startTimer();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _timer.cancel();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      // Se a aplicação voltar para o primeiro plano, reinicie o timer
      resetTimer();
    }
  }

  void resetTimer() {
    _timer.cancel();
    print(_timer);
    startTimer();
  }

  void startTimer() {
    _timer = Timer(const Duration(seconds: 60), () {
      Get.back();
      controller.pdv.client.continueTransaction('-1');
    });
  }
}
