import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  final user = FirebaseAuth.instance.currentUser!;

  void handleSignOut() {
    FirebaseAuth.instance.signOut();

    Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);

    // Navigator.pop(context);

    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) => const AuthPage(),
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Text
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Now Showing ..",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            Text(
              "Movies in Chennai",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),

        // Avatar
        IconButton(
          onPressed: handleSignOut,
          icon: const Icon(Icons.account_circle),
          iconSize: 50,
        )
      ],
    );
  }
}
