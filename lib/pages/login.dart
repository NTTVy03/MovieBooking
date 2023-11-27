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
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text,
      password: _passwordController.text,
    );

    // try {
    //   final credential = await FirebaseAuth.instance
    //       .signInWithEmailAndPassword(email: emailAddress, password: password);
    // } on FirebaseAuthException catch (e) {
    //   if (e.code == 'user-not-found') {
    //     print('No user found for that email.');
    //   } else if (e.code == 'wrong-password') {
    //     print('Wrong password provided for that user.');
    //   }
    // }
  }

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
