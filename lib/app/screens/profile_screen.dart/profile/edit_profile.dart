import 'package:flutter/material.dart';
import 'package:monmatics/const/app_padding.dart';
import 'package:monmatics/const/global_var.dart';
import 'package:monmatics/utils/colors.dart';
import 'package:monmatics/widgets/cappbar.dart';
import 'package:monmatics/widgets/ctext.dart';
import 'package:monmatics/widgets/ctextformfield.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomBackAppBar(
        title: CustomText(
          text: 'Edit My Profile',
          fontWeight: bold(),
          color: appSchemeLight.primary,
        ),
      ),
      body: CustomPadding(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                child: Icon(Icons.person),
              ),
              CustomText(
                top: 20,
                text: 'Faizan Saeed',
                fontWeight: bold(),
              ),
              const CustomTextFormField(
                fieldName: 'First Name',
                bottomPadding: 0,
                hint: 'First Name',
                //validation: (value) => Validation.validateFirstName(value),
                // onSaved: (enteredValue) {
                //   firstName = enteredValue!;
                // },
              ),
              const CustomTextFormField(
                fieldName: 'Second Name',
                bottomPadding: 0,
                hint: 'Second Name',
                // validation: (value) => Validation.validateSecondName(value),
                // onSaved: (enteredValue) {
                //   secondName = enteredValue!;
                // },
              ),
              const CustomTextFormField(
                fieldName: 'Phone Number',
                bottomPadding: 0,
                hint: 'Phone Number',
                // validation: (value) => Validation.validatePhoneNumber(value),
                // onSaved: (enteredValue) {
                //   phoneNumber = enteredValue!;
                //},
              ),
              const CustomTextFormField(
                fieldName: 'Profession',
                bottomPadding: 0,
                hint: 'Profession',
                // validation: (value) => Validation.validatePhoneNumber(value),
                // onSaved: (enteredValue) {
                //   phoneNumber = enteredValue!;
                //},
              ),
              const SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {},
                child: CustomText(
                  text: 'Save Changes',
                  fontWeight: bold(),
                  color: appSchemeLight.primary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
