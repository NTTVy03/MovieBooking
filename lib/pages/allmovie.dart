import 'package:flutter/material.dart';
import 'package:moviebooking_21120168/components/header.dart';
import 'package:moviebooking_21120168/components/movie_card.dart';
import 'package:moviebooking_21120168/data/globals.dart';

class AllMoviePage extends StatefulWidget {
  const AllMoviePage({super.key});

  @override
  State<AllMoviePage> createState() => _AllMoviePageState();
}

class _AllMoviePageState extends State<AllMoviePage> {
  late List<Map> listMovies;
  final TextEditingController _searchcontroller = TextEditingController();

  @override
  void initState() {
    super.initState();
    listMovies = GlobalsData.getBasicInfoMovies();
  }

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
              const Header(),

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
                    itemBuilder: (BuildContext context, int index) => MovieCard(
                      id: listMovies[index]['id'],
                      title: listMovies[index]['title'],
                      duration: listMovies[index]['duration'],
                      imgUrl: listMovies[index]['img_url'],
                      width: 90,
                      height: 150,
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
