import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:minimum_cost/HallOfFameInside.dart';

class HallOfFameItem {
  final String title;
  final String date;
  final String picturePath;
  final String description;
  final String theory;

  HallOfFameItem({
    required this.title,
    required this.date,
    required this.picturePath,
    required this.description,
    required this.theory,
  });
}

class HallOfFamePage extends StatelessWidget {
  final List<HallOfFameItem> items = [
    HallOfFameItem(
      title: 'Smart Home System using something something',
      date: '12/02/2024',
      picturePath:
          'assets/Blue Black Simple Technology Linktree Background (22).svg',
      description: 'IEEE International Symposium on Circuits and Systems',
      theory:
          'Lorem qqqqqqqqqqqqqqqqqqqqqwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqipsum dolor sit amet, consectetur adipiscing elit. Vivamus ut magna nec sapien porta volutpat sit amet vel urna. Integer rutrum auctor enim, in aliquam massa viverra id. Sed condimentum risus ut magna scelerisque facilisis.',
    ),
    HallOfFameItem(
      title: 'Smart Home System using something something',
      date: '12/02/2024',
      picturePath:
          'assets/Blue Black Simple Technology Linktree Background (22).svg',
      description:
          'IEEE International Symposium on Circuitshffgndhrdshgrfdhrgd and Systems',
      theory:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ut magna nec sapien porta volutpat sit amet vel urna. Integer rutrum auctor enim, in aliquam massa viverra id. Sed condimentum risus ut magna scelerisque facilisis.',
    ),
    HallOfFameItem(
      title: 'Smart Home System using something something',
      date: '12/02/2024',
      picturePath:
          'assets/Blue Black Simple Technology Linktree Background (22).svg',
      description: 'IEEE International Symposium on Circuits and Systems',
      theory:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ut magna nec sapien porta volutpat sit amet vel urna. Integer rutrum auctor enim, in aliquam massa viverra id. Sed condimentum risus ut magna scelerisque facilisis.',
    ),
    HallOfFameItem(
      title: 'Smart Home System using something something',
      date: '12/02/2024',
      picturePath:
          'assets/Blue Black Simple Technology Linktree Background (22).svg',
      description: 'IEEE International Symposium on Circuits and Systems',
      theory:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ut magna nec sapien porta volutpat sit amet vel urna. Integer rutrum auctor enim, in aliquam massa viverra id. Sed condimentum risus ut magna scelerisque facilisis.',
    ),
    HallOfFameItem(
      title: 'Smart Home System using something something',
      date: '12/02/2024',
      picturePath:
          'assets/Blue Black Simple Technology Linktree Background (22).svg',
      description: 'IEEE International Symposium on Circuits and Systems',
      theory:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus ut magna nec sapien porta volutpat sit amet vel urna. Integer rutrum auctor enim, in aliquam massa viverra id. Sed condimentum risus ut magna scelerisque facilisis.',
    ),
  ];
  var s, h, w;
  @override
  Widget build(BuildContext context) {
    s = MediaQuery.of(context).size;
    w = s.width;
    h = s.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            top: 35,
            left: 20,
            child: SvgBackground(),
          ),
          Positioned(
            top: 20,
            right: 5,
            child: SvgPicture.asset(
              'assets/Blue Black Simple Technology Linktree Background (21).svg',
              height: 100,
              width: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Text(
                  'Hall of Fame',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      HallOfFameItem item = items[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  HallOfFameDetailsPage(item: item),
                            ),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 600 * w / 359,
                              height: 2 * h / 888,
                              color: Color(0xFF5118D6),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 220,
                                  height: 60,
                                  child: Text(
                                    item.title,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: SvgPicture.asset(
                                    item.picturePath,
                                    height: 74,
                                    width: 112,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                // Description
                                Icon(Icons.description,
                                    color: Color(0xFF5118D6)),
                                SizedBox(width: 5),
                                Container(
                                  width: 190,
                                  height: 30,
                                  child: Text(
                                    item.description,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 10,
                                      color: Colors.white70,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10), // Spacer

                                // Date
                                Icon(Icons.calendar_today,
                                    color: Color(0xFF5118D6)),
                                SizedBox(width: 5),
                                Text(
                                  item.date,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 13,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      );
                    },
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

class SvgBackground extends StatelessWidget {
  var s, h, w;
  @override
  Widget build(BuildContext context) {
    s = MediaQuery.of(context).size;
    w = s.width;
    h = s.height;

    return SizedBox(
      width: 119 * w / 359, // Set the desired width
      height: 117 * h / 888, // Set the desired height
      child: Container(
        constraints: BoxConstraints.expand(),
        child: SvgPicture.asset(
          'assets/teenyicons_bulb-on-outline.svg',
          // You can adjust the size further using the `height` and `width` properties
          height: 30,
          width: 30,
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HallOfFamePage(),
  ));
}
