import 'package:flutter/material.dart';
import 'package:moviebooking_21120168/pages/login.dart';
import 'package:moviebooking_21120168/pages/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  static const routeName = '/';

  const MyApp();

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'CGVy',
        // home: MyFirstScreen(
        //   showNotification: _checkPendingNotificationRequests,
        // ),
        // initialRoute: !auth.isAuth ? null : widget.initialRoute,
        home: RegisterPage(),
        routes: {
          //LoginPage.routeName: (ctx) => LoginPage();
        });
  }
}
