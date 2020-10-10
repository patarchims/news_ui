import 'package:flutter/material.dart';
import 'package:news_ui/shared/theme.dart';

class DashboardPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double getSmallDiameter(BuildContext context) =>
        MediaQuery.of(context).size.width * 2 / 3.5;
    double getBigDiameter(BuildContext context) =>
        MediaQuery.of(context).size.width * 7 / 8;

    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          // Generate Circle
          buildCircle(
              getSmallDiameter,
              context,
              -getSmallDiameter(context) / 2,
              -getSmallDiameter(context) / 2.2,
              getSmallDiameter(context),
              getSmallDiameter(context),
              getSmallDiameter(context)),
          buildCircle(
            getSmallDiameter,
            context,
            0,
            -getSmallDiameter(context) / 1.8,
            -getBigDiameter(context) / 2,
            getBigDiameter(context) / 1.6,
            getBigDiameter(context) / 1.6,
          ),
          buildCircle(
            getSmallDiameter,
            context,
            0,
            92,
            0,
            getSmallDiameter(context) / 2,
            getSmallDiameter(context) / 2,
          ),
          buildCircle(
            getSmallDiameter,
            context,
            0,
            151,
            -getSmallDiameter(context),
            getSmallDiameter(context) / 3,
            getSmallDiameter(context) / 3,
          ),
          buildCircle(
            getSmallDiameter,
            context,
            -getSmallDiameter(context) / 3,
            getSmallDiameter(context),
            getSmallDiameter(context),
            getSmallDiameter(context) / 1.5,
            getSmallDiameter(context) / 1.5,
          ),
          buildCircle(
            getSmallDiameter,
            context,
            0,
            281,
            -getSmallDiameter(context),
            getSmallDiameter(context) / 1.8,
            getSmallDiameter(context) / 1.8,
          ),

          // Content
          ListView(
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          defaultMargin, 2 * defaultMargin, defaultMargin, 0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 9,
                                width: 21,
                                child: Image(
                                  image:
                                      AssetImage("assets/icon/dashboard.png"),
                                ),
                              ),
                              Container(
                                height: 28,
                                width: 28,
                                child: ClipOval(
                                  child:
                                      Image.asset("assets/images/profile.png"),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 33,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "10/8/2020",
                                style: TextStyle(
                                    color: dateColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 11,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "News Today",
                                style: TextStyle(
                                    color: whiteColor,
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 19,
                          ),
                          Container(
                            height: 40,
                            width: double.infinity,
                            child: TextField(
                              style: TextStyle(color: whiteColor, fontSize: 12),
                              autocorrect: false,
                              decoration: InputDecoration(
                                  hintText: 'healty  news today',
                                  hintStyle: TextStyle(
                                      color: whiteColor, fontSize: 12),
                                  filled: true,
                                  fillColor: searchColor,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    borderSide: BorderSide(color: searchColor),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                      borderSide:
                                          BorderSide(color: searchColor)),
                                  suffixIcon: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.search_sharp,
                                      color: whiteColor,
                                    ),
                                  )),
                            ),
                          ),
                          SizedBox(
                            height: 23,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              buildIconButton(
                                  "assets/icon/weather.png", "Wheater"),
                              buildIconButton(
                                  "assets/icon/politics.png", "Politics"),
                              buildIconButton("assets/icon/sport.png", "Sport"),
                              buildIconButton("assets/icon/game.png", "Game"),
                              buildIconButton(
                                  "assets/icon/traffic.png", "Traffic"),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: height - 330,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: plumColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40),
                              )),
                          child: Container(
                            margin:
                                EdgeInsets.symmetric(horizontal: defaultMargin),
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(top: 24),
                                      height: 292,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(40),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/images/politics.png"),
                                              fit: BoxFit.cover)),
                                      child: Stack(
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                height: 146,
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(40),
                                                      bottomRight:
                                                          Radius.circular(40),
                                                    ),
                                                    color: lightPlumColor),
                                                child: Container(
                                                  margin: EdgeInsets.only(
                                                      left: defaultMargin,
                                                      right: defaultMargin,
                                                      top: defaultMargin),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Text(
                                                          "Politics News",
                                                          style: TextStyle(
                                                              color: brownColor,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 6,
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Text(
                                                          "Hits and misses from the vice presidential debate",
                                                          style: TextStyle(
                                                              color: whiteColor,
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 3,
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Text(
                                                          "The California senator's best 15 minutes of the debate were the first 15 minutes of the debate.",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 12,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Container buildIconButton(String icon, String name) {
    return Container(
      height: 60,
      width: 60,
      child: Column(
        children: [
          SizedBox(
            height: 46,
            width: 46,
            child: FloatingActionButton(
              backgroundColor: whiteColor,
              onPressed: () {},
              child: SizedBox(
                height: 18,
                child: Image(
                  image: AssetImage(icon),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            name,
            style: TextStyle(
                color: whiteColor, fontWeight: FontWeight.normal, fontSize: 10),
          )
        ],
      ),
    );
  }

  Positioned buildCircle(
      double getSmallDiameter(BuildContext context),
      BuildContext context,
      double left,
      double top,
      double right,
      double height,
      double width) {
    return Positioned(
      left: left,
      top: top,
      right: right,
      child: Container(
        height: height,
        width: width,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: lightPlumColor),
      ),
    );
  }
}
