import 'package:flutter/material.dart';
import 'package:moviebooking_21120168/Util/seatnumber.dart';
import 'package:moviebooking_21120168/data/globals.dart';
import 'package:book_my_seat/book_my_seat.dart';

class SeatBookingPage extends StatefulWidget {
  final String movieTitle;
  final String theater;
  final String date;
  final String time;
  final String imgUrl;
  const SeatBookingPage({
    super.key,
    required this.movieTitle,
    required this.theater,
    required this.date,
    required this.time,
    required this.imgUrl,
  });

  @override
  State<SeatBookingPage> createState() => _SeatBookingPageState();
}

class _SeatBookingPageState extends State<SeatBookingPage> {
  late final List<List<SeatState>> seatstate;
  Set<SeatNumber> selectedSeats = {};

  @override
  void initState() {
    super.initState();
    seatstate = GlobalsData.getSeatState(
        widget.movieTitle, widget.theater, widget.date, widget.time);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            opacity: 0.5,
            image: AssetImage(widget.imgUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          // color: Colors.black54,
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const Text(
              //   'Movie Name',
              //   style: TextStyle(
              //     color: Colors.white,
              //     fontWeight: FontWeight.bold,
              //     fontSize: 24.0,
              //   ),
              // ),
              // const SizedBox(height: 8.0),
              // const Row(
              //   children: [
              //     Icon(
              //       Icons.calendar_today,
              //       color: Colors.white,
              //     ),
              //     SizedBox(width: 4.0),
              //     Text(
              //       'Date',
              //       style: TextStyle(color: Colors.white),
              //     ),
              //     SizedBox(width: 16.0),
              //     Icon(
              //       Icons.access_time,
              //       color: Colors.white,
              //     ),
              //     SizedBox(width: 4.0),
              //     Text(
              //       'Time',
              //       style: TextStyle(color: Colors.white),
              //     ),
              //     SizedBox(width: 16.0),
              //     Icon(
              //       Icons.theater_comedy,
              //       color: Colors.white,
              //     ),
              //     SizedBox(width: 4.0),
              //     Text(
              //       'Theater Name',
              //       style: TextStyle(color: Colors.white),
              //     ),
              //   ],
              // ),
              // const SizedBox(height: 16.0),
              // const Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   children: [
              //     CircleAvatar(
              //       backgroundColor: Colors.grey,
              //       radius: 12.0,
              //     ),
              //     CircleAvatar(
              //       backgroundColor: Colors.black,
              //       radius: 12.0,
              //     ),
              //     CircleAvatar(
              //       backgroundColor: Colors.blue,
              //       radius: 12.0,
              //     ),
              //   ],
              // ),
              // const SizedBox(height: 16.0),

              // BOOKING SEAT
              Center(
                child: Flexible(
                  child: SizedBox(
                    width: double.maxFinite,
                    height: 500,
                    child: SeatLayoutWidget(
                      onSeatStateChanged: manageSeatStateChange,
                      stateModel: SeatLayoutStateModel(
                        pathDisabledSeat: 'assets/images/seatstate/booked.svg',
                        pathSelectedSeat:
                            'assets/images/seatstate/selected.svg',
                        pathSoldSeat: 'assets/images/seatstate/booked.svg',
                        pathUnSelectedSeat:
                            'assets/images/seatstate/available.svg',
                        rows: seatstate.length,
                        cols: seatstate[0].length,
                        seatSvgSize: 20,
                        currentSeatsState: seatstate,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      /*
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.black54,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Selected Seats: 2',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Total Payable: \$20.00',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
            FloatingActionButton(
              onPressed: () {
                // Confirm selection logic goes here
              },
              child: const Icon(Icons.check),
            ),
          ],
        ),
      ),
    
      */
    );
  }

  void manageSeatStateChange(int rowI, int colI, SeatState currentState) {
    if (currentState == SeatState.selected) {
      selectedSeats.add(SeatNumber(rowI: rowI, colI: colI));
    } else {
      selectedSeats.remove(SeatNumber(rowI: rowI, colI: colI));
    }
  }
}
