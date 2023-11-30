import 'package:flutter/material.dart';
import 'package:moviebooking_21120168/data/globals.dart';
import 'package:moviebooking_21120168/pages/moviepage.dart';

class AllMoviePage extends StatefulWidget {
  const AllMoviePage({super.key});

  @override
  State<AllMoviePage> createState() => _AllMoviePageState();
}

class _AllMoviePageState extends State<AllMoviePage> {
  List<Map> listMovies = GlobalsData.getBasicInfoMovies();
  final TextEditingController _searchcontroller = TextEditingController();

  void searchMovies(String searchText) {
    String subTitle = searchText.replaceAll('\n', '');

    setState(() {
      listMovies = GlobalsData.getBasicInfoMoviesbyName(subTitle);
    });
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
                    onPressed: () {},
                    icon: const Icon(Icons.account_circle),
                    iconSize: 50,
                  )
                ],
              ),

              // search
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 0),
                child: TextField(
                  onSubmitted: searchMovies,
                  controller: _searchcontroller,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search, size: 20),
                    hintText: 'Search movies or theater',
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 30),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                ),
              ),

              // grid view movies
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Text All movies
                    const Text(
                      "All Movies",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),

                    // text view all
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: const Row(
                        children: [
                          Text(
                            "Filters",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Icon(
                            Icons.sort,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // GRID
              // grid view movies
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    itemCount: listMovies.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 0.55,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
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
                              Text(
                                listMovies[index]['title'],
                                style: const TextStyle(
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                listMovies[index]['duration'],
                                style: const TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
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
