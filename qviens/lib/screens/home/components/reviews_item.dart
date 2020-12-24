import 'package:flutter/material.dart';

import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:qviens/size_config.dart';

class ReviewsItem extends StatelessWidget {
  ReviewsItem({this.imgpath, this.fio, this.score, this.desc});
  final String imgpath;
  final String fio;
  final String score;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: getProportionateScreenHeight(16)),
      width: getProportionateScreenWidth(344),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              print('right avatar');
            },
            child: Padding(
              padding: EdgeInsets.only(right: getProportionateScreenWidth(8)),
              child: CircleAvatar(
                radius: getProportionateScreenWidth(16),
                //backgroundColor: Colors.transparent,
                child: Image.asset(
                  imgpath,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    fio,
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize: getProportionateScreenWidth(16.0),
                      color: const Color(0xFF222222),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Container(width: getProportionateScreenWidth(5)),
                  Icon(
                    Icons.star,
                    size: getProportionateScreenWidth(8),
                    color: Color(0xffFFB800),
                  ),
                  Container(width: getProportionateScreenWidth(5)),
                  Text(
                    score,
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize: getProportionateScreenWidth(12.0),
                      color: const Color(0xFFBABABA),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: getProportionateScreenWidth(304),
                child: Text(
                  desc,
                  style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    fontSize: getProportionateScreenWidth(14.0),
                    color: const Color(0xFFBABABA),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
