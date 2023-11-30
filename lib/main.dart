import 'package:flutter/material.dart';
import 'package:moviebooking_21120168/pages/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:moviebooking_21120168/pages/confirm_ticket_booking.dart';
import 'package:moviebooking_21120168/pages/seatbooking.dart';
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

  const MyApp({super.key});

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
      debugShowCheckedModeBanner: false,
      title: 'CGVy',
      home:
          // ConfirmTicketBookingPage(),

          SeatBookingPage(
        time: "9:30 AM",
        date: "FRIDAY, 12",
        movieTitle: "Ant Man and The Wasp",
        theater: "Sathyam Cinemas: Royalpettah",
        imgUrl: "assets/images/allmovies/img5.jpg",
      ),
    );
  }
}
