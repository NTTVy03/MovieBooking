import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:material_text_fields/material_text_fields.dart';
import 'package:moviebooking_21120168/pages/login.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<StatefulWidget> createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  static const routeName = '/profile-screen';

  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPwController = TextEditingController();

  void handleCreateAccount() async {
    if (_passwordController.text != _confirmPwController.text) {
      showErrorMessage("Confirm password is not correct!");
      return;
    }

    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      // pop the loading circle
      Navigator.pop(context);

      showSuccessMessage("Account is created");
    } on FirebaseAuthException catch (e) {
      // pop the loading circle
      Navigator.pop(context);

      if (e.code == 'weak-password') {
        showErrorMessage("Week password");
      } else if (e.code == 'email-already-in-use') {
        showErrorMessage("Email already in use");
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
          title: Text('Done'),
          content: Text(message), // Set the error message as the content
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: Text('OK'),
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
          title: Text('Error'),
          content: Text(message), // Set the error message as the content
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // var screenWidth = MediaQuery.of(context).size.width;
    // var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          const Center(
              child: Text(
            "Register",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          )),
          const Text(
            "Signup for a new account",
            style: TextStyle(color: Color.fromARGB(100, 1, 1, 1)),
          ),
          MaterialTextField(
              keyboardType: TextInputType.text,
              hint: 'Username',
              labelText: 'Username',
              textInputAction: TextInputAction.next,
              prefixIcon: const Icon(Icons.account_circle_outlined),
              controller: _userNameController),
          MaterialTextField(
              keyboardType: TextInputType.emailAddress,
              hint: 'Email',
              labelText: 'Email',
              textInputAction: TextInputAction.next,
              prefixIcon: const Icon(Icons.email_outlined),
              controller: _emailController),
          MaterialTextField(
              keyboardType: TextInputType.visiblePassword,
              hint: 'Password',
              labelText: 'Password',
              textInputAction: TextInputAction.done,
              obscureText: true,
              prefixIcon: const Icon(Icons.lock),
              controller: _passwordController),
          MaterialTextField(
              keyboardType: TextInputType.visiblePassword,
              hint: 'Confirm Password',
              labelText: 'Confirm Password',
              textInputAction: TextInputAction.done,
              obscureText: true,
              prefixIcon: const Icon(Icons.lock),
              controller: _confirmPwController),
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
            child: Container(
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
