import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:moviebooking_21120168/data/Globals.dart';
import 'package:moviebooking_21120168/pages/allmovie.dart';
import 'package:moviebooking_21120168/pages/moviepage.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<Map> listMovies = GlobalsData.allMovies;
  final List<Map> hotMovies = GlobalsData.hotMovies;

  final user = FirebaseAuth.instance.currentUser!;

  void handleSignOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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

              const SizedBox(height: 20),

              // new movies stack
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    for (var i = 0; i < hotMovies.length; i++)
                      SizedBox(
                        height: 350,
                        width: 180,
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          child: Image.asset(
                            hotMovies[i]['img_url'],
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                  ],
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
                height: 220, // Set the desired height for the ListView.builder
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listMovies.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MoviePage(
                            index: index,
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
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
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
                              style:
                                  const TextStyle(fontWeight: FontWeight.w400),
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
    );
  }
}
