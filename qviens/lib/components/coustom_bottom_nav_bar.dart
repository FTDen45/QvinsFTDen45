import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qviens/screens/home/home_screen.dart';
import 'package:qviens/size_config.dart';

import 'package:responsive_flutter/responsive_flutter.dart';
import '../constants.dart';
import '../enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = kPrimaryLightColor;
    final bool messageIndicatorRedDot = true;
    return Container(
      color: Color(0xffffffff),
      height: getProportionateScreenHeight(kBottomNavigationBar),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.date_range,
                          color: MenuState.events == selectedMenu
                              ? kPrimaryColor
                              : inActiveIconColor,
                          size: 30.0,
                        ),
                        onPressed: () =>
                            Navigator.pushNamed(context, HomeScreen.routeName),
                      ),
                      Text(
                        'Мероприятия',
                        style: TextStyle(
                          fontSize: 10,
                          color: MenuState.events == selectedMenu
                              ? kPrimaryColor
                              : inActiveIconColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(
                          CupertinoIcons.location,
                          color: MenuState.people == selectedMenu
                              ? kPrimaryColor
                              : inActiveIconColor,
                          size: ResponsiveFlutter.of(context)
                              .fontSize(3.75), //30.0,
                        ),
                        onPressed: () =>
                            Navigator.pushNamed(context, HomeScreen.routeName),
                      ),
                      Text(
                        'Люди рядом',
                        style: TextStyle(
                          fontSize: ResponsiveFlutter.of(context)
                              .fontSize(1.25), //10,
                          color: MenuState.people == selectedMenu
                              ? kPrimaryColor
                              : inActiveIconColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/images/img/bg_logo_top/q.svg",
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: MediaQuery.of(context).size.width * 0.125,
                        color: MenuState.main == selectedMenu
                            ? kPrimaryColor
                            : inActiveIconColor,
                        fit: BoxFit.fitHeight,
                      ),
                      Text(
                        'Главная',
                        style: TextStyle(
                          fontSize: ResponsiveFlutter.of(context)
                              .fontSize(1.25), //10,
                          color: MenuState.main == selectedMenu
                              ? kPrimaryColor
                              : inActiveIconColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.012,
                          bottom: MediaQuery.of(context).size.height * 0.012,
                        ),
                        child: Stack(
                          children: [
                            Icon(
                              CupertinoIcons.conversation_bubble,
                              color: MenuState.message == selectedMenu
                                  ? kPrimaryColor
                                  : inActiveIconColor,
                              size: ResponsiveFlutter.of(context)
                                  .fontSize(3.75), //30.0,
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: messageIndicatorRedDot
                                  ? SvgPicture.asset(
                                      "assets/images/img/dot_red.svg",
                                      width: MediaQuery.of(context).size.width *
                                          0.027, //10,
                                    )
                                  : SizedBox(),
                            ),
                          ],
                        ),
                      ),
                      // Container(
                      //     height: MediaQuery.of(context).size.height * 0.027),
                      Text(
                        'Сообщения',
                        style: TextStyle(
                          fontSize: ResponsiveFlutter.of(context)
                              .fontSize(1.25), //10,
                          color: MenuState.message == selectedMenu
                              ? kPrimaryColor
                              : inActiveIconColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(
                          CupertinoIcons.person,
                          color: MenuState.profile == selectedMenu
                              ? kPrimaryColor
                              : inActiveIconColor,
                          size: ResponsiveFlutter.of(context)
                              .fontSize(3.75), //30.0,
                        ),
                        onPressed: () =>
                            Navigator.pushNamed(context, HomeScreen.routeName),
                      ),
                      Text(
                        'Мероприятия',
                        style: TextStyle(
                          fontSize: ResponsiveFlutter.of(context)
                              .fontSize(1.25), //10,
                          color: MenuState.profile == selectedMenu
                              ? kPrimaryColor
                              : inActiveIconColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
