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

  void handleLogin() {
    print(
        "#############################################################################");
    print(_emailController.text);
    print(_passwordController.text);
    print(
        "#############################################################################");
  }

  @override
  Widget build(BuildContext context) {
    // var screenWidth = MediaQuery.of(context).size.width;
    // var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SafeArea(
            child: Column(children: [
      const Center(
          child: Text(
        "Login",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      )),
      const Text(
        "Login to your account to continue",
        style: TextStyle(color: Color.fromARGB(100, 1, 1, 1)),
      ),
      MaterialTextField(
        keyboardType: TextInputType.emailAddress,
        hint: 'Email',
        labelText: 'Email',
        textInputAction: TextInputAction.next,
        prefixIcon: const Icon(Icons.email_outlined),
        controller: _emailController,
        // onChanged: (text) => handleTextFieldOnTap(text),
      ),
      MaterialTextField(
        keyboardType: TextInputType.visiblePassword,
        hint: 'Password',
        labelText: 'Password',
        textInputAction: TextInputAction.done,
        obscureText: true,
        prefixIcon: const Icon(Icons.lock),
        // suffixIcon: const Icon(Icons.visibility),
        controller: _passwordController,
      ),
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
