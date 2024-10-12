import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monmatics/app/auth/login/login_controller/login_controller.dart';
import 'package:monmatics/utils/app_routes.dart';
import 'package:monmatics/utils/validations.dart';
import 'package:monmatics/widgets/cbutton.dart';
import 'package:monmatics/widgets/ctextformfield.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  LoginController loginController = LoginController();
  final _formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String email = '';
  String password = '';

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomTextFormField(
            controller: emailController,
            fieldName: 'Email',
            bottomPadding: 0,
            hint: 'Email',
            validation: (value) => Validation.validateEmail(value),
            onSaved: (enteredValue) {
              email = enteredValue!;
            },
          ),
          CustomTextFormField(
            controller: passwordController,
            fieldName: 'Password',
            bottomPadding: 0,
            keyboardtype: TextInputType.visiblePassword,
            hint: 'Password',
            validation: (value) => Validation.validatePassword(value),
            onSaved: (enteredValue) {
              password = enteredValue!;
            },
          ),
          TextButton(
              onPressed: () {
                Get.toNamed(AppRoutes.forgetPassword);
              },
              child: const Text('Forgot Password?')),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            onTap: () {
              if (_formkey.currentState!.validate()) {
                Get.offAllNamed(AppRoutes.mainScreen);
              }
            },
            text: 'Login',
          ),
        ],
      ),
    );
  }
}
