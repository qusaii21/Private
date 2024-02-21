import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minimum_cost/main.dart';

class HallOfFameDetailsPage extends StatelessWidget {
  final HallOfFameItem item;

  HallOfFameDetailsPage({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            left: 100,
            top: 400,
            child: SvgPicture.asset(
              'assets/teenyicons_bulb-on-outline.svg',
              height: 250,
              width: 250,
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(150.0),
                    bottomRight: Radius.circular(150.0),
                  ),
                  child: SvgPicture.asset(
                    item.picturePath,
                    width: 50,
                    height: 257,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.calendar_today, color: Color(0xFF5118D6)),
                          SizedBox(width: 5),
                          Text(
                            item.date,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.description_outlined,
                              color: Color(0xFF5118D6)),
                          SizedBox(width: 5),
                          Container(
                            width: 300,
                            child: Text(
                              item.description,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.line_style_outlined,
                              color: Color(0xFF5118D6)),
                          SizedBox(width: 5),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Text(
                                item.theory,
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
