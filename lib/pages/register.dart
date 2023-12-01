import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:material_text_fields/material_text_fields.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<StatefulWidget> createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPwController = TextEditingController();

  void handleCreateAccount() async {
    if (_passwordController.text == "" ||
        _confirmPwController.text == "" ||
        _userNameController.text == "" ||
        _emailController.text == "") {
      showErrorMessage("Please fill all fields before submit");
      return;
    }

    if (_passwordController.text != _confirmPwController.text) {
      showErrorMessage("Confirm password is not correct!");
      return;
    }

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );
      showSuccessMessage("Account is created.\nLet's explore app!");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        showErrorMessage("Week password");
      } else if (e.code == 'email-already-in-use') {
        showErrorMessage("Email already in use");
      } else {
        showErrorMessage(e.code);
      }
    } catch (e) {
      showErrorMessage(e.toString());
    }
  }

  void showSuccessMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Done'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void showErrorMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Error'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          const SizedBox(height: 40),
          const Center(
              child: Text(
            "Register",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          )),
          const Text(
            "Signup for a new account",
            style: TextStyle(color: Color.fromARGB(100, 1, 1, 1)),
          ),
          const SizedBox(height: 50),
          MaterialTextField(
            keyboardType: TextInputType.text,
            hint: 'Username',
            labelText: 'Username',
            textInputAction: TextInputAction.next,
            prefixIcon: const Icon(Icons.account_circle_outlined),
            controller: _userNameController,
          ),
          MaterialTextField(
            keyboardType: TextInputType.emailAddress,
            hint: 'Email',
            labelText: 'Email',
            textInputAction: TextInputAction.next,
            prefixIcon: const Icon(Icons.email_outlined),
            controller: _emailController,
          ),
          MaterialTextField(
            keyboardType: TextInputType.visiblePassword,
            hint: 'Password',
            labelText: 'Password',
            textInputAction: TextInputAction.done,
            obscureText: true,
            prefixIcon: const Icon(Icons.lock),
            controller: _passwordController,
          ),
          MaterialTextField(
            keyboardType: TextInputType.visiblePassword,
            hint: 'Confirm Password',
            labelText: 'Confirm Password',
            textInputAction: TextInputAction.done,
            obscureText: true,
            prefixIcon: const Icon(Icons.lock),
            controller: _confirmPwController,
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(
                top: 20), // Set the desired padding values
            child: Container(
              width: 200,
              height: 40,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 33, 70, 219),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextButton(
                onPressed: () => handleCreateAccount(),
                child: const Text(
                  'Create Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              width: double
                  .infinity, // Set the width to match the parent container
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment
                      .center, // Center the children horizontally
                  children: [
                    const Text("Already a user?"),
                    const SizedBox(
                        width: 10), // Add space between the two children
                    InkWell(
                      onTap: widget.onTap,
                      child: const Text(
                        'Login now?',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 33, 70, 219)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]),
      )),
    ));
  }
}
