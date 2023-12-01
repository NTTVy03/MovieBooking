import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:material_text_fields/material_text_fields.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<StatefulWidget> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void handleForgotPassword() {}

  void handleLogin() async {
    // show loading circle
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    // request to sign in
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      // pop the loading circle
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // pop the loading circle
      Navigator.pop(context);

      // showMessage("Login Fail. Check your Email and Password!");
      showMessage(e.code);
    }
  }

  void showMessage(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Error'),
          content: Text(message), // Set the error message as the content
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
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
    // var screenWidth = MediaQuery.of(context).size.width;
    // var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
          child: Column(children: [
        const SizedBox(height: 40),

        // Login text
        const Center(
            child: Text(
          "Login",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        )),

        // Login to your account to continue
        const Text(
          "Login to your account to continue",
          style: TextStyle(color: Color.fromARGB(100, 1, 1, 1)),
        ),

        const SizedBox(height: 100),

        // Email Textfield
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: MaterialTextField(
            keyboardType: TextInputType.emailAddress,
            hint: 'Email',
            labelText: 'Email',
            textInputAction: TextInputAction.next,
            prefixIcon: const Icon(Icons.email_outlined),
            controller: _emailController,
            // onChanged: (text) => handleTextFieldOnTap(text),
          ),
        ),

        // Password Textfield
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: MaterialTextField(
            keyboardType: TextInputType.visiblePassword,
            hint: 'Password',
            labelText: 'Password',
            textInputAction: TextInputAction.done,
            obscureText: true,
            prefixIcon: const Icon(Icons.lock),
            // suffixIcon: const Icon(Icons.visibility),
            controller: _passwordController,
          ),
        ),

        // Forgot Pasword
        Align(
          alignment: Alignment.centerRight,
          child: Container(
              margin: const EdgeInsets.all(16),
              child: InkWell(
                  onTap: () => handleForgotPassword(),
                  child: const Text(
                    'Forgot password?',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromARGB(255, 33, 70, 219)),
                  ))),
        ),

        const SizedBox(height: 40),

        //Login Button
        Container(
          width: 120,
          height: 40,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 33, 70, 219),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextButton(
            onPressed: () => handleLogin(),
            child: const Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(20),
          child: SizedBox(
            width:
                double.infinity, // Set the width to match the parent container
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Center the children horizontally
                children: [
                  const Text("Create an account?"),
                  const SizedBox(
                      width: 10), // Add space between the two children
                  InkWell(
                    onTap: widget.onTap,
                    child: const Text(
                      'Register now?',
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
      ])),
    ));
  }
}
