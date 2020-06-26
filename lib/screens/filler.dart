import 'package:flutter/material.dart';

Color grey  = Colors.grey[300];

class Filler extends StatelessWidget {
  final String text;
  Filler({this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            padding: EdgeInsets.only(
              top: 20,
              left: 20,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white,grey],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset : Offset(0,4),
                  blurRadius: 4,
                ),
              ],
              borderRadius:BorderRadius.circular(16),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
               Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w100,
                ),
              ),
              ],
            ),
          ),
          Positioned(
            bottom: 50,
            right: 50,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(
                  Icons.adb,
                  size: 50,),
                onPressed: () {
                  //profile
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
