import 'package:flutter/material.dart';

class ErrorNavigationPage extends StatelessWidget {
  const ErrorNavigationPage(
      {super.key, this.error, required this.onMainPageGoPressed});
  final String? error;
  final VoidCallback onMainPageGoPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Not Found'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(error?.toString() ?? 'page not found'),
            OutlinedButton(
              onPressed: onMainPageGoPressed,
              child: const Text('Go to the Home page'),
            ),
          ],
        ),
      ),
    );
  }
}
