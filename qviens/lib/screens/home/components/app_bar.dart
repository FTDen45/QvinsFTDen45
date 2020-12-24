import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';

import 'package:qviens/constants.dart';
import 'package:qviens/size_config.dart';

AppBar CustomAppBar(context) {
  return AppBar(
    elevation: 0,
    centerTitle: true,
    backgroundColor: Color(0xffffffff),
    toolbarHeight: getProportionateScreenHeight(kAppBarHeight),
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: SvgPicture.asset(
            'assets/images/img/reload.svg',
            color: Color(0xff674FFD),
          ), //reload.svg
          onPressed: () {
            print('!!!Reload!!!');
            //Navigator.pushNamed(context, HomeScreen.routeName);
          },
        );
      },
    ),
    title: SvgPicture.asset(
      'assets/images/img/bg_logo_top/q.svg',
      width: 70,
      //height: MediaQuery.of(context).size.width * 0.16,
      color: Color(0xffFD4F6A),
      fit: BoxFit.contain,
    ),
    actions: [
      IconButton(
        padding: const EdgeInsets.all(18.0),
        icon: Image.asset(
          'assets/images/img/Filled.png',
        ),
        onPressed: () {
          print('!!!Filled.png!!!');
          //Navigator.pushNamed(context, HomeScreen.routeName);
        },
      ),
    ], //Filled.svg
  );
}
