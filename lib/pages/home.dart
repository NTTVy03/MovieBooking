import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:card_swiper/card_swiper.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  void handleSignOut() {
    print("############################################");
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    // var screenWidth = MediaQuery.of(context).size.width;
    // var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SafeArea(
            child: Column(children: [
      Row(
        children: [
          const Column(
            children: [Text("Now Showing"), Text("Movies in Chennai")],
          ),
          const SizedBox(
            width: 20,
          ),
          InkWell(
            onTap: handleSignOut,
            child: Text("Log Out"),
          )

          // Align(
          //   alignment: Alignment.centerRight,
          //   child: CircularProfileAvatar(
          //     'https://avatars0.githubusercontent.com/u/8264639?s=460&v=4', //sets image path, it should be a URL string. default value is empty string, if path is empty it will display only initials
          //     radius: 100, // sets radius, default 50.0
          //     backgroundColor: Colors
          //         .transparent, // sets background color, default Colors.white
          //     elevation:
          //         5.0, // sets elevation (shadow of the profile picture), default value is 0.0
          //     foregroundColor: Colors.brown.withOpacity(
          //         0.5), //sets foreground colour, it works if showInitialTextAbovePicture = true , default Colors.transparent
          //     cacheImage:
          //         true, // allow widget to cache image against provided url
          //     imageFit: BoxFit.cover, // sets on tap
          //     onTap: handleSignOut,
          //   ),
          // )
        ],
      ),
      // Swiper(
      //   itemBuilder: (BuildContext context, int index) {
      //     return Image.network(
      //       "https://via.placeholder.com/288x188",
      //       fit: BoxFit.fill,
      //     );
      //   },
      //   itemCount: 10,
      //   itemWidth: 300.0,
      //   layout: SwiperLayout.STACK,
      // )
    ])));
  }
}
