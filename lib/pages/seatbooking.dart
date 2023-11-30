import 'package:flutter/material.dart';
import 'package:moviebooking_21120168/Util/seatnumber.dart';
import 'package:moviebooking_21120168/components/border_radius_text.dart';
import 'package:moviebooking_21120168/components/color_circle_text.dart';
import 'package:moviebooking_21120168/components/payable.dart';
import 'package:moviebooking_21120168/components/ticket.dart';
import 'package:moviebooking_21120168/data/globals.dart';
import 'package:book_my_seat/book_my_seat.dart';
import 'package:moviebooking_21120168/pages/confirm_ticket_booking.dart';

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
  double price = 5;
  @override
  void initState() {
    super.initState();
    seatstate = GlobalsData.getSeatState(
        widget.movieTitle, widget.theater, widget.date, widget.time);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ConfirmTicketBookingPage(),
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
          decoration: BoxDecoration(
            image: DecorationImage(
              opacity: 0.3,
              image: AssetImage(widget.imgUrl),
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
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      double columnWidth = constraints.maxWidth;
                      return Column(
                        children: [
                          Text(
                            widget.movieTitle,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BorderRadiusText(
                                content: widget.date,
                                width: columnWidth * 0.45,
                              ),
                              BorderRadiusText(
                                content: widget.time,
                                width: columnWidth * 0.45,
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          BorderRadiusText(
                            content: widget.theater,
                            width: columnWidth,
                          ),
                        ],
                      );
                    },
                  ),
                ),

                const SizedBox(height: 20),

                // Color define
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ColorCircleWithText(
                      color: Colors.grey,
                      text: "Available",
                    ),
                    ColorCircleWithText(
                      color: Colors.black,
                      text: "Booked",
                    ),
                    ColorCircleWithText(
                      color: Colors.blue,
                      text: "Selected",
                    ),
                  ],
                ),

                const SizedBox(height: 50.0),

                // SEAT Grid
                Container(
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  height: 300,
                  child: Center(
                    child: Column(children: [
                      // SCREEN
                      Container(
                        height: 20,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/moviescreen/screen.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),

                      const SizedBox(height: 16.0),

                      // SEAT GRID
                      SeatLayoutWidget(
                        onSeatStateChanged: manageSeatStateChange,
                        stateModel: SeatLayoutStateModel(
                          pathDisabledSeat:
                              'assets/images/seatstate/booked.svg',
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
                    ]),
                  ),
                ),

                const SizedBox(height: 10.0),

                // Ticket number & Payable
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                    height: 90,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(
                        color: Colors.black54,
                        width: 2,
                      ),
                    ),
                    child: IntrinsicHeight(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Number of Ticket
                            TicketBox(numberTickets: selectedSeats.length),

                            const VerticalDivider(
                              thickness: 2,
                              color: Colors.black54,
                            ),

                            // Payable
                            Payable(payable: selectedSeats.length * price),
                          ]),
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

  void manageSeatStateChange(int rowI, int colI, SeatState currentState) {
    setState(() {
      if (currentState == SeatState.selected) {
        selectedSeats.add(SeatNumber(rowI: rowI, colI: colI));
      } else {
        selectedSeats.remove(SeatNumber(rowI: rowI, colI: colI));
      }
    });
  }
}
