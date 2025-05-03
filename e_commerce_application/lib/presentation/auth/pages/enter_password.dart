import 'package:e_commerce_application/common/helper/navigator/app_navigator.dart';
import 'package:e_commerce_application/common/widgets/appbar/app_bar.dart';
import 'package:e_commerce_application/common/widgets/button/basic_app_button.dart';
import 'package:e_commerce_application/presentation/auth/pages/forgot_password.dart';
import 'package:flutter/gestures.dart' show TapGestureRecognizer;
import 'package:flutter/material.dart';

class EnterPasswordPage extends StatelessWidget {
  const EnterPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signinText(context),
            const SizedBox(height: 20),
            _passwoedField(),
            const SizedBox(height: 20),
            _continueButton(),
            const SizedBox(height: 20),
            _forgotPassword(context),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

Widget _signinText(BuildContext context) {
  return const Text(
    'Sign In',
    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
  );
}

Widget _passwoedField() {
  return const TextField(
    decoration: InputDecoration(
      hintText: ' Enter Password',
      border: OutlineInputBorder(),
    ),
  );
}

Widget _continueButton() {
  return BasicAppButton(onPressed: () {}, title: 'Continue');
}

Widget _forgotPassword(BuildContext context) {
  return RichText(
    text: TextSpan(
      children: [
        TextSpan(
          text: 'forgot password? ',
          style: TextStyle(color: Colors.blue),
        ),
        TextSpan(
          text: 'reset',
          recognizer:
              TapGestureRecognizer()
                ..onTap = () {
                  AppNavigator.push(context, ForgotPasswordpage());
                },
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
