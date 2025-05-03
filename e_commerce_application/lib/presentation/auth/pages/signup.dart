import 'package:e_commerce_application/common/helper/navigator/app_navigator.dart'
    show AppNavigator;
import 'package:e_commerce_application/common/widgets/appbar/app_bar.dart';
import 'package:e_commerce_application/common/widgets/button/basic_app_button.dart';
import 'package:e_commerce_application/presentation/auth/pages/enter_password.dart';
import 'package:e_commerce_application/presentation/auth/pages/siginin.dart';
import 'package:flutter/gestures.dart' show TapGestureRecognizer;
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signinText(context),
            const SizedBox(height: 20),
            _firstNameField(context),
            const SizedBox(height: 20),
            _lastNameField(context),
            const SizedBox(height: 20),
            _emailField(context),
            const SizedBox(height: 20),
            _passwordField(context),
            const SizedBox(height: 20),
            _continueButton(context),
            const SizedBox(height: 20),
            _createAccount(context),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

Widget _signinText(BuildContext context) {
  return const Text(
    'Creat Account',
    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
  );
}

Widget _firstNameField(BuildContext context) {
  return const TextField(
    decoration: InputDecoration(
      hintText: ' First Name',
      border: OutlineInputBorder(),
    ),
  );
}

Widget _lastNameField(BuildContext context) {
  return const TextField(
    decoration: InputDecoration(
      hintText: ' Last Name',
      border: OutlineInputBorder(),
    ),
  );
}

Widget _emailField(BuildContext context) {
  return const TextField(
    decoration: InputDecoration(
      hintText: 'Email Address',
      border: OutlineInputBorder(),
    ),
  );
}

Widget _passwordField(BuildContext context) {
  return const TextField(
    decoration: InputDecoration(
      hintText: 'Password',
      border: OutlineInputBorder(),
    ),
  );
}

Widget _continueButton(BuildContext context) {
  return BasicAppButton(
    onPressed: () {
      AppNavigator.push(context, const EnterPasswordPage());
    },
    title: 'Continue',
  );
}

Widget _createAccount(BuildContext context) {
  return RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text: 'Do you have an account? ',
          style: TextStyle(color: Colors.blue),
        ),
        TextSpan(
          text: 'Sign In',
          recognizer:
              TapGestureRecognizer()
                ..onTap = () {
                  AppNavigator.push(context, const SigninPage());
                },
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
