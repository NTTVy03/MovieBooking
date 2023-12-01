import 'package:flutter/material.dart';
import 'package:moviebooking_21120168/pages/home.dart';

class ConfirmTicketBookingPage extends StatelessWidget {
  const ConfirmTicketBookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.home,
            color: Colors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              opacity: 0.3,
              image: AssetImage('assets/images/hotmovies/hot3.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: Column(children: [
              // Back to previous page
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),

              // Popup thank you
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.7),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                padding: const EdgeInsets.all(16.0),
                // alignment: ,
                child: const Text(
                  "Thank you for your experience.\nOther features will be implemented later!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
