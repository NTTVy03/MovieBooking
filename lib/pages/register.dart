import 'package:flutter/material.dart';
import 'package:material_text_fields/material_text_fields.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<StatefulWidget> createState() => _RegisterPage();
}

class _RegisterPage extends State<RegisterPage> {
  static const routeName = '/profile-screen';

  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPwController = TextEditingController();

  void handleCreateAccount() {
    print("#######################################");
    print("Create Account with:");
    print(_userNameController.text);
    print(_emailController.text);
    print(_passwordController.text);
    print(_confirmPwController.text);
  }

  void handleAlreadyHaveAccount() {
    print("#######################################");
    print("Already have a account, move to log in");
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
        padding:
            const EdgeInsets.only(top: 20), // Set the desired padding values
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
          width: double.infinity, // Set the width to match the parent container
          child: Center(
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Center the children horizontally
              children: [
                const Text("Already a user?"),
                const SizedBox(width: 10), // Add space between the two children
                InkWell(
                  onTap: () => handleAlreadyHaveAccount(),
                  child: const Text(
                    'Login now?',
                    style: TextStyle(
                        fontSize: 14, color: Color.fromARGB(255, 33, 70, 219)),
                  ),
                ),
              ],
            ),
          ),
        ),
      )
    ])));
  }
}
