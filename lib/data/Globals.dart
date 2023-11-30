import 'package:book_my_seat/book_my_seat.dart';
import 'package:moviebooking_21120168/Util/seatnumber.dart';

class GlobalsData {
  static List<Map> hotMovies = [
    {
      'id': 11,
      'title': 'Movie 11',
      'duration': '1h 12m',
      'img_url': 'assets/images/hotmovies/hot1.jpg'
    },
    {
      'id': 12,
      'title': 'Movie 12',
      'duration': '1h 5m',
      'img_url': 'assets/images/hotmovies/hot2.jpg'
    },
    {
      'id': 13,
      'title': 'Movie 13',
      'duration': '1h 10m',
      'img_url': 'assets/images/hotmovies/hot3.jpg'
    },
  ];

  static List<Map> allMovies = [
    {
      'id': 1,
      'title': 'Movie 1',
      'duration': '1h 12m',
      'img_url': 'assets/images/allmovies/img1.jpg'
    },
    {
      'id': 2,
      'title': 'Movie 2',
      'duration': '1h 22m',
      'img_url': 'assets/images/allmovies/img2.jpg'
    },
    {
      'id': 3,
      'title': 'Movie 3',
      'duration': '1h 1m',
      'img_url': 'assets/images/allmovies/img3.jpg'
    },
    {
      'id': 4,
      'title': 'Movie 4',
      'duration': '1h 12m',
      'img_url': 'assets/images/allmovies/img4.jpg'
    },
    {
      'id': 5,
      'title': 'Movie 5',
      'duration': '1h 5m',
      'img_url': 'assets/images/allmovies/img5.jpg'
    },
    {
      'id': 6,
      'title': 'Movie 6',
      'duration': '1h 10m',
      'img_url': 'assets/images/allmovies/img1.jpg'
    },
    {
      'id': 7,
      'title': 'Movie 7',
      'duration': '1h 12m',
      'img_url': 'assets/images/allmovies/img3.jpg'
    },
    {
      'id': 8,
      'title': 'Movie 8',
      'duration': '2h 12m',
      'img_url': 'assets/images/allmovies/img2.jpg'
    },
    {
      'id': 9,
      'title': 'Movie 9',
      'duration': '1h 2m',
      'img_url': 'assets/images/allmovies/img4.jpg'
    },
    {
      'id': 10,
      'title': 'Movie 10',
      'duration': '1h 3m',
      'img_url': 'assets/images/allmovies/img5.jpg'
    },
    {
      'id': 11,
      'title': 'Movie 11',
      'duration': '1h 12m',
      'img_url': 'assets/images/hotmovies/hot1.jpg'
    },
    {
      'id': 12,
      'title': 'Movie 12',
      'duration': '1h 5m',
      'img_url': 'assets/images/hotmovies/hot2.jpg'
    },
    {
      'id': 13,
      'title': 'Movie 13',
      'duration': '1h 10m',
      'img_url': 'assets/images/hotmovies/hot3.jpg'
    },
  ];

  static List<List<SeatState>> seatstate = [
    [
      SeatState.unselected,
      SeatState.sold,
      SeatState.unselected,
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
      SeatState.unselected,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.empty,
      SeatState.sold,
      SeatState.unselected,
      SeatState.unselected,
      SeatState.sold,
    ],
    [
      SeatState.unselected,
      SeatState.sold,
      SeatState.unselected,
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
      SeatState.unselected,
      SeatState.unselected,
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
