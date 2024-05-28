// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:loginscreen/components/my_textfield.dart';
import 'package:loginscreen/my_button.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  void signUserIn() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        //logo
        body: SafeArea(
            child: Center(
          child: Column(children: [
            Icon(
              Icons.lock,
              size: 100,
            ),
            const SizedBox(
              height: 20,
            ),
            Text("Welcome Back You Have Been Missed ...!!",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                )),
            const SizedBox(height: 15),

            //user name
            MyTextField(
              controller: usernameController,
              hintText: 'Username',
              obscureText: false,
            ),
            const SizedBox(height: 10),
            MyTextField(
              controller: passwordController,
              hintText: 'New Password',
              obscureText: true,
            ),
            const SizedBox(height: 10),
            MyTextField(
              controller: passwordController,
              hintText: 'Confirm Password',
              obscureText: true,
            ),

            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forget Password?",
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),
            //signin
            MyButton(
              onTap: () {},
              text: "Sign Up",
            ),

            const SizedBox(height: 50),

            //
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                  Text(
                    "Or Continue with",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Allready have an account ? ",
                  style: TextStyle(color: Colors.black),
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "LogIn Now",
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            )
          ]),
        )));
  }
}
