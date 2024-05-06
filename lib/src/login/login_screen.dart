import 'dart:js';

import 'package:b2boms/src/home/home_page.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "User is required";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: "Enter User Name",
                    labelText: "Enter User Name",
                  ),
                ),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Password is required";
                    }
                    return null;
                  },
                  onChanged: (value) {
                    _formKey.currentState!.validate();
                  },
                  obscureText: true,
                  obscuringCharacter: "X",
                  decoration: const InputDecoration(
                      hintText: "Enter Password Name",
                      labelText: "Enter Password Name"),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: Text('Go to home page')),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<void> _onLogin() async {
  if (_formKey.currentState!.validate()) {
    await LoginState.loginFromRemote(context);
  }
}
