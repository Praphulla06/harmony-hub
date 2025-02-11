import 'package:flutter/material.dart';
import 'package:harmony_hub/features/auth/presentation/pages/log_in_page.dart';
import 'package:harmony_hub/features/auth/presentation/pages/register_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showLogInPage = true;
  @override
  Widget build(BuildContext context) {
    void togglePage() {
      setState(() {
        showLogInPage = !showLogInPage;
      });
    }

    return Scaffold(
        body: showLogInPage ? LogInPage(togglePage: togglePage) : RegisterPage(togglePage: togglePage));
  }
}
