import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'slider_profile.dart';
import 'reviews_show_bottom_sheet.dart';
import 'package:qviens/constants.dart';

class Body extends StatelessWidget {
  void _showWindow(context) {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      backgroundColor: Colors.white,
      context: context,
      builder: (builder) {
        return ReviewsShowBottomSheet(
          showBottom: _showWindow,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: kHeightBetwinUpBarAndBottomBar,
              child: SliderProfile(
                showWindow: _showWindow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
