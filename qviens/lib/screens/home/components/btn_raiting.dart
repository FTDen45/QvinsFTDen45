import 'package:flutter/material.dart';
import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:qviens/size_config.dart';

class BtnRaiting extends StatefulWidget {
  bool active = false;
  bool star = false;
  String text = '';

  BtnRaiting({this.active, this.star, this.text});

  @override
  _BtnRaitingState createState() => _BtnRaitingState();
}

class _BtnRaitingState extends State<BtnRaiting> {
  void chooseRaiting() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    //final model = Provider.of<MyModel>(context, listen: false);
    return Container(
      width: getProportionateScreenWidth(78),
      height: getProportionateScreenHeight(25),
      margin: EdgeInsets.only(right: getProportionateScreenHeight(8)),
      child: RaisedButton(
        onPressed: () {},
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        padding: EdgeInsets.all(0.0),
        child: Ink(
          decoration: widget.active
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: Color(0xffFD4F6A),
                )
              : BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xffBABABA),
                    width: 1,
                  ),
                ),
          child: Container(
            constraints: BoxConstraints(
              maxWidth: getProportionateScreenWidth(78),
              minHeight: getProportionateScreenHeight(25),
            ),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.star
                    ? Icon(
                        Icons.star,
                        size: getProportionateScreenWidth(11),
                        color: Color(0xffFFB800),
                      )
                    : Text(''),
                Text(
                  widget.text,
                  textAlign: TextAlign.center,
                  style: widget.active
                      ? TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: ResponsiveFlutter.of(context)
                              .fontSize(1.75), //14.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        )
                      : TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: ResponsiveFlutter.of(context)
                              .fontSize(1.75), //18.0,
                          color: const Color(0xFFBABABA),
                          fontWeight: FontWeight.w300,
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
