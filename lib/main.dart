import 'package:fhe_template/module/login/view/login_view.dart';
import 'package:fhe_template/riverpod_util.dart';
import 'package:fhe_template/setup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  await initialize();

  runApp(
    ProviderScope(
      child: MaterialApp(
        navigatorKey: Get.navigatorKey,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: const LoginView(),
      ),
    ),
  );
}
