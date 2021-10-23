import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

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
  double _opacity = 0;

  List<String> scenes = ["Birthday", "Party", "Relax", "Fun"];
  @override
  Widget build(BuildContext context) {
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
      body: SingleChildScrollView(
        child: Container(
          height: 100.h,
          width: 100.w,
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
                padding: EdgeInsets.fromLTRB(0, 3.5.h, 0, 0),
                child: Container(
                  width: 100.w,
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
                              width: 5.w,
                            ),
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          Column(
                            children: [
                              Container(
                                width: 38.w,
                                child: Text(
                                  widget.Room,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25.sp),
                                  maxLines: 2,
                                ),
                              ),
                              SizedBox(
                                height: 1.h,
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
                                        width: 30.w,
                                        child: Text(
                                          "${widget.light} Lights",
                                          style: TextStyle(
                                              color: Colors.orange,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22.sp),
                                          maxLines: 2,
                                        ),
                                      ),
                                    );
                                  }),
                            ],
                          ),
                          SizedBox(
                            width: 14.w,
                          ),
                          Stack(children: [
                            Positioned(
                              top: 15.h,
                              left: 10.w,
                              child: CircleAvatar(
                                minRadius: 8,
                                backgroundColor:
                                    _color?.withOpacity(_currentSliderValue),
                              ),
                            ),
                            Container(
                              height: 20.h,
                              child: SvgPicture.asset(
                                "assets/Group 38.svg",
                                width: 95,
                              ),
                            ),
                          ]),
                        ],
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      TweenAnimationBuilder(
                          tween: Tween<double>(begin: 100.w, end: 0),
                          curve: Curves.easeInCubic,
                          duration: Duration(seconds: 2),
                          builder: (BuildContext context, double _val, _) {
                            return Padding(
                              padding: EdgeInsets.fromLTRB(_val, 0, 0, 0),
                              child: Container(
                                height: 7.h,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    SizedBox(width: 2.5.w,),
                                    ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                          Colors.white,
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Container(
                                        width: 23.w,
                                        height: 6.h,
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
                                                fontSize: 10.sp,
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
                                        width: 23.5.w,
                                        height: 6.h,
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
                                                fontSize: 10.sp,
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
                                        width: 23.w,
                                        height: 6.h,
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
                                                fontSize: 10.sp,
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
                        height: 2.h,
                      ),
                      Expanded(
                        child: Stack(children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 1.h, 0, 0),
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
                                        EdgeInsets.fromLTRB(5.w, 2.h, 0, 0),
                                    child: Text(
                                      "Intensity",
                                      style: TextStyle(
                                        color: Color.fromRGBO(10, 77, 162, 1),
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 3.w,
                                      ),
                                      SvgPicture.asset(
                                        "assets/solution2.svg",
                                        width: 6.w,
                                      ),
                                      Container(
                                        width: 80.w,
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
                                        width: 6.w,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(5.w, 2.h, 0, 2.h),
                                    child: Text(
                                      "Colours",
                                      style: TextStyle(
                                        color: Color.fromRGBO(10, 77, 162, 1),
                                        fontSize: 20.sp,
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
                                                4.sp, 0, 2.sp, 0),
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
                                        width: 5.sp,
                                      ),
                                      CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: SvgPicture.asset(
                                            "assets/+.svg",
                                            width: 3.5.w,
                                          ))
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.fromLTRB(5.w, 2.h, 0, 0),
                                    child: Text(
                                      "Scenes",
                                      style: TextStyle(
                                        color: Color.fromRGBO(10, 77, 162, 1),
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3.h,
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
                                              width: 25.w,
                                              height: 7.h,
                                              child: Row(
                                                children: [
                                                  SvgPicture.asset(
                                                      "assets/surface1.svg"),
                                                  Text(
                                                    scenes[0],
                                                    style: TextStyle(
                                                        fontSize: 15.sp),
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
                                              width: 25.w,
                                              height: 7.h,
                                              child: Row(
                                                children: [
                                                  SvgPicture.asset(
                                                      "assets/surface1.svg"),
                                                  Text(
                                                    scenes[1],
                                                    style: TextStyle(
                                                        fontSize: 15.sp),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 3.h,
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
                                              width: 25.w,
                                              height: 7.h,
                                              child: Row(
                                                children: [
                                                  SvgPicture.asset(
                                                      "assets/surface1.svg"),
                                                  Text(
                                                    scenes[2],
                                                    style: TextStyle(
                                                        fontSize: 15.sp),
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
                                              width: 25.w,
                                              height: 7.h,
                                              child: Row(
                                                children: [
                                                  SvgPicture.asset(
                                                      "assets/surface1.svg"),
                                                  Text(
                                                    scenes[3],
                                                    style: TextStyle(
                                                        fontSize: 15.sp),
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
                            right: 6.w,
                            top: 0,
                            child: CircleAvatar(
                              minRadius: 6.w,
                              backgroundColor: Colors.white,
                              child: SvgPicture.asset(
                                "assets/Icon awesome-power-off.svg",
                                width: 6.w,
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
      ),
    );
  }
}

// class MyCustomTransition extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             ElevatedButton(
//                 onPressed: () => Navigator.push(context, FadeRoute1(SecondPage())),
//                 child: Text('TAP TO VIEW FADE ANIMATION 1')),
//             ElevatedButton(
//               onPressed: () => Navigator.push(context, FadeRoute2(SecondPage())),
//               child: Text('TAP TO VIEW FADE ANIMATION 2'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
// class FadeRoute1 extends PageRouteBuilder {
//   final Widget page;
//
//   FadeRoute1(this.page)
//       : super(
//     pageBuilder: (
//         BuildContext context,
//         Animation<double> animation,
//         Animation<double> secondaryAnimation,
//         ) =>
//     page,
//     transitionsBuilder: (
//         BuildContext context,
//         Animation<double> animation,
//         Animation<double> secondaryAnimation,
//         Widget child,
//         ) =>
//         FadeTransition(
//           opacity: animation,
//           child: page,
//         ),
//   );
// }
//
//
//
//
//
// class SecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         brightness: Brightness.dark,
//         centerTitle: true,
//         title: Text('Fade Transition'),
//       ),
//     );
//   }
// }
