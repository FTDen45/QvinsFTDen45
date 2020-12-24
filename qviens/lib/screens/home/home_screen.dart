import 'package:flutter/material.dart';
import 'package:qviens/screens/home/components/body.dart';
import 'package:qviens/components/coustom_bottom_nav_bar.dart';
import 'package:qviens/screens/home/components/app_bar.dart';

import 'package:qviens/size_config.dart';
import 'package:qviens/enums.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      appBar: CustomAppBar(context),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.main),
    );
  }
}
