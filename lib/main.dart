import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const PosMain());
}

class PosMain extends StatelessWidget {
  const PosMain({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyPosMain(),
    );
  }
}

class MyPosMain extends StatelessWidget {
  const MyPosMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xEEEEEEEE),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Dashboard',
          style: GoogleFonts.getFont('Playfair Display',
              fontWeight: FontWeight.w600, color: Colors.black),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: ListView(
              children: [
                //Welcome message
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 12, bottom: 12),
                  child: Text(
                    'Welcome Jubert!',
                    style: GoogleFonts.getFont('Playfair Display',
                        fontSize: 35,
                        color: Colors.black87,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                //Statistics Card
                Padding(
                  padding:
                      const EdgeInsets.only(right: 15, left: 15, bottom: 15),
                  child: Card(
                    elevation: 0,
                    color: const Color(0xffd9f5ea),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, right: 80, left: 12),
                              child: Text(
                                'It\'s time to manage your sale\'s like never before.',
                                style: GoogleFonts.getFont('Playfair Display',
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, right: 80, left: 12),
                              child: Text(
                                'Decide what\'s best for your business in order to have growth of your income.',
                                style: GoogleFonts.getFont('Poppins',
                                    fontSize: 12, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                          //Button View Statistics
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: const Size(120, 35),
                                        backgroundColor: const Color.fromARGB(
                                            255, 131, 108, 233),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    child: Text(
                                      'View Statistics',
                                      style: GoogleFonts.getFont('Poppins'),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 100,
                                  ),
                                  child: Image.asset(
                                    'lib/assets/images/people.png',
                                    cacheWidth: 150,
                                    cacheHeight: 150,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                //Today's Activity Card
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  child: Card(
                    elevation: 0.3,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Image.asset(
                              'lib/assets/images/activity.png',
                              fit: BoxFit.fitHeight,
                              filterQuality: FilterQuality.low,
                              scale: 3.0,
                            ),
                          ),
                        ),
                        //Items total Sold
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Text(
                              '58',
                              style: GoogleFonts.getFont('Playfair Display',
                                  fontSize: 65, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        // Items sold desciption
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 50, right: 50, bottom: 15, top: 15),
                            child: Text(
                              'Total number of items that were sold for today.',
                              style: GoogleFonts.getFont('Poppins',
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),

                        //Sell more button
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 25, right: 25, bottom: 20, top: 10),
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                shape: const StadiumBorder(),
                                side: const BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(255, 131, 108, 233),
                                ),
                              ),
                              onPressed: () {
                                // ignore: todo
                                //TODO SELL MORE BTN
                              },
                              child: Text(
                                'Sell more items',
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  color:
                                      const Color.fromARGB(255, 131, 108, 233),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //Circular Gauge Chart
                Padding(
                  padding:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  child: Card(
                    elevation: 0.3,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 15, top: 10, bottom: 10, right: 10),
                            child: Text(
                              'Your progress so far',
                              style: GoogleFonts.getFont('Playfair Display',
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        Center(
                                      child: Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 25),
                                        child: CircularPercentIndicator(
                                          radius: 100.0,
                                          lineWidth: 20.0,
                                          animation: true,
                                          percent: 0.7,
                                          center: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Flexible(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 30),
                                                  child: Text(
                                                    "70.0%",
                                                    style: GoogleFonts.getFont(
                                                      'Playfair Display',
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              IconButton(
                                                onPressed: () {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                        'Press and hold to view info',
                                                        style:
                                                            GoogleFonts.getFont(
                                                                'Poppins'),
                                                      ),
                                                      dismissDirection:
                                                          DismissDirection
                                                              .endToStart,
                                                      backgroundColor:
                                                          Colors.grey,
                                                      duration: const Duration(
                                                          seconds: 1),
                                                    ),
                                                  );
                                                },
                                                tooltip:
                                                    'Percentage is based on what total achieved on total items stocks',
                                                iconSize: 20,
                                                color: Colors.grey,
                                                icon: const Icon(
                                                    Icons.info_outline),
                                              ),
                                            ],
                                          ),
                                          footer: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 15),
                                            child: Text(
                                              "Today's Achivement",
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                fontSize: 17,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                          circularStrokeCap:
                                              CircularStrokeCap.round,
                                          progressColor: const Color.fromARGB(
                                              255, 131, 108, 233),
                                        ),
                                      ),
                                    ),

                        // ignore: todo
                        //TODO Your Activity CARD
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
