import 'package:e_commerce_application/common/helper/navigator/app_navigator.dart'
    show AppNavigator;
import 'package:e_commerce_application/common/widgets/appbar/app_bar.dart';
import 'package:e_commerce_application/common/widgets/button/basic_app_button.dart';
import 'package:e_commerce_application/presentation/auth/pages/enter_password.dart';
import 'package:flutter/material.dart';

class ForgotPasswordpage extends StatelessWidget {
  const ForgotPasswordpage({super.key});

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
            _emailField(context),
            const SizedBox(height: 20),
            _continueButton(context),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

Widget _signinText(BuildContext context) {
  return const Text(
    'forgot password?',
    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
  );
}

Widget _emailField(BuildContext context) {
  return const TextField(
    decoration: InputDecoration(
      hintText: ' Enter Email',
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
