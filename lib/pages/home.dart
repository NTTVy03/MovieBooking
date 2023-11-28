import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:moviebooking_21120168/pages/allmovie.dart';
import 'package:moviebooking_21120168/pages/moviepage.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  void handleSignOut() {
    FirebaseAuth.instance.signOut();
  }

  final List<Map> listMovies = [
    {
      'title': 'Movie 1',
      'duration': '1h 12m',
      'img_url': 'assets/images/allmovies/img1.jpg'
    },
    {
      'title': 'Movie 2',
      'duration': '1h 22m',
      'img_url': 'assets/images/allmovies/img2.jpg'
    },
    {
      'title': 'Movie 3',
      'duration': '1h 1m',
      'img_url': 'assets/images/allmovies/img3.jpg'
    },
    {
      'title': 'Movie 4',
      'duration': '1h 12m',
      'img_url': 'assets/images/allmovies/img4.jpg'
    },
    {
      'title': 'Movie 5',
      'duration': '1h 5m',
      'img_url': 'assets/images/allmovies/img5.jpg'
    },
    {
      'title': 'Movie 6',
      'duration': '1h 10m',
      'img_url': 'assets/images/allmovies/img1.jpg'
    },
    {
      'title': 'Movie 7',
      'duration': '1h 12m',
      'img_url': 'assets/images/allmovies/img3.jpg'
    },
    {
      'title': 'Movie 8',
      'duration': '2h 12m',
      'img_url': 'assets/images/allmovies/img2.jpg'
    },
    {
      'title': 'Movie 9',
      'duration': '1h 2m',
      'img_url': 'assets/images/allmovies/img4.jpg'
    },
    {
      'title': 'Movie 10',
      'duration': '1h 3m',
      'img_url': 'assets/images/allmovies/img5.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    // var screenWidth = MediaQuery.of(context).size.width;
    // var screenHeight = MediaQuery.of(context).size.height;

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

              // new movies stack
              const Stack(
                children: [],
              ),

              //
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
                height: 250,
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
