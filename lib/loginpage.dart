// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:loginscreen/components/my_textfield.dart';
import 'package:loginscreen/my_button.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              child: Column(
            children: [
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
                hintText: 'Email',
                obscureText: false,
              ),
              const SizedBox(height: 10),
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
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
                text: "Sign In",
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
// google button .......
              SizedBox(height: 15),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  //apple icon

                  children: [
                    Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.shade200),
                        child: Image.network(
                          "https://cdn3.iconfinder.com/data/icons/picons-social/57/56-apple-512.png",
                          height: 40,
                        )),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade200),
                      child: Image.network(
                        "https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png",
                        height: 40,
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade200),
                      child: Image.network(
                        "https://cdn0.iconfinder.com/data/icons/shift-logotypes/32/Facebook-512.png",
                        height: 40,
                      ),
                    ),
                  ]),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a Member ? ",
                    style: TextStyle(color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Register now",
                      style: TextStyle(color: Colors.blue),
                    ),
                  )
                ],
              )
            ],
          )),
        ));
  }
}
