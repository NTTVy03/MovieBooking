import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:moviebooking_21120168/pages/home.dart';
import 'package:moviebooking_21120168/pages/login_or_register.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Show a loading indicator while checking the authentication state
          return const CircularProgressIndicator();
        }

        if (snapshot.hasData) {
          // User is logged in
          return HomePage();
        } else {
          // User is NOT logged in
          return const LoginOrRegisterPage();
        }
      },
    );
  }
}
