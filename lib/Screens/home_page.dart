import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_electricity/Screens/individual_screen.dart';


import 'profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  List<String> Rooms = [
    "assets/bed.svg",
    "assets/room.svg",
    "assets/kitchen.svg",
    "assets/bathtube.svg",
    "assets/house.svg",
    "assets/balcony.svg",
  ];
  List<String> RoomNames = [
    "Bedroom",
    "Living Room",
    "Kitchen",
    "Bathroom",
    "Outdoor",
    "Balcony",
  ];
  List<String> Lights = [
    "4",
    "2",
    "5",
    "1",
    "5",
    "2",
  ];
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height=MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/bulb.svg"), label: "Bulb"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/Icon feather-home.svg"),
              label: "Home"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/Icon feather-settings.svg"),
              label: "Home")
        ],
      ),
      backgroundColor: Color.fromRGBO(10, 77, 162, 1),
      body: Container(
        height: _height,
        width: _width,
        child: Stack(
          children: [
            Positioned(
              bottom: 450,
              left: 0,
              right: 1,
              child: SvgPicture.asset(
                "assets/Circles.svg",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0.035*_height, 0, 0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 0.3*_width,
                          child: const Text(
                            "Control Panel",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize:28),
                            maxLines: 2,
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Profile()));
                          },
                          child: CircleAvatar(
                            radius: 38,
                            child: Image.asset("assets/avatar.png"),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 0.01*_height,
                    ),
                    Expanded(
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(0.05*_width, 0.02*_height, 0, 0),
                              child: Text(
                                "All  Rooms",
                                style: TextStyle(
                                  color: Color.fromRGBO(10, 77, 162, 1),
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            MediaQuery.removePadding(
                              context: context,
                              removeTop: true,
                              child: Expanded(
                                child: GridView.count(
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  physics: ScrollPhysics(),

                                  crossAxisCount: 2,
                                  // Generate 100 widgets that display their index in the List.
                                  children: List.generate(
                                    6,
                                        (index) {
                                      return InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            FadeRoute(
                                              page: Individual(light: Lights[index],Room: RoomNames[index],),
                                            ),
                                          );
                                        },
                                        child: Center(
                                          child: Card(
                                            elevation: 2,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(30),
                                            ),
                                            color: Colors.white,
                                            child: Container(
                                              height: 0.18*_height,
                                              width: 0.42*_width,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(30),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0.03*_width, 0, 0, 0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment
                                                      .start,
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceEvenly,
                                                  children: [
                                                    SvgPicture.asset(
                                                      Rooms[index],
                                                      height: 60,
                                                      width: 60,
                                                    ),
                                                    Text(
                                                      RoomNames[index],
                                                      style: TextStyle(
                                                        color: Color.fromRGBO(
                                                            10, 77, 162, 1),
                                                        fontSize: 20,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                      ),
                                                    ),
                                                    Text(
                                                      "${Lights[index]} Lights",
                                                      style: TextStyle(
                                                        color: Colors.orange,
                                                        fontSize: 16,
                                                        fontWeight:
                                                        FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FadeRoute extends PageRouteBuilder {
  final Widget page;

  FadeRoute({required this.page})
      : super(
    pageBuilder: (context, animation, anotherAnimation) => page,
    transitionDuration: Duration(seconds: 5),
    reverseTransitionDuration: Duration(milliseconds: 200),
    transitionsBuilder: (context, animation, anotherAnimation, child) {
      animation = CurvedAnimation(
          curve: Curves.fastLinearToSlowEaseIn,
          parent: animation,
          reverseCurve: Curves.fastOutSlowIn);
      return FadeTransition(
        opacity: animation,
        child: page,
      );
    },
  );
}
