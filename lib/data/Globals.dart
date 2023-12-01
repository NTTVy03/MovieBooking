import 'package:book_my_seat/book_my_seat.dart';
import 'package:moviebooking_21120168/Util/seatnumber.dart';

class GlobalsData {
// VALUE
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
  static List<Map> movieInfo = [
    {
      'id': 1,
      'title': 'Movie 1',
      'duration': '1h 12m',
      'img_url': 'assets/images/allmovies/img1.jpg',
      'star': 4.5,
      'quality': 'IMAX 4D',
      'synopsis':
          "The film tells the story of Ilya Goryunov, who ends up behind bars on a false charge. Once on the outside, he realizes that it is no longer possible to return to his former life for which is his so nostalgic and he decides to take revenge on the policeman whose fault it was that he ended up in prison. As a result of their meeting, Ilya ends up in possession of his enemy's smartphone and through a series of texts gradually takes his place",
      'tag': ['Action', 'Romantic'],
      'trailer': "https://youtu.be/Yuy029-UlOE?si=1BGCRNkLCSzXTeRW",
    },
    {
      'id': 2,
      'title': 'Movie 2',
      'duration': '1h 22m',
      'img_url': 'assets/images/allmovies/img2.jpg',
      'star': 4.5,
      'quality': 'IMAX 3D',
      'synopsis':
          "The film tells the story of Ilya Goryunov, who ends up behind bars on a false charge. Once on the outside, he realizes that it is no longer possible to return to his former life for which is his so nostalgic and he decides to take revenge on the policeman whose fault it was that he ended up in prison. As a result of their meeting, Ilya ends up in possession of his enemy's smartphone and through a series of texts gradually takes his place",
      'tag': ['Romantic', 'Adventure'],
      'trailer': "https://youtu.be/Yuy029-UlOE?si=1BGCRNkLCSzXTeRW",
    },
    {
      'id': 3,
      'title': 'Movie 3',
      'duration': '1h 1m',
      'img_url': 'assets/images/allmovies/img3.jpg',
      'star': 4.5,
      'quality': 'IMAX 3D',
      'synopsis':
          "The film tells the story of Ilya Goryunov, who ends up behind bars on a false charge. Once on the outside, he realizes that it is no longer possible to return to his former life for which is his so nostalgic and he decides to take revenge on the policeman whose fault it was that he ended up in prison. As a result of their meeting, Ilya ends up in possession of his enemy's smartphone and through a series of texts gradually takes his place",
      'tag': ['Action', 'Adventure'],
      'trailer': "https://youtu.be/Yuy029-UlOE?si=1BGCRNkLCSzXTeRW",
    },
    {
      'id': 4,
      'title': 'Movie 4',
      'duration': '1h 12m',
      'img_url': 'assets/images/allmovies/img4.jpg',
      'star': 4.5,
      'quality': 'IMAX 3D',
      'synopsis':
          "The film tells the story of Ilya Goryunov, who ends up behind bars on a false charge. Once on the outside, he realizes that it is no longer possible to return to his former life for which is his so nostalgic and he decides to take revenge on the policeman whose fault it was that he ended up in prison. As a result of their meeting, Ilya ends up in possession of his enemy's smartphone and through a series of texts gradually takes his place",
      'tag': ['Action', 'Romantic'],
      'trailer': "https://youtu.be/Yuy029-UlOE?si=1BGCRNkLCSzXTeRW",
    },
    {
      'id': 5,
      'title': 'Movie 5',
      'duration': '1h 5m',
      'img_url': 'assets/images/allmovies/img5.jpg',
      'star': 4.5,
      'quality': 'IMAX 3D',
      'synopsis':
          "The film tells the story of Ilya Goryunov, who ends up behind bars on a false charge. Once on the outside, he realizes that it is no longer possible to return to his former life for which is his so nostalgic and he decides to take revenge on the policeman whose fault it was that he ended up in prison. As a result of their meeting, Ilya ends up in possession of his enemy's smartphone and through a series of texts gradually takes his place",
      'tag': ['Romantic', 'Adventure'],
      'trailer': "https://youtu.be/Yuy029-UlOE?si=1BGCRNkLCSzXTeRW",
    },
    {
      'id': 6,
      'title': 'Movie 6',
      'duration': '1h 10m',
      'img_url': 'assets/images/allmovies/img1.jpg',
      'star': 4.5,
      'quality': 'IMAX 3D',
      'synopsis':
          "The film tells the story of Ilya Goryunov, who ends up behind bars on a false charge. Once on the outside, he realizes that it is no longer possible to return to his former life for which is his so nostalgic and he decides to take revenge on the policeman whose fault it was that he ended up in prison. As a result of their meeting, Ilya ends up in possession of his enemy's smartphone and through a series of texts gradually takes his place",
      'tag': ['Action', 'Romantic'],
      'trailer': "https://youtu.be/Yuy029-UlOE?si=1BGCRNkLCSzXTeRW",
    },
    {
      'id': 7,
      'title': 'Movie 7',
      'duration': '1h 12m',
      'img_url': 'assets/images/allmovies/img3.jpg',
      'star': 4.5,
      'quality': 'IMAX 3D',
      'synopsis':
          "The film tells the story of Ilya Goryunov, who ends up behind bars on a false charge. Once on the outside, he realizes that it is no longer possible to return to his former life for which is his so nostalgic and he decides to take revenge on the policeman whose fault it was that he ended up in prison. As a result of their meeting, Ilya ends up in possession of his enemy's smartphone and through a series of texts gradually takes his place",
      'tag': ['Action', 'Adventure'],
      'trailer': "https://youtu.be/Yuy029-UlOE?si=1BGCRNkLCSzXTeRW",
    },
    {
      'id': 8,
      'title': 'Movie 8',
      'duration': '2h 12m',
      'img_url': 'assets/images/allmovies/img2.jpg',
      'star': 4.5,
      'quality': 'IMAX 3D',
      'synopsis':
          "The film tells the story of Ilya Goryunov, who ends up behind bars on a false charge. Once on the outside, he realizes that it is no longer possible to return to his former life for which is his so nostalgic and he decides to take revenge on the policeman whose fault it was that he ended up in prison. As a result of their meeting, Ilya ends up in possession of his enemy's smartphone and through a series of texts gradually takes his place",
      'tag': ['Romantic', 'Adventure'],
      'trailer': "https://youtu.be/Yuy029-UlOE?si=1BGCRNkLCSzXTeRW",
    },
    {
      'id': 9,
      'title': 'Movie 9',
      'duration': '1h 2m',
      'img_url': 'assets/images/allmovies/img4.jpg',
      'star': 4.5,
      'quality': 'IMAX 3D',
      'synopsis':
          "The film tells the story of Ilya Goryunov, who ends up behind bars on a false charge. Once on the outside, he realizes that it is no longer possible to return to his former life for which is his so nostalgic and he decides to take revenge on the policeman whose fault it was that he ended up in prison. As a result of their meeting, Ilya ends up in possession of his enemy's smartphone and through a series of texts gradually takes his place",
      'tag': ['Action', 'Adventure'],
      'trailer': "https://youtu.be/Yuy029-UlOE?si=1BGCRNkLCSzXTeRW",
    },
    {
      'id': 10,
      'title': 'Movie 10',
      'duration': '1h 3m',
      'img_url': 'assets/images/allmovies/img5.jpg',
      'star': 4.5,
      'quality': 'IMAX 3D',
      'synopsis':
          "The film tells the story of Ilya Goryunov, who ends up behind bars on a false charge. Once on the outside, he realizes that it is no longer possible to return to his former life for which is his so nostalgic and he decides to take revenge on the policeman whose fault it was that he ended up in prison. As a result of their meeting, Ilya ends up in possession of his enemy's smartphone and through a series of texts gradually takes his place",
      'tag': ['Action', 'Adventure'],
      'trailer': "https://youtu.be/Yuy029-UlOE?si=1BGCRNkLCSzXTeRW",
    },
    {
      'id': 11,
      'title': 'Movie 11',
      'duration': '1h 12m',
      'img_url': 'assets/images/hotmovies/hot1.jpg',
      'star': 4.5,
      'quality': 'IMAX 2D',
      'synopsis':
          "The film tells the story of Ilya Goryunov, who ends up behind bars on a false charge. Once on the outside, he realizes that it is no longer possible to return to his former life for which is his so nostalgic and he decides to take revenge on the policeman whose fault it was that he ended up in prison. As a result of their meeting, Ilya ends up in possession of his enemy's smartphone and through a series of texts gradually takes his place",
      'trailer': "https://youtu.be/Yuy029-UlOE?si=1BGCRNkLCSzXTeRW",
      'tag': ['Romantic', 'Adventure'],
    },
    {
      'id': 12,
      'title': 'Movie 12',
      'duration': '1h 5m',
      'img_url': 'assets/images/hotmovies/hot2.jpg',
      'star': 4.5,
      'quality': 'IMAX 1D',
      'synopsis':
          "The film tells the story of Ilya Goryunov, who ends up behind bars on a false charge. Once on the outside, he realizes that it is no longer possible to return to his former life for which is his so nostalgic and he decides to take revenge on the policeman whose fault it was that he ended up in prison. As a result of their meeting, Ilya ends up in possession of his enemy's smartphone and through a series of texts gradually takes his place",
      'tag': ['Action', 'Cute'],
      'trailer': "https://youtu.be/Yuy029-UlOE?si=1BGCRNkLCSzXTeRW",
    },
    {
      'id': 13,
      'title': 'Movie 12',
      'duration': '1h 5m',
      'img_url': 'assets/images/hotmovies/hot3.jpg',
      'star': 4.5,
      'quality': 'IMAX 1D',
      'synopsis':
          "The film tells the story of Ilya Goryunov, who ends up behind bars on a false charge. Once on the outside, he realizes that it is no longer possible to return to his former life for which is his so nostalgic and he decides to take revenge on the policeman whose fault it was that he ended up in prison. As a result of their meeting, Ilya ends up in possession of his enemy's smartphone and through a series of texts gradually takes his place",
      'tag': ['Action', 'Cute'],
      'trailer': "https://youtu.be/Yuy029-UlOE?si=1BGCRNkLCSzXTeRW",
    },
  ];
  static List<List<SeatState>> seatstate = [
    [
      SeatState.unselected,
      SeatState.sold,
      SeatState.unselected,
      SeatState.unselected,
      SeatState.empty,
      SeatState.empty,
      SeatState.empty,
      SeatState.sold,
      SeatState.sold,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.unselected,
      SeatState.unselected,
    ],
    [
      SeatState.sold,
      SeatState.unselected,
      SeatState.unselected,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.empty,
      SeatState.sold,
      SeatState.unselected,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.unselected,
      SeatState.unselected,
    ],
    [
      SeatState.sold,
      SeatState.unselected,
      SeatState.sold,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.empty,
      SeatState.sold,
      SeatState.unselected,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.unselected,
      SeatState.unselected,
    ],
    [
      SeatState.unselected,
      SeatState.unselected,
      SeatState.sold,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.empty,
      SeatState.sold,
      SeatState.unselected,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.unselected,
      SeatState.unselected,
    ],
    [
      SeatState.sold,
      SeatState.sold,
      SeatState.unselected,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.empty,
      SeatState.sold,
      SeatState.unselected,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.unselected,
      SeatState.unselected,
    ],
    [
      SeatState.unselected,
      SeatState.unselected,
      SeatState.sold,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.empty,
      SeatState.sold,
      SeatState.unselected,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.unselected,
      SeatState.unselected,
    ],
    [
      SeatState.unselected,
      SeatState.sold,
      SeatState.unselected,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.empty,
      SeatState.sold,
      SeatState.unselected,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.unselected,
      SeatState.unselected,
    ],
    [
      SeatState.unselected,
      SeatState.unselected,
      SeatState.unselected,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.empty,
      SeatState.sold,
      SeatState.unselected,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.unselected,
      SeatState.unselected,
    ],
    [
      SeatState.unselected,
      SeatState.unselected,
      SeatState.unselected,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.empty,
      SeatState.sold,
      SeatState.unselected,
      SeatState.unselected,
      SeatState.empty,
      SeatState.empty,
      SeatState.unselected,
      SeatState.unselected,
    ],
    [
      SeatState.unselected,
      SeatState.unselected,
      SeatState.unselected,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.empty,
      SeatState.unselected,
      SeatState.unselected,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.unselected,
      SeatState.unselected,
    ],
    [
      SeatState.unselected,
      SeatState.unselected,
      SeatState.unselected,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.empty,
      SeatState.unselected,
      SeatState.unselected,
      SeatState.sold,
      SeatState.empty,
      SeatState.empty,
      SeatState.unselected,
      SeatState.unselected,
    ],
  ].cast<List<SeatState>>();

