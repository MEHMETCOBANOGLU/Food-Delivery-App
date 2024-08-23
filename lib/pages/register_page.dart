import 'package:flutter/material.dart';
import 'package:yugomas/components/my_button.dart';
import 'package:yugomas/components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25),

            //message, app slogan'
            Text(
              "Let's create an account for you",
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),

            const SizedBox(height: 25),
            //emailT textfield

            MyTextfield(
                controller: emailController,
                hintext: "email",
                obscureText: false),
            const SizedBox(height: 25),
            //password texfield
            MyTextfield(
                controller: passwordController,
                hintext: "password",
                obscureText: true),

            const SizedBox(height: 25),
            //cnoftimPassword texfield
            MyTextfield(
                controller: confirmPasswordController,
                hintext: "Confirm password",
                obscureText: true),

            const SizedBox(height: 25),

            //sign Up button

            MyButton(
              text: "Sign Up",
              onTap: () {},
            ),

            const SizedBox(height: 25),
            // qlready have an account ? login here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Login now",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
