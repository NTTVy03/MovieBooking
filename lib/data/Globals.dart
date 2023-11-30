import 'package:book_my_seat/book_my_seat.dart';
import 'package:moviebooking_21120168/Util/seatnumber.dart';

class GlobalsData {
  static List<Map> hotMovies = [
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
  ];

  static List<Map> allMovies = [
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

  static List<List<SeatState>> seatstate = [
    [
      SeatState.sold,
      SeatState.sold,
      SeatState.sold,
      SeatState.sold,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.empty,
      SeatState.sold,
      SeatState.sold,
      SeatState.unselected,
      SeatState.empty,
    ],
    [
      SeatState.unselected,
      SeatState.sold,
      SeatState.sold,
      SeatState.sold,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.empty,
      SeatState.sold,
      SeatState.sold,
      SeatState.unselected,
      SeatState.sold,
    ],
    [
      SeatState.unselected,
      SeatState.sold,
      SeatState.sold,
      SeatState.sold,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.empty,
      SeatState.sold,
      SeatState.sold,
      SeatState.unselected,
      SeatState.sold,
    ],
    [
      SeatState.unselected,
      SeatState.sold,
      SeatState.sold,
      SeatState.sold,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.empty,
      SeatState.sold,
      SeatState.sold,
      SeatState.unselected,
      SeatState.sold,
    ],
    [
      SeatState.unselected,
      SeatState.sold,
      SeatState.sold,
      SeatState.sold,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.empty,
      SeatState.sold,
      SeatState.sold,
      SeatState.unselected,
      SeatState.sold,
    ],
    [
      SeatState.unselected,
      SeatState.sold,
      SeatState.sold,
      SeatState.sold,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.empty,
      SeatState.sold,
      SeatState.sold,
      SeatState.unselected,
      SeatState.sold,
    ],
    [
      SeatState.unselected,
      SeatState.sold,
      SeatState.sold,
      SeatState.sold,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.empty,
      SeatState.sold,
      SeatState.sold,
      SeatState.unselected,
      SeatState.sold,
    ],
    [
      SeatState.unselected,
      SeatState.sold,
      SeatState.sold,
      SeatState.sold,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.empty,
      SeatState.sold,
      SeatState.sold,
      SeatState.unselected,
      SeatState.sold,
    ],
    [
      SeatState.unselected,
      SeatState.sold,
      SeatState.sold,
      SeatState.sold,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.empty,
      SeatState.sold,
      SeatState.sold,
      SeatState.unselected,
      SeatState.sold,
    ],
    [
      SeatState.unselected,
      SeatState.sold,
      SeatState.sold,
      SeatState.sold,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.empty,
      SeatState.sold,
      SeatState.sold,
      SeatState.unselected,
      SeatState.sold,
    ],
    [
      SeatState.unselected,
      SeatState.sold,
      SeatState.sold,
      SeatState.sold,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.empty,
      SeatState.sold,
      SeatState.sold,
      SeatState.unselected,
      SeatState.sold,
    ],
    [
      SeatState.unselected,
      SeatState.sold,
      SeatState.sold,
      SeatState.sold,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.empty,
      SeatState.sold,
      SeatState.sold,
      SeatState.unselected,
      SeatState.sold,
    ],
  ].cast<List<SeatState>>();

  static Map getMovieInfoByIndex(int index) {
    return allMovies[index];
  }

  static Map getSeatBooking(int index) {
    return allMovies[index];
  }

  static List<Map> getMoviebyName(String title) {
    List<Map> filteredList = [];

    for (Map obj in allMovies) {
      if (obj['title'].contains(title)) {
        filteredList.add(obj);
      }
    }
    return filteredList;
  }

  static List<List<SeatState>> getSeatState(
      String movieTitle, String theater, String date, String time) {
    return seatstate;
  }

  static void updateSeatState(Set<SeatNumber> seats) {
    for (SeatNumber seat in seats) {
      seatstate[seat.getRow()][seat.getCol()] = SeatState.sold;
    }
  }
}
