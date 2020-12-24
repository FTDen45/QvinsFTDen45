import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:qviens/provider/my_model.dart';
import 'package:qviens/screens/home/components/user_info.dart';

class SliderProfile extends StatelessWidget {
  SliderProfile({this.showWindow});
  final Function showWindow;
  @override
  Widget build(BuildContext context) {
    return Consumer<MyModel>(
      builder: (context, page, child) => SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  page.page = value;
                },
                itemCount: 3,
                itemBuilder: (context, index) => SafeArea(
                  child: UserInfo(
                    BottomSheet: showWindow,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
