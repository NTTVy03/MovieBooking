import 'package:flutter/material.dart';
import 'package:moviebooking_21120168/pages/auth.dart';
import 'package:moviebooking_21120168/pages/home.dart';
import 'package:moviebooking_21120168/pages/login.dart';
import 'package:moviebooking_21120168/pages/register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        home: AuthPage(),
        routes: {
          //LoginPage.routeName: (ctx) => LoginPage();
        });
  }
}
