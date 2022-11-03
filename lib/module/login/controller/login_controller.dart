import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fhe_template/riverpod_util.dart';
import '../view/login_view.dart';

class LoginController extends ChangeNotifier implements HyperController {
  LoginView? view;
}

final loginController =
    ChangeNotifierProvider<LoginController>((ref) {
  return LoginController();
});