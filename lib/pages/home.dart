import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:moviebooking_21120168/data/globals.dart';
import 'package:moviebooking_21120168/pages/allmovie.dart';
import 'package:moviebooking_21120168/pages/moviepage.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<Map> listMovies = GlobalsData.getBasicInfoMovies();
  final List<Map> hotMovies = GlobalsData.hotMovies;

  final user = FirebaseAuth.instance.currentUser!;

  void handleSignOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                // header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Text
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Now Showing ..",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 28),
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
                ),

                const SizedBox(height: 40),

                // new movies stack -> auto switch sliders
                CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 360,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    // onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                  ),
                  itemCount: hotMovies.length,
                  itemBuilder:
                      (BuildContext context, int index, int pageViewIndex) =>
                          GestureDetector(
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MoviePage(
                            index: hotMovies[index]['id'],
                          ),
                        ),
                      )
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // image
                            SizedBox(
                              height: 320,
                              width: 180,
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                child: Image.asset(
                                  hotMovies[index]['img_url'],
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // list view movies
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Text All movies
                      const Text(
                        "All Movies",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),

                      // text view all
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AllMoviePage(),
                              ));
                        },
                        child: const Text(
                          "View all",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                ),

                // List movies
                SizedBox(
                  height:
                      220, // Set the desired height for the ListView.builder
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: listMovies.length,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MoviePage(
                              index: listMovies[index]['id'],
                            ),
                          ),
                        )
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // image
                              SizedBox(
                                height: 150,
                                width: 90,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  child: Image.asset(
                                    listMovies[index]['img_url'],
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),

                              const SizedBox(height: 8),
                              // title
                              Text(
                                listMovies[index]['title'],
                                style: const TextStyle(
                                    fontWeight: FontWeight.w400),
                              ),

                              // duration
                              Text(
                                listMovies[index]['duration'],
                                style: const TextStyle(color: Colors.grey),
                              )
                            ]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
