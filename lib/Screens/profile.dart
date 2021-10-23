
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  List<String> Skills = [
    "App Development",
    "Web Development",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
appBar: AppBar(
  elevation: 0,
  backgroundColor: Colors.transparent,
),
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        slivers: <Widget>[

          SliverToBoxAdapter(
            child: Container(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(26.w, 0, 1.8.h, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                child: Image.asset(
                                  "assets/avatar.png",
                                  height: 18.h,
                                  width: 18.h,
                                ),
                                radius: 10.7.h,
                              ),
                            ),
                            SizedBox(height: 2.h,),
                            Text(
                              "Sanskar Modi",
                              style: TextStyle(
                                color: Colors.white,
                                  fontSize: 18.sp, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 2.h,),
                          ],
                        ),
                      ),


                    ],
                  ),
                  Container(
                    height: 34.h,
                    width: 89.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      border: Border.all(color: Colors.white),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "App Developer",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.sp, fontWeight: FontWeight.w400),
                          ),
                          Row(
                            children: [
                              Icon(Icons.mail, color: Colors.white,),
                              SizedBox(
                                width: 3.w,
                              ),
                              Container(
                                width: 75.w,
                                child: Text(
                                  "modisanskar5@gmail.com",
                                  style: TextStyle(
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(FontAwesomeIcons.university, color: Colors.white,),
                              SizedBox(
                                width: 3.w,
                              ),
                              Container(
                                width: 75.w,
                                child: Text(
                                  "Indian Institute of Information Technology, Sonepat",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_pin, color: Colors.white,),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                "Lucknow,Uttar Pradesh",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.sp, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.white,
                            height: 1.sp,

                          ),

                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(3.w, 3.h, 0, 3.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "About",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 1.5.h, 0, 0),
                          child: new Text(
                            "I am a 2nd year student at IIIT Sonepat and is continuously learning new things . ",
                            softWrap: true,
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(3.w, 3.h, 0, 3.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Skills",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        MediaQuery.removePadding(
                          context: context,
                          removeTop: true,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: Skills.length,
                            itemBuilder: (BuildContext context, int item) {
                              return Padding(
                                padding: EdgeInsets.fromLTRB(0, 1.5.h, 0, 0),
                                child: Row(children: [
                                  CircleAvatar(
                                    radius: 6.0,
                                    backgroundColor: Colors.white,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 10.sp,
                                    ),
                                    child: Text(
                                      Skills[item],
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ]),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}