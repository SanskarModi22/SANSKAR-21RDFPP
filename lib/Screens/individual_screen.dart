import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Individual extends StatefulWidget {
  Individual({Key? key,required this.Room, required this.light}) : super(key: key);
  String Room;



  String light;
  @override

  _IndividualState createState() => _IndividualState();
}

class _IndividualState extends State<Individual> {
  @override
  double _currentSliderValue = 0.1;
  Color? _color = Colors.transparent;
  List<Color?> color = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.purple,
    Colors.pink,
    Colors.yellow
  ];
  List<Color?> scenesColor = [
    Colors.red[300],
    Colors.purple[300],
    Colors.blue[300],
    Colors.green[300]
  ];


  List<String> scenes = ["Birthday", "Party", "Relax", "Fun"];
  @override
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
              padding: EdgeInsets.fromLTRB(0,0.035*_height, 0, 0),
              child: Container(
                width: _width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: SvgPicture.asset(
                            "assets/Icon ionic-md-arrow-round-back.svg",
                            width: 0.05*_width,
                          ),
                        ),
                        SizedBox(
                          width: 0.02*_width,
                        ),
                        Column(
                          children: [
                            Container(
                              width: 0.38*_width,
                              child: Text(
                                widget.Room,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 27),
                                maxLines: 2,
                              ),
                            ),
                            SizedBox(
                              height: 0.01*_height,
                            ),
                            TweenAnimationBuilder(
                                tween: Tween<double>(begin: 0, end: 1),
                                curve: Curves.easeInCubic,
                                duration: Duration(seconds: 2),
                                builder:
                                    (BuildContext context, double _val, _) {
                                  return Opacity(
                                    opacity: _val,
                                    child: Container(
                                      width: 0.3*_width,
                                      child: Text(
                                        "${widget.light} Lights",
                                        style: const TextStyle(
                                            color: Colors.orange,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25),
                                        maxLines: 2,
                                      ),
                                    ),
                                  );
                                }),
                          ],
                        ),
                        SizedBox(
                          width: 0.14*_width,
                        ),
                        Stack(children: [
                          Positioned(
                            top: 0.15*_height,
                            left: 0.1*_width,
                            child: CircleAvatar(
                              minRadius: 8,
                              backgroundColor:
                              _color?.withOpacity(_currentSliderValue),
                            ),
                          ),
                          Container(
                            height: 0.2*_height,
                            child: SvgPicture.asset(
                              "assets/Group 38.svg",
                              width: 95,
                            ),
                          ),
                        ]),
                      ],
                    ),
                    SizedBox(
                      height: 0.03*_height,
                    ),
                    TweenAnimationBuilder(
                        tween: Tween<double>(begin: _width, end: 0),
                        curve: Curves.easeInCubic,
                        duration: Duration(seconds: 2),
                        builder: (BuildContext context, double _val, _) {
                          return Padding(
                            padding: EdgeInsets.fromLTRB(_val, 0, 0, 0),
                            child: Container(
                              height: 0.07*_height,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  SizedBox(width: 0.025*_width,),
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all(
                                        Colors.white,
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Container(
                                      width: 0.23*_width,
                                      height: 0.06*_height,
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          SvgPicture.asset(
                                              "assets/surface1.svg"),
                                          Text(
                                            "Main Light",
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  10, 77, 162, 1),
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all(
                                        Color.fromRGBO(9, 59, 123, 1),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Container(
                                      width: 0.235*_width,
                                      height: 0.06*_height,
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          SvgPicture.asset(
                                              "assets/surface2.svg"),
                                          Text(
                                            "Desk Lights",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all(
                                        Colors.white,
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Container(
                                      width: 0.23*_width,
                                      height: 0.06*_height,
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          SvgPicture.asset(
                                              "assets/surface1.svg"),
                                          Text(
                                            "Bed Light",
                                            style: TextStyle(
                                              color: Color.fromRGBO(
                                                  10, 77, 162, 1),
                                              fontSize: 13,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                    SizedBox(
                      height: 0.02*_height,
                    ),
                    Expanded(
                      child: Stack(children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0.01*_height, 0, 0),
                          child: Card(
                            color: Color.fromRGBO(246, 248, 251, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(0.05*_width, 0.02*_height, 0, 0),
                                  child: Text(
                                    "Intensity",
                                    style: TextStyle(
                                      color: Color.fromRGBO(10, 77, 162, 1),
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 0.03*_width,
                                    ),
                                    SvgPicture.asset(
                                      "assets/solution2.svg",
                                      width: 0.06*_width,
                                    ),
                                    Container(
                                      width: 0.8*_width,
                                      child: Slider(
                                        value: _currentSliderValue,
                                        min: 0,
                                        max: 1,
                                        divisions: 12,
                                        label: _currentSliderValue.toString(),
                                        onChanged: (double value) {
                                          setState(
                                                () {
                                              _currentSliderValue = value;
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    SvgPicture.asset(
                                      "assets/solution.svg",
                                      width: 0.06*_width,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(0.05*_width, 0.02*_height, 0,0.02*_height),
                                  child: Text(
                                    "Colours",
                                    style: TextStyle(
                                      color: Color.fromRGBO(10, 77, 162, 1),
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: List<Widget>.generate(
                                          color.length, (int index) {
                                        return Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              7, 0, 5, 0),
                                          child: InkWell(
                                            onTap: () {
                                              setState(() {
                                                _color = color[index];
                                              });
                                            },
                                            child: CircleAvatar(
                                              backgroundColor: color[index],
                                            ),
                                          ),
                                        );
                                      }),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    CircleAvatar(
                                        backgroundColor: Colors.white,
                                        child: SvgPicture.asset(
                                          "assets/+.svg",
                                          width: 0.035*_width,
                                        ))
                                  ],
                                ),
                                Padding(
                                  padding:
                                  EdgeInsets.fromLTRB(0.05*_width, 0.02*_height, 0, 0),
                                  child: Text(
                                    "Scenes",
                                    style: TextStyle(
                                      color: Color.fromRGBO(10, 77, 162, 1),
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 0.03*_height,
                                ),
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                              MaterialStateProperty.all(
                                                  scenesColor[0])),
                                          onPressed: () {},
                                          child: Container(
                                            width: 0.25*_width,
                                            height: 0.07*_height,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                SvgPicture.asset(
                                                    "assets/surface1.svg"),
                                                Text(
                                                  scenes[0],
                                                  style: TextStyle(
                                                      fontSize: 18),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                              MaterialStateProperty.all(
                                                scenesColor[1],
                                              )),
                                          onPressed: () {},
                                          child: Container(
                                            width: 0.25*_width,
                                            height: 0.07*_height,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                SvgPicture.asset(
                                                    "assets/surface1.svg"),
                                                Text(
                                                  scenes[1],
                                                  style: TextStyle(
                                                      fontSize: 18),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 0.03*_height,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                              MaterialStateProperty.all(
                                                  scenesColor[2])),
                                          onPressed: () {},
                                          child: Container(
                                            width: 0.25*_width,
                                            height: 0.07*_height,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                SvgPicture.asset(
                                                    "assets/surface1.svg"),
                                                Text(
                                                  scenes[2],
                                                  style: TextStyle(
                                                      fontSize: 18),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        ElevatedButton(
                                          style: ButtonStyle(
                                              backgroundColor:
                                              MaterialStateProperty.all(
                                                  scenesColor[3])),
                                          onPressed: () {},
                                          child: Container(
                                            width: 0.25*_width,
                                            height: 0.07*_height,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                SvgPicture.asset(
                                                    "assets/surface1.svg"),
                                                Text(
                                                  scenes[3],
                                                  style: TextStyle(
                                                      fontSize: 18),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0.06*_width,
                          top: 0,
                          child: CircleAvatar(
                            minRadius: 0.06*_width,
                            backgroundColor: Colors.white,
                            child: SvgPicture.asset(
                              "assets/Icon awesome-power-off.svg",
                              width:0.06*_width,
                            ),
                          ),
                        )
                      ]),
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


