import 'package:fhe_template/module/dashboard/view/dashboard_view.dart';
import 'package:fhe_template/riverpod_util.dart';
import 'package:fhe_template/shared/widget/textfield/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controller/login_controller.dart';

class LoginView extends ConsumerWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    LoginController controller = ref.watch(loginController);
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              //body
              ExTextField(
                label: "Email",
                value: "denyocr.world@gmail.com",
                onChanged: (value) {},
                hintText: "your email address",
              ),
              ExTextField(
                label: "Password",
                value: "123456",
                onChanged: (value) {},
                hintText: "your password",
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton.icon(
                icon: const Icon(Icons.login),
                label: const Text("Login"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {
                  Get.offAll(const DashboardView());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
