import 'package:flutter/material.dart';
import 'package:monmatics/widgets/cbutton.dart';
import 'package:monmatics/widgets/ctextformfield.dart';

import '../../../utils/validations.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String firstName = '';
  String secondName = '';
  String phoneNumber = '';
  String email = '';
  String password = '';
  String confirmPassword = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomTextFormField(
            fieldName: 'First Name',
            bottomPadding: 0,
            hint: 'First Name',
            validation: (value) => Validation.validateFirstName(value),
            onSaved: (enteredValue) {
              firstName = enteredValue!;
            },
          ),
          CustomTextFormField(
            fieldName: 'Second Name',
            bottomPadding: 0,
            hint: 'Second Name',
            validation: (value) => Validation.validateSecondName(value),
            onSaved: (enteredValue) {
              secondName = enteredValue!;
            },
          ),
          CustomTextFormField(
            fieldName: 'Phone Number',
            bottomPadding: 0,
            hint: 'Phone Number',
            validation: (value) => Validation.validatePhoneNumber(value),
            onSaved: (enteredValue) {
              phoneNumber = enteredValue!;
            },
          ),
          CustomTextFormField(
            fieldName: 'Email',
            bottomPadding: 0,
            hint: 'Email',
            validation: (value) => Validation.validateEmail(value),
            onSaved: (enteredValue) {
              email = enteredValue!;
            },
          ),
          CustomTextFormField(
            fieldName: 'Password',
            bottomPadding: 0,
            hint: 'Password',
            validation: (value) => Validation.validatePassword(value),
            onSaved: (enteredValue) {
              password = enteredValue!;
            },
          ),
          CustomTextFormField(
            fieldName: 'Confirm Password',
            bottomPadding: 30,
            hint: 'Confirm Password',
            validation: (value) => Validation.validatePassword(value),
            onSaved: (enteredValue) {
              confirmPassword = enteredValue!;
            },
          ),
          const CustomButton(
            text: 'SignUp',
          ),
        ],
      ),
    );
  }
}