  static List<Map> date = [
    {
      'id': 1,
      'order': 'MON',
      'date': 12,
    },
    {
      'id': 2,
      'order': 'TUE',
      'date': 13,
    },
    {
      'id': 3,
      'order': 'WED',
      'date': 14,
    },
    {
      'id': 4,
      'order': 'THU',
      'date': 15,
    },
    {
      'id': 5,
      'order': 'FRI',
      'date': 16,
    },
    {
      'id': 6,
      'order': 'SAT',
      'date': 17,
    },
    {
      'id': 7,
      'order': 'SUN',
      'date': 18,
    },
  ];

  static List<Map> movieSchedule = [
    {
      'cinema': "Cinema name 1",
      'listtime': [
        {'id': 1, 'time': "9:30", 'status': 0},
        {'id': 2, 'time': "10:30", 'status': -1},
        {'id': 3, 'time': "11:30", 'status': 0},
        {'id': 4, 'time': "12:30", 'status': -1},
        {'id': 5, 'time': "13:30", 'status': 0},
        {'id': 6, 'time': "14:30", 'status': 0},
        {'id': 7, 'time': "15:30", 'status': 0},
        {'id': 8, 'time': "16:30", 'status': 0},
      ]
    },
    {
      'cinema': "Cinema name 2",
      'listtime': [
        {'id': 9, 'time': "9:30", 'status': 0},
        {'id': 10, 'time': "10:30", 'status': 0},
        {'id': 11, 'time': "11:30", 'status': 0},
        {'id': 12, 'time': "12:30", 'status': 0},
        {'id': 13, 'time': "13:30", 'status': 0},
        {'id': 14, 'time': "14:30", 'status': 0},
        {'id': 15, 'time': "15:30", 'status': 0},
        {'id': 16, 'time': "16:30", 'status': 0},
      ]
    },
    {
      'cinema': "Cinema name 3",
      'listtime': [
        {'id': 17, 'time': "9:30", 'status': 0},
        {'id': 18, 'time': "10:30", 'status': 0},
        {'id': 19, 'time': "11:30", 'status': 0},
        {'id': 20, 'time': "12:30", 'status': -1},
        {'id': 21, 'time': "13:30", 'status': 0},
        {'id': 22, 'time': "14:30", 'status': -1},
        {'id': 23, 'time': "15:30", 'status': 0},
        {'id': 24, 'time': "16:30", 'status': 0},
      ]
    },
    {
      'cinema': "Cinema name 4",
      'listtime': [
        {'id': 25, 'time': "9:30", 'status': 0},
        {'id': 26, 'time': "10:30", 'status': -1},
        {'id': 27, 'time': "11:30", 'status': 0},
        {'id': 28, 'time': "12:30", 'status': 0},
        {'id': 29, 'time': "13:30", 'status': 0},
        {'id': 30, 'time': "14:30", 'status': 0},
        {'id': 31, 'time': "15:30", 'status': 0},
        {'id': 32, 'time': "16:30", 'status': 0},
      ]
    },
  ];

// METHOD
  static List<Map> getBasicInfoMovies() {
    List<Map> basicInfo = movieInfo.map((element) {
      return {
        'id': element['id'],
        'title': element['title'],
        'duration': element['duration'],
        'img_url': element['img_url'],
      };
    }).toList();

    return basicInfo;
  }

  static Map getMovieInfoByIndex(int index) {
    for (Map obj in movieInfo) {
      if (obj['id'] == index) {
        return obj;
      }
    }

    return {};
  }

  static List<Map> getBasicInfoMoviesbyName(String title) {
    List<Map> filteredList = [];

    for (Map obj in movieInfo) {
      if (obj['title'].contains(title)) {
        filteredList.add({
          'id': obj['id'],
          'title': obj['title'],
          'duration': obj['duration'],
          'img_url': obj['img_url'],
        });
      }
    }

    return filteredList;
  }

  static List<List<SeatState>> getSeatState(
      String movieTitle, String theater, String date, String time) {
    // replace by query to Database
    return seatstate;
  }

  static void updateSeatState(Set<SeatNumber> seats) {
    for (SeatNumber seat in seats) {
      seatstate[seat.getRow()][seat.getCol()] = SeatState.sold;
    }
  }

  static List<Map> getDate() {
    return date;
  }

  static List<Map> getMovieSchedule(int movieID, int dateID) {
    // replace by get schedule of a movie in a date from Database
    return movieSchedule;
  }
}
