import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:qviens/provider/my_model.dart';

import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:qviens/size_config.dart';
import 'package:qviens/constants.dart';

class UserInfo extends StatelessWidget {
  UserInfo({this.BottomSheet});
  final Function BottomSheet;
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<MyModel>(context);
    return Column(
      children: [
        // Container(
        //   height: MediaQuery.of(context).size.height * 0.01, //8
        // ),
        Container(
          padding: EdgeInsets.all(16.0),
          //width: MediaQuery.of(context).size.width * 0.92, //344
          //height: MediaQuery.of(context).size.height * 0.69, //560
          height: kHeightBetwinUpBarAndBottomBar * 0.88,
          child: Stack(children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.all(Radius.circular(7)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/images/img/widgetMainScreen_01.jpg",
                  ),
                ),
              ),
              height: MediaQuery.of(context).size.height * 0.69, //560
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.69, //560
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  gradient: LinearGradient(
                      begin: FractionalOffset.topCenter,
                      end: FractionalOffset.bottomCenter,
                      colors: [
                        Colors.grey.withOpacity(0.0),
                        Colors.black,
                      ],
                      stops: [
                        0.0,
                        1.0
                      ])),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * 0.055, //45,
              left: MediaQuery.of(context).size.width * 0.043, //16
              right: MediaQuery.of(context).size.width * 0.043, //16
              child: Container(
                //color: Color(0xffff0000),
                //height: MediaQuery.of(context).size.height * 0.25, //171,
                child: GestureDetector(
                  onTap: () {
                    print('ditailes people!!!');

                    // model.selectedIndex = 2;
                    // model.numBar = 2;
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => MainScreen(
                    //         SettingsSearchPeople: 2,
                    //         selectedIndex: 2,
                    //         widgetMenuBottomMessagesUserChatBool: true,
                    //       ),
                    //     ));
                  },
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width *
                              0.832, //312.0,
                          //height: getProportionateScreenHeight(36.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Лейла',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: ResponsiveFlutter.of(context)
                                      .fontSize(3.75), //30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Container(
                                width: getProportionateScreenWidth(8),
                              ),
                              Text(
                                '18',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: ResponsiveFlutter.of(context)
                                      .fontSize(2.75), //22,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                width: getProportionateScreenWidth(8),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(20.0),
                                child: Align(
                                  alignment: AlignmentDirectional.center,
                                  child: SvgPicture.asset(
                                    "assets/images/img/star.svg",
                                    width: getProportionateScreenWidth(8),
                                  ),
                                ),
                              ),
                              Container(
                                width: getProportionateScreenWidth(8),
                              ),
                              SizedBox(
                                height: getProportionateScreenHeight(20.0),
                                child: Align(
                                  alignment: AlignmentDirectional.center,
                                  child: Text(
                                    '4.5',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Display',
                                      fontSize: ResponsiveFlutter.of(context)
                                          .fontSize(1.75), //14,
                                      color: const Color(0xFFBABABA),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: getProportionateScreenHeight(6),
                      ),
                      Row(
                        children: [
                          Container(
                            width: getProportionateScreenWidth(8.0),
                            height: getProportionateScreenWidth(8.0),
                            decoration: BoxDecoration(
                              color: Color(0xff3BC341),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8),
                              ),
                            ),
                          ),
                          Container(
                            width: getProportionateScreenWidth(6),
                          ),
                          Text(
                            'Недавно была в сети',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: ResponsiveFlutter.of(context)
                                  .fontSize(1.5), //12.0,
                              color: const Color(0xFFA3A3A3),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: getProportionateScreenHeight(4),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(312.0),
                        //height: getProportionateScreenHeight(70.0),
                        child: Text(
                          'Я тут для того, чтобы заводить новые знакомства. Рисую, много смеюсь и люблю гулять. Кто пойдет на концерт в Белгороде?',
                          style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: ResponsiveFlutter.of(context)
                                .fontSize(2.0), //16.0,
                            color: const Color(0xFFE1E1E1),
                          ),
                        ),
                      ),
                      Container(
                        height: getProportionateScreenHeight(10),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffFD4F6A),
                              borderRadius: BorderRadius.all(
                                Radius.circular(18),
                              ),
                            ),
                            width: getProportionateScreenWidth(18.0),
                            height: getProportionateScreenHeight(18.0),
                            child: Center(
                              child: Icon(
                                CupertinoIcons.location,
                                size: getProportionateScreenWidth(10.0),
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            width: getProportionateScreenWidth(6),
                          ),
                          Text(
                            '2 км от Вас',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: ResponsiveFlutter.of(context)
                                  .fontSize(1.5), //12.0,
                              color: const Color(0xFF909090),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: getProportionateScreenHeight(10),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffFD4F6A),
                              borderRadius: BorderRadius.all(
                                Radius.circular(18),
                              ),
                            ),
                            width: getProportionateScreenWidth(18.0),
                            height: getProportionateScreenHeight(18.0),
                            child: Center(
                              child: Icon(
                                CupertinoIcons.map,
                                size: getProportionateScreenWidth(10.0),
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            width: getProportionateScreenWidth(6),
                          ),
                          Text(
                            'Живет в Белгороде',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontSize: ResponsiveFlutter.of(context)
                                  .fontSize(1.5), //12.0,
                              color: const Color(0xFF909090),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: getProportionateScreenWidth(16),
              right: getProportionateScreenHeight(16),
              child: InkWell(
                onTap: () {
                  print('!!!Отзывы!!!');
                  BottomSheet(context);
                },
                child: Container(
                  width: getProportionateScreenWidth(62),
                  height: getProportionateScreenHeight(14),
                  //color: Color(0xffff0000),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Отзывы',
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: ResponsiveFlutter.of(context)
                              .fontSize(1.5), //12.0,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: getProportionateScreenWidth(0),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: getProportionateScreenWidth(14),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ]),
        ),
        Container(
          width: getProportionateScreenWidth(344),
          height: kHeightBetwinUpBarAndBottomBar * 0.1,
          child: //Button next
              Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: getProportionateScreenWidth(167),
                height: MediaQuery.of(context).size.height * 0.06,
                //margin: EdgeInsets.only(top: 20, bottom: 20),
                child: RaisedButton(
                  elevation: 0,
                  onPressed: () {
                    print('!!!close!!!');
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment(-1.0, 5.49),
                        colors: [
                          const Color(0xFFFF425F),
                          const Color(0xFFFDA34F)
                        ],
                      ),
                    ),
                    child: Container(
                        constraints: BoxConstraints(
                            maxWidth: getProportionateScreenWidth(167),
                            minHeight:
                                MediaQuery.of(context).size.height * 0.043),
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.close,
                          size: getProportionateScreenWidth(22),
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
              Container(
                width: getProportionateScreenWidth(167),
                height: MediaQuery.of(context).size.height * 0.06,
                //margin: EdgeInsets.only(top: 20, bottom: 20),
                child: RaisedButton(
                  elevation: 0,
                  onPressed: () {
                    print('!!!like!!!');
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: Color(0xff00E492),
                    ),
                    child: Container(
                        constraints: BoxConstraints(
                            maxWidth: getProportionateScreenWidth(167),
                            minHeight:
                                MediaQuery.of(context).size.height * 0.043),
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.favorite,
                          size: getProportionateScreenWidth(22),
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
