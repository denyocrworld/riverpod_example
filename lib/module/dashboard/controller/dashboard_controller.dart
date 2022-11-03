import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fhe_template/riverpod_util.dart';
import '../view/dashboard_view.dart';

class DashboardController extends ChangeNotifier implements HyperController {
  DashboardView? view;
  Color scaffoldBackgroundColor = Colors.blue;
  double cardRadius = 64.0;
  double fontSize = 16.0;

  Color getRandomColor() {
    return Colors.primaries[Random().nextInt(Colors.primaries.length)];
  }

  updateBackgroundColor() {
    var randomColor = getRandomColor();
    scaffoldBackgroundColor = randomColor;
    update();
  }

  updateCardRadius() {
    var randomRadius = Random().nextDouble() * 164;
    cardRadius = randomRadius;
    update();
  }

  updateFontSize() {
    var randomFontSize = Random().nextDouble() * 30;
    fontSize = randomFontSize;
    update();
  }
}

final dashboardController = ChangeNotifierProvider<DashboardController>((ref) {
  return DashboardController();
});
