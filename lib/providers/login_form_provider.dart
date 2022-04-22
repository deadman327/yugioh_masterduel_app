import 'package:flutter/material.dart';

class LoginFormProvide extends ChangeNotifier {
  GlobalKey<FormState> formKey = new GlobalKey<FormState>();

  String email = '';
  String password = '';

  bool isValidForm() {
    print(formKey.currentState?.validate());

    print('$email - $password');

    return formKey.currentState?.validate() ?? false;
  }
}
