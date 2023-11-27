import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:material_text_fields/material_text_fields.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  static const routeName = '/profile-screen';

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void handleForgotPassword() {
    print(
        "#############################################################################");
    print("You forgot your password???");
  }

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

      showMessage("Login Fail. Check your Email and Password!");
      // // Wrong EMAIL
      // if (e.code == "user-not-found") {
      //   wrongEmailMessage();
      // }

      // // Wrong PASSWORD
      // else if (e.code == "wrong-password") {
      //   wrongPasswordMessage();
      // }
    }
  }

  void showMessage(String message) {
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

  // void wrongEmailMessage() {
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return const AlertDialog(
  //         title: Text("Incorrect Email"),
  //       );
  //     },
  //   );
  // }

  // void wrongPasswordMessage() {
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return const AlertDialog(
  //         title: Text("Incorrect Password"),
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    // var screenWidth = MediaQuery.of(context).size.width;
    // var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SafeArea(
            child: Column(children: [
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
      )
    ])));
  }
}
