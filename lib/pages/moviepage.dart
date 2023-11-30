import 'package:flutter/material.dart';
import 'package:moviebooking_21120168/components/icon_and_text.dart';
import 'package:moviebooking_21120168/components/tag.dart';
import 'package:moviebooking_21120168/data/globals.dart';
import 'package:moviebooking_21120168/pages/seatbooking.dart';

class MoviePage extends StatefulWidget {
  final int index; // index of movie
  const MoviePage({super.key, required this.index});

  @override
  State<MoviePage> createState() => _MoviePageState();
}

class _MoviePageState extends State<MoviePage> {
  late final Map movieInfo;
  late final Map movieSchedule;
  late final String selectedDate;
  late final String selectedTime;
  late final String selectedTheater;

  @override
  void initState() {
    super.initState();
    movieInfo = GlobalsData.getMovieInfoByIndex(widget.index);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // BOTTOM RIGHT ARROW BUTTON
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SeatBookingPage(
                  //   SeatBookingPage(
                  time: "9:30 AM",
                  date: "FRIDAY, 12",
                  movieTitle: "Ant Man and The Wasp",
                  theater: "Sathyam Cinemas: Royalpettah",
                  imgUrl: "assets/images/allmovies/img5.jpg",
                  // movieTitle: movieInfo['title'],
                  // theater: selectedTheater,
                  // date: selectedDate,
                  // time: selectedTime,
                  // imgUrl: movieInfo['img_url'],
                ),
              ),
            );
          },
          backgroundColor: Colors.blue,
          child: const Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        body: Container(
          // SET Background
          decoration: BoxDecoration(
            image: DecorationImage(
              opacity: 0.3,
              image: AssetImage(movieInfo['img_url']),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: Column(
              children: [
                // Back to previous page
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),

                // Pop up Movie info
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
                  alignment: AlignmentDirectional.topCenter,
                  child: Column(
                    children: [
                      // TITLE
                      Text(
                        movieInfo['title'],
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),

                      // STAR - DURATION - QUALITY
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0, right: 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // STAR
                            IconAndText(
                              icon: Icons.star,
                              text: movieInfo['star'].toString(),
                            ),

                            // DURATION
                            IconAndText(
                              icon: Icons.timelapse,
                              text: movieInfo['duration'],
                            ),

                            // QUALITY
                            IconAndText(
                              icon: Icons.movie_filter,
                              text: movieInfo['quality'],
                            ),
                          ],
                        ),
                      ),

                      // Horizontal line
                      const Divider(thickness: 1),

                      // Synopsis & Tags
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Synopsis Text
                          const Text(
                            "Synopsis",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: movieInfo['tag'].map<Widget>((tag) {
                              return Tag(tag: tag);
                            }).toList(),
                          )
                        ],
                      ),

                      const SizedBox(height: 10),

                      // content
                      SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: SizedBox(
                          height: 100,
                          child: Text(
                            movieInfo['synopsis'],
                            textAlign: TextAlign.justify,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 10),
                      // Read more
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.grey[200], // Set the background color
                            borderRadius: BorderRadius.circular(
                                20.0), // Adjust the border radius as needed
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 1.0), // Adjust the padding as needed

                          child: const Icon(
                            Icons.keyboard_arrow_down,
                            size: 25,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // SCHEDULE here
              ],
            ),
          ),
        ),
      ),
    );
  }
}
