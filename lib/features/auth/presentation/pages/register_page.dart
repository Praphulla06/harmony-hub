import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harmony_hub/features/auth/presentation/bloc/cubits/auth_cubit.dart';
import 'package:harmony_hub/features/auth/presentation/widgets/my_button.dart';
import 'package:harmony_hub/features/auth/presentation/widgets/my_text_field.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? togglePage;
  const RegisterPage({super.key, required this.togglePage});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  void register() {
    String name = nameController.text;
    String email = emailController.text;
    String password = passwordController.text;
    String confirmPassword = confirmPasswordController.text;

    final authCubit = context.read<AuthCubit>();
    if (name.isNotEmpty &&
        email.isNotEmpty &&
        password.isNotEmpty &&
        confirmPassword.isNotEmpty) {
      if (password != confirmPassword) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Password does not match!")));
      }
      authCubit.register(name, email, password);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Please fill all fields!")));
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
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
                      child: Text(
                        "Let's create an account for you!",
                      ),
                    ),
                    Column(
                      children: [
                        MyTextField(
                            controller: nameController,
                            hintText: "Name: ",
                            obscureText: false),
                        MyTextField(
                            controller: emailController,
                            hintText: "Email: ",
                            obscureText: false),
                        MyTextField(
                            controller: passwordController,
                            hintText: "Password: ",
                            obscureText: true),
                        MyTextField(
                            controller: confirmPasswordController,
                            hintText: "Confirm Password: ",
                            obscureText: true),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: MyButton(text: "R E G I S T E R", onTap: register),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account? "),
                            GestureDetector(
                              onTap: widget.togglePage,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12.0),
                                child: Text("Log In"),
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
