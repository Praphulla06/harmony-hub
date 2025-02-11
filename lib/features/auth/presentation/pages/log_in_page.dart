import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harmony_hub/features/auth/presentation/bloc/cubits/auth_cubit.dart';
import 'package:harmony_hub/features/auth/presentation/widgets/my_button.dart';
import 'package:harmony_hub/features/auth/presentation/widgets/my_text_field.dart';

class LogInPage extends StatefulWidget {
  final void Function()? togglePage;
  const LogInPage({super.key, required this.togglePage});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {
    String email = emailController.text;
    String password = passwordController.text;

    final authCubit = context.read<AuthCubit>();
    if (email.isNotEmpty && password.isNotEmpty) {
      authCubit.login(email, password);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Please enter both email and password!")));
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
        body: SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Icon(Icons.lock_open_sharp, size: 64),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Text("Welcome Back!", style: Theme.of(context).textTheme.headlineSmall,),
                ),
                Column(
                  children: [
                    MyTextField(
                        controller: emailController,
                        hintText: "Email: ",
                        obscureText: false),
                    MyTextField(
                        controller: passwordController,
                        hintText: "Password: ",
                        obscureText: true),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: MyButton(text: "L O G   I N", onTap: login),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?"),
                        GestureDetector(
                            onTap: widget.togglePage,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12.0),
                              child: Text("Create an account"),
                            ),
                            )
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
